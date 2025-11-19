@interface AIAudiogramIngestionEngine
- (AIAudiogramIngestionEngine)init;
- (AIAudiogramIngestionEngine)initWithDelegate:(id)a3;
- (AIAudiogramIngestionEngineDelegate)delegate;
- (BOOL)_isValidObject:(id)a3 toObject:(id)a4 withValueDifference:(double)a5 stepDistance:(double)a6 forAxis:(unint64_t)a7;
- (BOOL)isAvailable;
- (CGRect)_adjustedRectForVisionCoordinateSpace:(CGRect)a3 inImage:(id)a4;
- (CGRect)_shrinkRect:(CGRect)a3 width:(double)a4 height:(double)a5 insideBounds:(CGSize)a6;
- (double)_meanFromNumbers:(id)a3;
- (double)_stddevFromNumbers:(id)a3;
- (double)_zScoreFromNumber:(double)a3 mean:(double)a4 stddev:(double)a5;
- (id)_audiogramFromAudiogramPoints:(id)a3;
- (id)_audiogramFromImagesV2:(id)a3;
- (id)_audiogramFromSymbols:(id)a3 onAudiogramMap:(id)a4;
- (id)_audiogramFromSymbols:(id)a3 recognizedText:(id)a4;
- (id)_audiogramMapFromRecognizedText:(id)a3;
- (id)_audiogramPointsFromSymbolsV2:(id)a3 inGraphRect:(CGRect)a4 onAudiogramMap:(id)a5;
- (id)_audiogramPointsFromSymbolsV2:(id)a3 inGraphRect:(CGRect)a4 recognizedText:(id)a5;
- (id)_combineAudiograms:(id)a3;
- (id)_cropEdgesFromImage:(id)a3 graphRect:(CGRect)a4 symbolsRect:(CGRect)a5;
- (id)_cropResultsFromImage:(id)a3 observations:(id)a4;
- (id)_formatNumbersFromRecognizedText:(id)a3;
- (id)_groupNumbersByAxisFromRecognizedText:(id)a3;
- (id)_observationsFromCIImage:(id)a3;
- (id)_rectsOfGraphFromImage:(id)a3 objectData:(id)a4;
- (id)_rectsOfSymbolsFromImage:(id)a3 objectData:(id)a4;
- (id)_removeDuplicateSetsFromTextSets:(id)a3;
- (id)_sortAndRemoveInvalidAxisValues:(id)a3 forAxis:(unint64_t)a4 error:(id *)a5;
- (id)_textFromAudiogramImage:(id)a3 regionOfInterest:(CGRect)a4;
- (id)_validMapForPointPairs:(id)a3 stepDistance:(double)a4 forValueDifference:(double)a5 forAxis:(unint64_t)a6;
- (id)_validPointsFromMap:(id)a3 forValues:(id)a4;
- (id)_valueDifferencesForValues:(id)a3 stepDistance:(double)a4 forAxis:(unint64_t)a5;
- (id)audiogramDetectorResultsFromImage:(id)a3;
- (id)audiogramFromImage:(id)a3;
- (id)audiogramFromImages:(id)a3;
- (id)audiogramPointsFromImages:(id)a3;
- (unsigned)_propertyOrientationFromOrientation:(int64_t)a3;
- (void)_loadModelFromAssetPath:(id)a3 assetProperties:(id)a4;
- (void)_loadV2ModelFromAssetPath:(id)a3 assetProperties:(id)a4;
- (void)_retrieveModel;
- (void)_setAudiogramAxisError:(unint64_t)a3 onError:(id *)a4;
- (void)audiogramFromImages:(id)a3 completion:(id)a4;
- (void)modelDidUpdate:(id)a3 assetProperties:(id)a4 assetVersion:(unint64_t)a5 withError:(id)a6;
- (void)modelDownloadProgressDidUpdate:(float)a3;
- (void)startRetrievingLatestModel;
- (void)startRetrievingLatestModelSilently;
@end

@implementation AIAudiogramIngestionEngine

- (AIAudiogramIngestionEngine)init
{
  v7.receiver = self;
  v7.super_class = AIAudiogramIngestionEngine;
  v2 = [(AIAudiogramIngestionEngine *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.AudiogramIngestion.AIAudiogramIngestionEngine.AnalysisQueue", v3);
    [(AIAudiogramIngestionEngine *)v2 setAnalysisQueue:v4];

    v5 = [[AIAudiogramAssetManager alloc] initWithDelegate:v2];
    [(AIAudiogramIngestionEngine *)v2 setAssetManager:v5];
  }

  return v2;
}

- (AIAudiogramIngestionEngine)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(AIAudiogramIngestionEngine *)self init];
  v6 = v5;
  if (v5)
  {
    [(AIAudiogramIngestionEngine *)v5 setDelegate:v4];
  }

  return v6;
}

- (BOOL)isAvailable
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(AIAudiogramIngestionEngine *)self graphModel];
    if (v3)
    {
      v4 = [(AIAudiogramIngestionEngine *)self symbolModel];
      v5 = v4 != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v3 = [(AIAudiogramIngestionEngine *)self model];
    v5 = v3 != 0;
  }

  return v5;
}

- (void)startRetrievingLatestModel
{
  v3 = AXLogAudiogram();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_24179B000, v3, OS_LOG_TYPE_INFO, "Start retrieving latest model", v4, 2u);
  }

  [(AIAudiogramIngestionEngine *)self setIsRetrievingLatestModelSilently:0];
  [(AIAudiogramIngestionEngine *)self _retrieveModel];
}

- (void)startRetrievingLatestModelSilently
{
  v3 = AXLogAudiogram();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_24179B000, v3, OS_LOG_TYPE_INFO, "Start retrieving latest model silently", v4, 2u);
  }

  [(AIAudiogramIngestionEngine *)self setIsRetrievingLatestModelSilently:1];
  [(AIAudiogramIngestionEngine *)self _retrieveModel];
}

- (void)_retrieveModel
{
  if ([(AIAudiogramIngestionEngine *)self isRetrievingLatestModel])
  {
    v3 = AXLogAudiogram();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24179B000, v3, OS_LOG_TYPE_INFO, "AIAudiogramIngestionEngine is already retrieving a model. No need to start retrieving again", buf, 2u);
    }
  }

  else
  {
    [(AIAudiogramIngestionEngine *)self setIsRetrievingLatestModel:1];
    v4 = [(AIAudiogramIngestionEngine *)self assetManager];
    [v4 refreshAssets];
  }
}

- (void)_loadModelFromAssetPath:(id)a3 assetProperties:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(AIAudiogramIngestionEngine *)self setAssetProperties:v7];
  if (!_os_feature_enabled_impl())
  {
    v8 = [v7 objectForKey:@"LeftEarSymbolName"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"Left Ear";
    }

    [(AIAudiogramIngestionEngine *)self setModelLabelLeftEarSymbol:v10];

    v11 = [v7 objectForKey:@"RightEarSymbolName"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"Right Ear";
    }

    [(AIAudiogramIngestionEngine *)self setModelLabelRightEarSymbol:v13];

    v14 = [v7 objectForKey:@"GraphName"];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"Graph";
    }

    [(AIAudiogramIngestionEngine *)self setModelLabelGraph:v16];

    v17 = [v7 objectForKey:@"SymbolConfidenceThreshold"];
    v40 = v17;
    if (v17)
    {
      [v17 floatValue];
    }

    else
    {
      LODWORD(v18) = 0.5;
    }

    [(AIAudiogramIngestionEngine *)self setModelLabelConfidenceThreshold:v18, v40];
    v19 = [v7 objectForKey:@"IsModelCompiled"];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 BOOLValue];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v7 objectForKey:@"ModelName"];
    v23 = v22;
    v24 = @"SymbolsDetector";
    if (v22)
    {
      v24 = v22;
    }

    v25 = v24;

    v26 = AXLogAudiogram();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [(AIAudiogramIngestionEngine *)self modelLabelLeftEarSymbol];
      v28 = [(AIAudiogramIngestionEngine *)self modelLabelRightEarSymbol];
      v29 = [(AIAudiogramIngestionEngine *)self modelLabelGraph];
      [(AIAudiogramIngestionEngine *)self modelLabelConfidenceThreshold];
      *buf = 138413570;
      v46 = v27;
      v47 = 2112;
      v48 = v28;
      v49 = 2112;
      v50 = v29;
      v51 = 2048;
      v52 = v30;
      v53 = 2112;
      v54 = v25;
      v55 = 1024;
      v56 = v21;
      _os_log_impl(&dword_24179B000, v26, OS_LOG_TYPE_INFO, "Loading audiogram model properties. left='%@', right='%@', graph='%@', confidence=%f, model name='%@', compiled=%i", buf, 0x3Au);
    }

    v31 = [v6 URLByAppendingPathComponent:v25];
    v32 = v31;
    if (v21)
    {
      v33 = [v31 URLByAppendingPathExtension:@"mlmodelc"];
    }

    else
    {
      v34 = [v31 URLByAppendingPathExtension:@"mlmodel"];

      v44 = 0;
      v33 = [MEMORY[0x277CBFF20] compileModelAtURL:v34 error:&v44];
      v35 = v44;
      if (v35)
      {
        v36 = v35;
        v37 = AXLogAudiogram();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [AIAudiogramIngestionEngine _loadModelFromAssetPath:assetProperties:];
        }

        goto LABEL_37;
      }

      v32 = v34;
    }

    v43 = 0;
    v34 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v33 error:&v43];
    v38 = v43;
    if (v38)
    {
      v36 = v38;
      v37 = AXLogAudiogram();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [AIAudiogramIngestionEngine _loadModelFromAssetPath:assetProperties:];
      }
    }

    else
    {
      v42 = 0;
      v37 = [MEMORY[0x277CE2C38] modelForMLModel:v34 error:&v42];
      v36 = v42;
      if (v36)
      {
        v39 = AXLogAudiogram();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [AIAudiogramIngestionEngine _loadModelFromAssetPath:assetProperties:];
        }
      }

      else
      {
        [(AIAudiogramIngestionEngine *)self setModel:v37];
        v39 = AXLogAudiogram();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_24179B000, v39, OS_LOG_TYPE_INFO, "Successfully loaded model!", buf, 2u);
        }
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  [(AIAudiogramIngestionEngine *)self _loadV2ModelFromAssetPath:v6 assetProperties:v7];
LABEL_38:
}

- (void)_loadV2ModelFromAssetPath:(id)a3 assetProperties:(id)a4
{
  v93 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKey:@"LeftEarACUnmaskedSymbolName"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"x";
  }

  [(AIAudiogramIngestionEngine *)self setLeftEarAirConductionUnmaskedSymbol:v10];

  v11 = [v7 objectForKey:@"LeftEarACMaskedSymbolName"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"square";
  }

  [(AIAudiogramIngestionEngine *)self setLeftEarAirConductionMaskedSymbol:v13];

  v14 = [v7 objectForKey:@"RightEarACUnmaskedSymbolName"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"o";
  }

  [(AIAudiogramIngestionEngine *)self setRightEarAirConductionUnmaskedSymbol:v16];

  v17 = [v7 objectForKey:@"RightEarACMaskedSymbolName"];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"triangle";
  }

  [(AIAudiogramIngestionEngine *)self setRightEarAirConductionMaskedSymbol:v19];

  v20 = [v7 objectForKey:@"SymbolNames"];
  v21 = v20;
  v22 = &unk_285365980;
  if (v20)
  {
    v22 = v20;
  }

  v23 = v22;

  v24 = [v7 objectForKey:@"CollisionMitigationSymbolNames"];
  v25 = v24;
  v26 = &unk_285365998;
  if (v24)
  {
    v26 = v24;
  }

  v87 = v26;

  v27 = [v7 objectForKey:@"SymbolConfidenceThreshold"];
  v85 = v27;
  if (v27)
  {
    [v27 floatValue];
    v29 = v28;
  }

  else
  {
    v29 = 1045220557;
  }

  v30 = [v7 objectForKey:@"GraphConfidenceThreshold"];
  v84 = v30;
  if (v30)
  {
    [v30 floatValue];
    v32 = v31;
  }

  else
  {
    v32 = 1041865114;
  }

  v33 = [v7 objectForKey:@"GraphModelInputWidth"];
  v83 = v33;
  if (v33)
  {
    [v33 floatValue];
    v35 = v34;
  }

  else
  {
    v35 = 960.0;
  }

  v36 = [v7 objectForKey:@"GraphModelInputHeight"];
  v82 = v36;
  if (v36)
  {
    [v36 floatValue];
    v38 = v37;
  }

  else
  {
    v38 = 960.0;
  }

  v39 = [v7 objectForKey:@"SymbolModelInputWidth"];
  v81 = v39;
  if (v39)
  {
    [v39 floatValue];
    v41 = v40;
  }

  else
  {
    v41 = 960.0;
  }

  v42 = [v7 objectForKey:@"SymbolModelInputHeight"];
  v80 = v42;
  if (v42)
  {
    [v42 floatValue];
    v44 = v43;
  }

  else
  {
    v44 = 960.0;
  }

  v45 = [v7 objectForKey:@"GraphModelName"];
  v46 = v45;
  v47 = @"GraphDetector";
  if (v45)
  {
    v47 = v45;
  }

  v48 = v47;

  v49 = [v7 objectForKey:@"IsGraphModelCompiled"];
  v50 = v49;
  if (v49)
  {
    v51 = [v49 BOOLValue] ^ 1;
  }

  else
  {
    v51 = 1;
  }

  v86 = v23;
  v52 = [v7 objectForKey:@"SymbolModelName"];
  v53 = v52;
  v54 = @"SymbolDetector";
  if (v52)
  {
    v54 = v52;
  }

  v88 = v54;

  v55 = [v7 objectForKey:@"IsSymbolModelCompiled"];
  v56 = v55;
  if (v55)
  {
    v57 = [v55 BOOLValue] ^ 1;
  }

  else
  {
    v57 = 1;
  }

  v58 = AXLogAudiogram();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v92 = v7;
    _os_log_impl(&dword_24179B000, v58, OS_LOG_TYPE_INFO, "Loading v2 audiogram model properties %@", buf, 0xCu);
  }

  v79 = v48;
  v59 = [v6 URLByAppendingPathComponent:v48];
  v60 = v59;
  if (v51)
  {
    v61 = v6;
    v62 = [v59 URLByAppendingPathExtension:@"mlmodel"];

    v90 = 0;
    v63 = [MEMORY[0x277CBFF20] compileModelAtURL:v62 error:&v90];
    v64 = v90;
    if (v64)
    {
      v65 = v64;
      v66 = AXLogAudiogram();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        [AIAudiogramIngestionEngine _loadV2ModelFromAssetPath:assetProperties:];
      }

      v67 = v86;
      goto LABEL_66;
    }

    v60 = v62;
  }

  else
  {
    v63 = [v59 URLByAppendingPathExtension:@"mlmodelc"];
  }

  v68 = [_TtC18AudiogramIngestion27AudiogramGraphDetectorModel alloc];
  LODWORD(v69) = v32;
  v70 = [(AudiogramGraphDetectorModel *)v68 initWithModelUrl:v63 modelInputSize:v35 confidenceThreshold:v38, v69];
  [(AIAudiogramIngestionEngine *)self setGraphModel:v70];

  v71 = AXLogAudiogram();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24179B000, v71, OS_LOG_TYPE_INFO, "Successfully loaded graph model!", buf, 2u);
  }

  v61 = v6;
  v72 = [v6 URLByAppendingPathComponent:v88];
  v73 = v72;
  if (v57)
  {
    v66 = [v72 URLByAppendingPathExtension:@"mlmodel"];

    v89 = 0;
    v62 = [MEMORY[0x277CBFF20] compileModelAtURL:v66 error:&v89];
    v74 = v89;
    if (v74)
    {
      v65 = v74;
      v75 = AXLogAudiogram();
      v67 = v86;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        [AIAudiogramIngestionEngine _loadV2ModelFromAssetPath:assetProperties:];
      }

      goto LABEL_66;
    }

    v73 = v66;
  }

  else
  {
    v62 = [v72 URLByAppendingPathExtension:@"mlmodelc"];
  }

  v67 = v86;

  v76 = [_TtC18AudiogramIngestion28AudiogramSymbolDetectorModel alloc];
  LODWORD(v77) = v29;
  v78 = [(AudiogramSymbolDetectorModel *)v76 initWithModelUrl:v62 modelInputSize:v86 confidenceThreshold:v87 classNames:v41 collisionMitigationClassNames:v44, v77];
  [(AIAudiogramIngestionEngine *)self setSymbolModel:v78];

  v66 = AXLogAudiogram();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24179B000, v66, OS_LOG_TYPE_INFO, "Successfully loaded symbol model!", buf, 2u);
  }

  v65 = 0;
LABEL_66:
}

- (void)modelDidUpdate:(id)a3 assetProperties:(id)a4 assetVersion:(unint64_t)a5 withError:(id)a6
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v11)
  {
    v12 = AXLogAudiogram();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&dword_24179B000, v12, OS_LOG_TYPE_INFO, "AIAudiogramIngestionEngine failed to download model: %@", &v16, 0xCu);
    }

    if ([(AIAudiogramIngestionEngine *)self isRetrievingLatestModelSilently])
    {
      goto LABEL_12;
    }

    v13 = [(AIAudiogramIngestionEngine *)self delegate];
    [v13 audiogramIngestionEngineModelDownloadFailed:v11];
LABEL_11:

LABEL_12:
    [(AIAudiogramIngestionEngine *)self _stopRetrievingLatestModel];
    goto LABEL_13;
  }

  v14 = AXLogAudiogram();
  v15 = v14;
  if (v9)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_24179B000, v15, OS_LOG_TYPE_INFO, "AIAudiogramIngestionEngine finished downloading model", &v16, 2u);
    }

    [(AIAudiogramIngestionEngine *)self _loadModelFromAssetPath:v9 assetProperties:v10];
    if ([(AIAudiogramIngestionEngine *)self isRetrievingLatestModelSilently])
    {
      goto LABEL_12;
    }

    v13 = [(AIAudiogramIngestionEngine *)self delegate];
    [v13 audiogramIngestionEngineModelDownloadComplete];
    goto LABEL_11;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [AIAudiogramIngestionEngine modelDidUpdate:assetProperties:assetVersion:withError:];
  }

LABEL_13:
}

- (void)modelDownloadProgressDidUpdate:(float)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = AXLogAudiogram();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = (a3 * 100.0);
    _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "AIAudiogramIngestionEngine downloading model %0.1f%%", &v8, 0xCu);
  }

  v6 = [(AIAudiogramIngestionEngine *)self delegate];
  *&v7 = a3;
  [v6 audiogramIngestionEngineModelDownloadProgressed:v7];
}

- (id)_textFromAudiogramImage:(id)a3 regionOfInterest:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v29[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_opt_new();
  v10 = objc_alloc_init(MEMORY[0x277CE2DB0]);
  v11 = [MEMORY[0x277CBEAF8] preferredLanguages];
  [v10 setRecognitionLanguages:v11];

  [v10 setUsesLanguageCorrection:1];
  [v10 setMinimumTextHeight:0.0];
  [v10 setRecognitionLevel:0];
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  if (!CGRectIsEmpty(v31))
  {
    [v10 setRegionOfInterest:{x, y, width, height}];
  }

  v12 = objc_alloc(MEMORY[0x277CE2D50]);
  v13 = [v12 initWithCIImage:v8 options:MEMORY[0x277CBEC10]];

  v29[0] = v10;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v28 = 0;
  [v13 performRequests:v14 error:&v28];
  v15 = v28;

  if (v15)
  {
    v16 = AXLogAudiogram();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramIngestionEngine _textFromAudiogramImage:regionOfInterest:];
    }

    v17 = v9;
  }

  else
  {
    v18 = [v10 results];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __71__AIAudiogramIngestionEngine__textFromAudiogramImage_regionOfInterest___block_invoke;
    v22[3] = &unk_278CEC440;
    v24 = x;
    v25 = y;
    v26 = width;
    v27 = height;
    v19 = v9;
    v23 = v19;
    [v18 enumerateObjectsUsingBlock:v22];

    v20 = v19;
  }

  return v9;
}

void __71__AIAudiogramIngestionEngine__textFromAudiogramImage_regionOfInterest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 blocksWithTypes:16 inRegion:{0.0, 0.0, 1.0, 1.0}];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__AIAudiogramIngestionEngine__textFromAudiogramImage_regionOfInterest___block_invoke_2;
  v5[3] = &unk_278CEC418;
  v4 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v4;
  v6 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v5];
}

void __71__AIAudiogramIngestionEngine__textFromAudiogramImage_regionOfInterest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    IsEmpty = CGRectIsEmpty(*(a1 + 40));
    v6 = [AIRecognizedText alloc];
    if (IsEmpty)
    {
      v7 = [(AIRecognizedText *)v6 initWithTextObservation:v4];
    }

    else
    {
      v7 = [(AIRecognizedText *)v6 initWithTextObservation:v4 regionOfInterest:*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)];
    }

    v8 = v7;
    [*(a1 + 32) addObject:v7];
    v9 = AXLogAudiogram();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __71__AIAudiogramIngestionEngine__textFromAudiogramImage_regionOfInterest___block_invoke_2_cold_1();
    }
  }
}

- (id)_observationsFromCIImage:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AIAudiogramIngestionEngine *)self model];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CE2C40]);
    v7 = [(AIAudiogramIngestionEngine *)self model];
    v8 = [v6 initWithModel:v7];

    v9 = objc_alloc(MEMORY[0x277CE2D50]);
    v10 = [v9 initWithCIImage:v4 options:MEMORY[0x277CBEC10]];
    v17[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v16 = 0;
    [v10 performRequests:v11 error:&v16];
    v12 = v16;

    if (v12)
    {
      v13 = AXLogAudiogram();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [AIAudiogramIngestionEngine _observationsFromCIImage:];
      }

      v14 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v14 = [v8 results];
    }
  }

  else
  {
    v12 = AXLogAudiogram();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramIngestionEngine _observationsFromCIImage:];
    }

    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

- (id)_cropEdgesFromImage:(id)a3 graphRect:(CGRect)a4 symbolsRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v60 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = objc_opt_new();
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v81.origin.x = v12;
  v81.origin.y = v11;
  v81.size.width = v10;
  v81.size.height = v9;
  if (!CGRectIntersectsRect(v62, v81))
  {
    v40 = AXLogAudiogram();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v79.origin.x = x;
      v79.origin.y = y;
      v79.size.width = width;
      v79.size.height = height;
      v41 = NSStringFromCGRect(v79);
      v80.origin.x = v12;
      v80.origin.y = v11;
      v80.size.width = v10;
      v80.size.height = v9;
      v42 = NSStringFromCGRect(v80);
      *buf = 138412546;
      v57 = v41;
      v58 = 2112;
      v59 = v42;
      _os_log_impl(&dword_24179B000, v40, OS_LOG_TYPE_INFO, "No valid crops from rects: %@ %@", buf, 0x16u);

      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  [v13 extent];
  v54 = v15;
  [v13 extent];
  v53 = v16;
  v63.origin.x = v12;
  v63.origin.y = v11;
  v63.size.width = v10;
  v63.size.height = v9;
  MinX = CGRectGetMinX(v63);
  v64.origin.x = v12;
  v64.origin.y = v11;
  v64.size.width = v10;
  v64.size.height = v9;
  MaxX = CGRectGetMaxX(v64);
  v65.origin.x = v12;
  v65.origin.y = v11;
  v65.size.width = v10;
  v65.size.height = v9;
  MinY = CGRectGetMinY(v65);
  v66.origin.x = v12;
  v52 = v11;
  v66.origin.y = v11;
  v55 = v10;
  v66.size.width = v10;
  rect = v9;
  v66.size.height = v9;
  MaxY = CGRectGetMaxY(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  v17 = CGRectGetMinX(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  v18 = CGRectGetMaxX(v68);
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  v45 = CGRectGetMinY(v69);
  v70.origin.x = x;
  v70.origin.y = y;
  v19 = MinX;
  v70.size.width = width;
  v70.size.height = height;
  v20 = CGRectGetMaxY(v70);
  v21 = MaxX;
  v44 = v20;
  if (MinX < v17 && MaxX > v17)
  {
    v71.origin.x = v12;
    v71.origin.y = v52;
    v71.size.width = v55;
    v71.size.height = rect;
    v22 = CGRectGetHeight(v71) / v54;
    v23 = [MEMORY[0x277CCAE60] valueWithCGRect:{MinX / v53, MinY / v54, (v17 - MinX) / v53, v22}];
    [v14 addObject:v23];

    v24 = AXLogAudiogram();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v72.origin.x = MinX / v53;
      v72.origin.y = MinY / v54;
      v72.size.width = (v17 - MinX) / v53;
      v72.size.height = v22;
      v25 = NSStringFromCGRect(v72);
      *buf = 138412290;
      v57 = v25;
      _os_log_impl(&dword_24179B000, v24, OS_LOG_TYPE_INFO, "Cropped left edge: %@", buf, 0xCu);
    }

    v19 = MinX;
    v20 = v44;
    v21 = MaxX;
  }

  if (v19 < v18 && v21 > v18)
  {
    v26 = v18 / v53;
    v27 = (v21 - v18) / v53;
    v73.origin.x = v12;
    v73.origin.y = v52;
    v73.size.width = v55;
    v73.size.height = rect;
    v28 = CGRectGetHeight(v73) / v54;
    v29 = [MEMORY[0x277CCAE60] valueWithCGRect:{v26, MinY / v54, v27, v28}];
    [v14 addObject:v29];

    v30 = AXLogAudiogram();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v74.origin.x = v26;
      v74.origin.y = MinY / v54;
      v74.size.width = v27;
      v74.size.height = v28;
      v31 = NSStringFromCGRect(v74);
      *buf = 138412290;
      v57 = v31;
      _os_log_impl(&dword_24179B000, v30, OS_LOG_TYPE_INFO, "Cropped right edge: %@", buf, 0xCu);
    }

    v20 = v44;
  }

  if (MinY < v20 && MaxY > v20)
  {
    v32 = v20 / v54;
    v49 = v12;
    v75.origin.x = v12;
    v33 = v20;
    v75.origin.y = v52;
    v75.size.width = v55;
    v75.size.height = rect;
    v34 = CGRectGetWidth(v75) / v53;
    v35 = [MEMORY[0x277CCAE60] valueWithCGRect:{v19 / v53, v32, v34, (MaxY - v33) / v54}];
    [v14 addObject:v35];

    v36 = AXLogAudiogram();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v76.origin.x = v19 / v53;
      v76.origin.y = v32;
      v76.size.width = v34;
      v76.size.height = (MaxY - v33) / v54;
      v37 = NSStringFromCGRect(v76);
      *buf = 138412290;
      v57 = v37;
      _os_log_impl(&dword_24179B000, v36, OS_LOG_TYPE_INFO, "Cropped top edge: %@", buf, 0xCu);
    }

    v12 = v49;
  }

  if (MinY < v45 && MaxY > v45)
  {
    v77.origin.x = v12;
    v77.origin.y = v52;
    v77.size.width = v55;
    v77.size.height = rect;
    v38 = CGRectGetWidth(v77) / v53;
    v39 = [MEMORY[0x277CCAE60] valueWithCGRect:{v19 / v53, MinY / v54, v38, (v45 - MinY) / v54}];
    [v14 addObject:v39];

    v40 = AXLogAudiogram();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v78.origin.x = v19 / v53;
      v78.origin.y = MinY / v54;
      v78.size.width = v38;
      v78.size.height = (v45 - MinY) / v54;
      v41 = NSStringFromCGRect(v78);
      *buf = 138412290;
      v57 = v41;
      _os_log_impl(&dword_24179B000, v40, OS_LOG_TYPE_INFO, "Cropped bottom edge: %@", buf, 0xCu);
LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_24;
  }

LABEL_25:

  return v14;
}

- (id)_rectsOfSymbolsFromImage:(id)a3 objectData:(id)a4
{
  v88[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v6 extent];
  v9 = v8;
  v67 = v6;
  [v6 extent];
  v11 = v10;
  v12 = [v7 mutableCopy];
  v66 = v7;
  v13 = [v7 mutableCopy];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __66__AIAudiogramIngestionEngine__rectsOfSymbolsFromImage_objectData___block_invoke;
  v81[3] = &unk_278CEC468;
  v81[4] = self;
  [v12 ax_removeObjectsFromArrayUsingBlock:v81];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __66__AIAudiogramIngestionEngine__rectsOfSymbolsFromImage_objectData___block_invoke_2;
  v80[3] = &unk_278CEC468;
  v80[4] = self;
  [v13 ax_removeObjectsFromArrayUsingBlock:v80];
  v14 = objc_opt_new();
  v64 = v13;
  v65 = v12;
  v88[0] = v12;
  v88[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __66__AIAudiogramIngestionEngine__rectsOfSymbolsFromImage_objectData___block_invoke_3;
  v76[3] = &unk_278CEC508;
  v76[4] = self;
  v78 = v9;
  v79 = v11;
  v16 = v14;
  v77 = v16;
  v63 = v15;
  [v15 enumerateObjectsUsingBlock:v76];
  v17 = AXLogAudiogram();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v83 = v16;
    _os_log_impl(&dword_24179B000, v17, OS_LOG_TYPE_INFO, "Uncombined symbol rects %@", buf, 0xCu);
  }

  if ([v16 count])
  {
    v18 = 0;
    v19 = 0.5;
    do
    {
      v20 = [v16 objectAtIndex:v18];
      [v20 symbolsRect];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      soft_AX_CGRectGetCenter(v21, v23, v25, v27);
      v74 = v30;
      v75 = v29;
      v71 = v24;
      v72 = v22;
      v89.origin.x = v22;
      v89.origin.y = v24;
      v69 = v28;
      v70 = v26;
      v89.size.width = v26;
      v89.size.height = v28;
      Width = CGRectGetWidth(v89);
      v31 = AXLogAudiogram();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v90.origin.y = v24;
        v90.origin.x = v22;
        v90.size.height = v28;
        v90.size.width = v26;
        v32 = NSStringFromCGRect(v90);
        *buf = 138412290;
        v83 = v32;
        _os_log_impl(&dword_24179B000, v31, OS_LOG_TYPE_INFO, "RectA %@", buf, 0xCu);
      }

      v68 = v18 + 1;
      if ([v16 count] > v18 + 1)
      {
        v33 = v18 + 1;
        do
        {
          v34 = [v16 objectAtIndex:v33];
          [v34 symbolsRect];
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v42 = v41;

          soft_AX_CGRectGetCenter(v36, v38, v40, v42);
          v44 = v43;
          v46 = v45;
          v91.origin.x = v36;
          v91.origin.y = v38;
          v91.size.width = v40;
          v91.size.height = v42;
          v47 = CGRectGetWidth(v91);
          v48 = AXLogAudiogram();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v92.origin.x = v36;
            v92.origin.y = v38;
            v92.size.width = v40;
            v92.size.height = v42;
            v49 = NSStringFromCGRect(v92);
            *buf = 138412290;
            v83 = v49;
            _os_log_impl(&dword_24179B000, v48, OS_LOG_TYPE_INFO, "RectB %@", buf, 0xCu);
          }

          if (Width >= v47)
          {
            v47 = Width;
          }

          soft_AX_CGPointGetDistanceToPoint(v75, v74, v44, v46);
          if (v50 < v47 * v19)
          {
            v93.origin.y = v71;
            v93.origin.x = v72;
            v93.size.height = v69;
            v93.size.width = v70;
            v98.origin.x = v36;
            v98.origin.y = v38;
            v98.size.width = v40;
            v98.size.height = v42;
            v94 = CGRectUnion(v93, v98);
            x = v94.origin.x;
            y = v94.origin.y;
            v53 = v94.size.width;
            height = v94.size.height;
            [v20 setSymbolsRect:?];
            [v16 removeObjectAtIndex:v33];
            v55 = AXLogAudiogram();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v95.origin.y = v71;
              v95.origin.x = v72;
              v95.size.height = v69;
              v95.size.width = v70;
              v56 = NSStringFromCGRect(v95);
              v96.origin.x = v36;
              v96.origin.y = v38;
              v96.size.width = v40;
              v96.size.height = v42;
              v57 = NSStringFromCGRect(v96);
              v97.origin.x = x;
              v97.origin.y = y;
              v97.size.width = v53;
              v97.size.height = height;
              v58 = NSStringFromCGRect(v97);
              *buf = 138412802;
              v83 = v56;
              v84 = 2112;
              v85 = v57;
              v86 = 2112;
              v87 = v58;
              _os_log_impl(&dword_24179B000, v55, OS_LOG_TYPE_INFO, "Combining two symbol rects into one %@ + %@ = %@", buf, 0x20u);
            }

            --v33;

            v19 = 0.5;
          }

          ++v33;
        }

        while (v33 < [v16 count]);
      }

      v18 = v68;
    }

    while ([v16 count] > v68);
  }

  v59 = AXLogAudiogram();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v83 = v16;
    _os_log_impl(&dword_24179B000, v59, OS_LOG_TYPE_INFO, "All symbol rects %@", buf, 0xCu);
  }

  v60 = v77;
  v61 = v16;

  return v16;
}

uint64_t __66__AIAudiogramIngestionEngine__rectsOfSymbolsFromImage_objectData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 labels];
  v5 = [v4 firstObject];
  [v5 confidence];
  v7 = v6;
  [*(a1 + 32) modelLabelConfidenceThreshold];
  if (v7 <= v8)
  {
    v13 = 1;
  }

  else
  {
    v9 = [v3 labels];
    v10 = [v9 firstObject];
    v11 = [v10 identifier];
    v12 = [*(a1 + 32) modelLabelLeftEarSymbol];
    v13 = [v11 isEqualToString:v12] ^ 1;
  }

  return v13;
}

uint64_t __66__AIAudiogramIngestionEngine__rectsOfSymbolsFromImage_objectData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 labels];
  v5 = [v4 firstObject];
  [v5 confidence];
  v7 = v6;
  [*(a1 + 32) modelLabelConfidenceThreshold];
  if (v7 <= v8)
  {
    v13 = 1;
  }

  else
  {
    v9 = [v3 labels];
    v10 = [v9 firstObject];
    v11 = [v10 identifier];
    v12 = [*(a1 + 32) modelLabelRightEarSymbol];
    v13 = [v11 isEqualToString:v12] ^ 1;
  }

  return v13;
}

void __66__AIAudiogramIngestionEngine__rectsOfSymbolsFromImage_objectData___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __66__AIAudiogramIngestionEngine__rectsOfSymbolsFromImage_objectData___block_invoke_4;
    v42[3] = &unk_278CEC490;
    v6 = v4;
    v43 = v6;
    v7 = v5;
    v44 = v7;
    [v3 enumerateObjectsUsingBlock:v42];
    [*(a1 + 32) _stddevFromNumbers:v6];
    v9 = v8;
    [*(a1 + 32) _stddevFromNumbers:v7];
    v11 = v10;
    [*(a1 + 32) _meanFromNumbers:v6];
    v13 = v12;
    [*(a1 + 32) _meanFromNumbers:v7];
    v15 = v14;
    v16 = AXLogAudiogram();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24179B000, v16, OS_LOG_TYPE_INFO, "Unfiltered ear object data:", buf, 2u);
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __66__AIAudiogramIngestionEngine__rectsOfSymbolsFromImage_objectData___block_invoke_200;
    v41[3] = &unk_278CEC4B8;
    v41[4] = *(a1 + 32);
    v41[5] = v13;
    v41[6] = v9;
    v41[7] = v15;
    v41[8] = v11;
    [v3 ax_removeObjectsFromArrayUsingBlock:v41];
    if ([v3 count])
    {
      *buf = 0;
      v38 = buf;
      v39 = 0x2020000000;
      v40 = 0x4000000000000000;
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0xBFF0000000000000;
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0x4000000000000000;
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0xBFF0000000000000;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __66__AIAudiogramIngestionEngine__rectsOfSymbolsFromImage_objectData___block_invoke_201;
      v24[3] = &unk_278CEC4E0;
      v24[4] = buf;
      v24[5] = &v29;
      v24[6] = &v33;
      v24[7] = &v25;
      [v3 enumerateObjectsUsingBlock:v24];
      v17 = *(v38 + 3);
      v18 = v30[3];
      v20 = *(a1 + 48);
      v19 = *(a1 + 56);
      v21 = v34[3];
      v22 = v26[3];
      v23 = objc_opt_new();
      [v23 setSymbolsRect:{v17 * v20, v18 * v19, v20 * (v21 - v17), v19 * (v22 - v18)}];
      [*(a1 + 40) addObject:v23];

      _Block_object_dispose(&v25, 8);
      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v33, 8);
      _Block_object_dispose(buf, 8);
    }
  }
}

void __66__AIAudiogramIngestionEngine__rectsOfSymbolsFromImage_objectData___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [v5 boundingBox];
  v6 = [v4 numberWithDouble:CGRectGetMidX(v19)];
  [v3 addObject:v6];

  v7 = *(a1 + 40);
  v8 = MEMORY[0x277CCABB0];
  [v5 boundingBox];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  v17 = [v8 numberWithDouble:CGRectGetMidY(v20)];
  [v7 addObject:v17];
}

BOOL __66__AIAudiogramIngestionEngine__rectsOfSymbolsFromImage_objectData___block_invoke_200(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  [v3 boundingBox];
  [v4 _zScoreFromNumber:CGRectGetMidX(v31) mean:*(a1 + 40) stddev:*(a1 + 48)];
  v6 = v5;
  v7 = *(a1 + 32);
  [v3 boundingBox];
  [v7 _zScoreFromNumber:CGRectGetMidY(v32) mean:*(a1 + 56) stddev:*(a1 + 64)];
  v9 = v8;
  v10 = AXLogAudiogram();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v3 labels];
    v12 = [v11 firstObject];
    v13 = [v12 identifier];
    v14 = [v3 labels];
    v15 = [v14 firstObject];
    [v15 confidence];
    v17 = v16;
    [v3 boundingBox];
    v18 = NSStringFromCGRect(v33);
    v20 = 138413314;
    v21 = v13;
    v22 = 2048;
    v23 = v17;
    v24 = 2048;
    v25 = v6;
    v26 = 2048;
    v27 = v9;
    v28 = 2112;
    v29 = v18;
    _os_log_impl(&dword_24179B000, v10, OS_LOG_TYPE_INFO, "Ear %@ %0.3f z-score=%0.3f,%0.3f %@", &v20, 0x34u);
  }

  return fmax(fabs(v6), fabs(v9)) > 1.75;
}

void __66__AIAudiogramIngestionEngine__rectsOfSymbolsFromImage_objectData___block_invoke_201(void *a1, void *a2)
{
  v3 = a2;
  [v3 boundingBox];
  MinX = CGRectGetMinX(v23);
  [v3 boundingBox];
  MaxX = CGRectGetMaxX(v24);
  [v3 boundingBox];
  v6 = 1.0 - CGRectGetMaxY(v25);
  [v3 boundingBox];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v26.origin.x = v8;
  v26.origin.y = v10;
  v26.size.width = v12;
  v26.size.height = v14;
  v15 = 1.0 - CGRectGetMinY(v26);
  v16 = *(a1[4] + 8);
  v17 = *(v16 + 24);
  if (v17 >= MinX)
  {
    v17 = MinX;
  }

  *(v16 + 24) = v17;
  v18 = *(a1[5] + 8);
  v19 = *(v18 + 24);
  if (v19 >= v6)
  {
    v19 = v6;
  }

  *(v18 + 24) = v19;
  v20 = *(a1[6] + 8);
  v21 = *(v20 + 24);
  if (v21 < MaxX)
  {
    v21 = MaxX;
  }

  *(v20 + 24) = v21;
  v22 = *(a1[7] + 8);
  if (*(v22 + 24) >= v15)
  {
    v15 = *(v22 + 24);
  }

  *(v22 + 24) = v15;
}

- (id)_rectsOfGraphFromImage:(id)a3 objectData:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 extent];
  Width = CGRectGetWidth(v27);
  [v7 extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  Height = CGRectGetHeight(v28);
  v18 = objc_opt_new();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__AIAudiogramIngestionEngine__rectsOfGraphFromImage_objectData___block_invoke;
  v23[3] = &unk_278CEC530;
  v23[4] = self;
  v25 = Width;
  v26 = Height;
  v19 = v18;
  v24 = v19;
  [v6 enumerateObjectsUsingBlock:v23];

  v20 = v24;
  v21 = v19;

  return v19;
}

void __64__AIAudiogramIngestionEngine__rectsOfGraphFromImage_objectData___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 labels];
  v5 = [v4 firstObject];
  [v5 confidence];
  v7 = v6;
  [*(a1 + 32) modelLabelConfidenceThreshold];
  if (v7 <= v8)
  {

LABEL_7:
    goto LABEL_8;
  }

  v9 = [v3 labels];
  v10 = [v9 firstObject];
  v11 = [v10 identifier];
  v12 = [*(a1 + 32) modelLabelGraph];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    [v3 boundingBox];
    v15 = *(a1 + 48) * v14;
    [v3 boundingBox];
    v16 = (1.0 - CGRectGetMaxY(v26)) * *(a1 + 56);
    [v3 boundingBox];
    v18 = *(a1 + 48) * v17;
    [v3 boundingBox];
    v20 = *(a1 + 56) * v19;
    v21 = AXLogAudiogram();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v27.origin.x = v15;
      v27.origin.y = v16;
      v27.size.width = v18;
      v27.size.height = v20;
      v22 = NSStringFromCGRect(v27);
      v23 = 138412290;
      v24 = v22;
      _os_log_impl(&dword_24179B000, v21, OS_LOG_TYPE_INFO, "Found graph %@", &v23, 0xCu);
    }

    v4 = objc_opt_new();
    [v4 setGraphRect:{v15, v16, v18, v20}];
    [*(a1 + 40) addObject:v4];
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_cropResultsFromImage:(id)a3 observations:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AIAudiogramIngestionEngine *)self _rectsOfGraphFromImage:v6 objectData:v7];
  v9 = [(AIAudiogramIngestionEngine *)self _rectsOfSymbolsFromImage:v6 objectData:v7];

  v10 = objc_opt_new();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__AIAudiogramIngestionEngine__cropResultsFromImage_observations___block_invoke;
  v21[3] = &unk_278CEC580;
  v11 = v9;
  v22 = v11;
  v12 = v10;
  v23 = v12;
  [v8 enumerateObjectsUsingBlock:v21];
  [v12 addObjectsFromArray:v11];
  v13 = AXLogAudiogram();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v12;
    _os_log_impl(&dword_24179B000, v13, OS_LOG_TYPE_INFO, "Crop rects %@", buf, 0xCu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__AIAudiogramIngestionEngine__cropResultsFromImage_observations___block_invoke_206;
  v19[3] = &unk_278CEC580;
  v19[4] = self;
  v20 = v6;
  v14 = v6;
  [v12 enumerateObjectsUsingBlock:v19];
  v15 = AXLogAudiogram();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [AIAudiogramIngestionEngine _cropResultsFromImage:observations:];
  }

  v16 = v20;
  v17 = v12;

  return v12;
}

void __65__AIAudiogramIngestionEngine__cropResultsFromImage_observations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 graphRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  soft_AX_CGRectGetCenter(v4, v6, v8, v10);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v12 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__AIAudiogramIngestionEngine__cropResultsFromImage_observations___block_invoke_204;
  v17[3] = &unk_278CEC558;
  *&v17[6] = v5;
  *&v17[7] = v7;
  *&v17[8] = v9;
  *&v17[9] = v11;
  v17[10] = v13;
  v17[11] = v14;
  v17[4] = &v19;
  v17[5] = v18;
  [v12 enumerateObjectsUsingBlock:v17];
  v15 = objc_opt_new();
  [v15 setGraphRect:{v5, v7, v9, v11}];
  v16 = v20[5];
  if (v16)
  {
    [v16 symbolsRect];
    [v15 setSymbolsRect:?];
    [*(a1 + 32) removeObject:v20[5]];
  }

  [*(a1 + 40) addObject:v15];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v19, 8);
}

void __65__AIAudiogramIngestionEngine__cropResultsFromImage_observations___block_invoke_204(uint64_t a1, void *a2)
{
  v17 = a2;
  [v17 symbolsRect];
  soft_AX_CGRectGetCenter(v4, v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v19.x = v8;
  v19.y = v10;
  if (CGRectContainsPoint(*(a1 + 48), v19))
  {
    soft_AX_CGPointGetDistanceToPoint(v9, v11, *(a1 + 80), *(a1 + 88));
    v13 = v12;
    v14 = *(*(a1 + 32) + 8);
    v16 = *(v14 + 40);
    v15 = (v14 + 40);
    if (!v16 || v12 < *(*(*(a1 + 40) + 8) + 24))
    {
      objc_storeStrong(v15, a2);
      *(*(*(a1 + 40) + 8) + 24) = v13;
    }
  }
}

void __65__AIAudiogramIngestionEngine__cropResultsFromImage_observations___block_invoke_206(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 graphRect];
  if (CGRectIsEmpty(v51))
  {
    [v3 symbolsRect];
    if (!CGRectIsEmpty(v52))
    {
      v4 = *(a1 + 32);
      [v3 symbolsRect];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [v3 symbolsRect];
      v13 = CGRectGetHeight(v53) * -1.5;
      [v3 symbolsRect];
      v14 = CGRectGetWidth(v54) * -1.5;
      [*(a1 + 40) extent];
      [v4 _shrinkRect:v6 width:v8 height:v10 insideBounds:{v12, v13, v14, v15, v16}];
      [v3 setGraphRect:?];
      v17 = AXLogAudiogram();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        [v3 symbolsRect];
        v18 = NSStringFromCGRect(v55);
        [v3 graphRect];
        v19 = NSStringFromCGRect(v56);
        v46 = 138412546;
        v47 = v18;
        v48 = 2112;
        v49 = v19;
        _os_log_impl(&dword_24179B000, v17, OS_LOG_TYPE_INFO, "No graph rect found. Building from symbols rect: %@ -> %@", &v46, 0x16u);
      }
    }
  }

  [v3 graphRect];
  if (!CGRectIsEmpty(v57))
  {
    v20 = *(a1 + 32);
    [v3 graphRect];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v3 graphRect];
    v29 = CGRectGetWidth(v58) * -0.75;
    [v3 graphRect];
    v30 = CGRectGetHeight(v59) * -0.75;
    [*(a1 + 40) extent];
    [v20 _shrinkRect:v22 width:v24 height:v26 insideBounds:{v28, v29, v30, v31, v32}];
    [v3 setGraphRect:?];
  }

  [v3 symbolsRect];
  if (!CGRectIsEmpty(v60))
  {
    v33 = *(a1 + 32);
    [v3 symbolsRect];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    [v3 symbolsRect];
    v42 = CGRectGetWidth(v61) * 0.1;
    [v3 symbolsRect];
    v43 = CGRectGetHeight(v62) * 0.1;
    [*(a1 + 40) extent];
    [v33 _shrinkRect:v35 width:v37 height:v39 insideBounds:{v41, v42, v43, v44, v45}];
    [v3 setSymbolsRect:?];
  }
}

- (CGRect)_shrinkRect:(CGRect)a3 width:(double)a4 height:(double)a5 insideBounds:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v18 = CGRectInset(a3, a4 * 0.5, a5 * 0.5);
  x = v18.origin.x;
  y = v18.origin.y;
  v12 = v18.size.width;
  v13 = v18.size.height;
  if (a4 < 0.0)
  {
    if (CGRectGetMinX(v18) < 0.0)
    {
      x = 0.0;
    }

    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = v12;
    v19.size.height = v13;
    if (CGRectGetMaxX(v19) > width)
    {
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = v12;
      v20.size.height = v13;
      v12 = width - CGRectGetMinX(v20);
    }
  }

  if (a5 < 0.0)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = v12;
    v21.size.height = v13;
    if (CGRectGetMinY(v21) < 0.0)
    {
      y = 0.0;
    }

    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = v12;
    v22.size.height = v13;
    if (CGRectGetMaxY(v22) > height)
    {
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = v12;
      v23.size.height = v13;
      v13 = height - CGRectGetMinY(v23);
    }
  }

  v14 = x;
  v15 = y;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)_audiogramMapFromRecognizedText:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [(AIAudiogramIngestionEngine *)self _formatNumbersFromRecognizedText:a3];
  v5 = [(AIAudiogramIngestionEngine *)self _groupNumbersByAxisFromRecognizedText:v4];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__AIAudiogramIngestionEngine__audiogramMapFromRecognizedText___block_invoke;
  v13[3] = &unk_278CEC5A8;
  v13[4] = &v20;
  v13[5] = &v14;
  [v5 enumerateObjectsUsingBlock:v13];
  v6 = AXLogAudiogram();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v21[5];
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&dword_24179B000, v6, OS_LOG_TYPE_DEFAULT, "Found X Axis Group: %@", buf, 0xCu);
  }

  v8 = AXLogAudiogram();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v15[5];
    *buf = 138412290;
    v27 = v9;
    _os_log_impl(&dword_24179B000, v8, OS_LOG_TYPE_DEFAULT, "Found Y Axis Group: %@", buf, 0xCu);
  }

  if (v21[5] && v15[5])
  {
    v10 = [AIAudiogramMap alloc];
    v11 = [(AIAudiogramMap *)v10 initWithFrequencies:v21[5] hearingLevels:v15[5]];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __62__AIAudiogramIngestionEngine__audiogramMapFromRecognizedText___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 axis];
  v5 = 40;
  if (!v4)
  {
    v5 = 32;
  }

  v6 = *(*(a1 + v5) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

- (id)_formatNumbersFromRecognizedText:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 characterSetWithCharactersInString:{@"0123456789, .-"}];
  v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"kK"];
  v7 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__AIAudiogramIngestionEngine__formatNumbersFromRecognizedText___block_invoke;
  v14[3] = &unk_278CEC5D0;
  v15 = v5;
  v16 = v6;
  v8 = v7;
  v17 = v8;
  v9 = v6;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v14];

  v11 = v17;
  v12 = v8;

  return v8;
}

void __63__AIAudiogramIngestionEngine__formatNumbersFromRecognizedText___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCAC80];
  v5 = [v3 string];
  v6 = [v4 localizedScannerWithString:v5];

  v7 = *(a1 + 32);
  v59 = 0;
  [v6 scanUpToCharactersFromSet:v7 intoString:&v59];
  v8 = v59;
  v9 = [v8 length];
  v10 = *(a1 + 32);
  v58 = 0;
  [v6 scanCharactersFromSet:v10 intoString:&v58];
  v11 = v58;
  v12 = [v11 length];
  v13 = *(a1 + 40);
  v57 = 0;
  [v6 scanCharactersFromSet:v13 intoString:&v57];
  v14 = v57;
  v15 = [v14 length] + v12;
  if (v15)
  {
    v16 = [v3 string];
    v17 = [v16 containsString:@"d8"];

    if ((v17 & 1) == 0)
    {
      v19 = [v11 hasPrefix:@"-"];
      v18 = [v11 stringByReplacingOccurrencesOfString:@"-" withString:&stru_28535F0B0];

      if (![v18 length])
      {
        goto LABEL_32;
      }

      if (v19)
      {
        v20 = [@"-" stringByAppendingString:v18];

        v18 = v20;
      }

      v55 = v9;
      if ([v18 containsString:{@", "}])
      {
        v21 = [v18 rangeOfString:{@", "}];
        if (([v18 length] - v21) >= 3)
        {
          v22 = [v18 stringByReplacingOccurrencesOfString:@" withString:{", &stru_28535F0B0}];

          v18 = v22;
        }
      }

      v23 = [v18 integerValue];
      v24 = [v14 lowercaseString];
      v25 = [v24 isEqualToString:@"k"];

      if (v25)
      {
        if ([v18 containsString:@"."])
        {
          [v18 floatValue];
          v23 = (v26 * 1000.0);
        }

        else
        {
          v23 *= 1000;
        }
      }

      [v18 floatValue];
      if (v27 <= 0.0)
      {
        v28 = v55;
      }

      else
      {
        v28 = v55;
        if (v23 <= 9 && v23 != 5 && ![v8 length] && !objc_msgSend(v14, "length"))
        {
          [v18 floatValue];
          v23 = (v29 * 1000.0);
        }
      }

      if (!v28 && ([v3 string], v30 = objc_claimAutoreleasedReturnValue(), v54 = v23, v31 = objc_msgSend(v30, "length"), v30, v32 = v15 == v31, v23 = v54, v28 = v55, v32))
      {
        [v3 width];
        Width = v33;
        [v3 center];
        MidX = v35;
        v38 = v37;
      }

      else
      {
        v56 = 0;
        [v3 boundingBoxForRange:v28 error:{v15, &v56, v54}];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v47 = v56;
        if (v47)
        {
          v48 = v47;
          v49 = AXLogAudiogram();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            __63__AIAudiogramIngestionEngine__formatNumbersFromRecognizedText___block_invoke_cold_1();
          }

          goto LABEL_31;
        }

        v54 = v23;
        v60.origin.x = v40;
        v60.origin.y = v42;
        v60.size.width = v44;
        v60.size.height = v46;
        MidX = CGRectGetMidX(v60);
        [v3 center];
        v38 = v50;
        v61.origin.x = v40;
        v61.origin.y = v42;
        v61.size.width = v44;
        v61.size.height = v46;
        Width = CGRectGetWidth(v61);
      }

      v51 = [AIRecognizedText alloc];
      v52 = [v3 string];
      v53 = [MEMORY[0x277CCABB0] numberWithInteger:v54];
      v48 = [(AIRecognizedText *)v51 initWithString:v52 center:v53 width:MidX numericalValue:v38, Width];

      [*(a1 + 48) addObject:v48];
LABEL_31:

      goto LABEL_32;
    }
  }

  v18 = v11;
LABEL_32:
}

- (id)_groupNumbersByAxisFromRecognizedText:(id)a3
{
  v4 = a3;
  v5 = [v4 ax_filteredArrayUsingBlock:&__block_literal_global_0];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke_2;
  v32[3] = &unk_278CEC5D0;
  v8 = v5;
  v33 = v8;
  v34 = v6;
  v35 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateObjectsUsingBlock:v32];
  v11 = [(AIAudiogramIngestionEngine *)self _removeDuplicateSetsFromTextSets:v10];

  v12 = [(AIAudiogramIngestionEngine *)self _removeDuplicateSetsFromTextSets:v9];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke_4;
  v17[3] = &unk_278CEC668;
  v17[4] = self;
  v17[5] = v19;
  v17[6] = &v26;
  [v11 enumerateObjectsUsingBlock:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke_239;
  v16[3] = &unk_278CEC668;
  v16[4] = self;
  v16[5] = v18;
  v16[6] = &v20;
  [v12 enumerateObjectsUsingBlock:v16];
  v13 = objc_opt_new();
  v14 = v13;
  if (v27[5])
  {
    [v13 addObject:?];
  }

  if (v21[5])
  {
    [v14 addObject:?];
  }

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v14;
}

BOOL __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 numericalValue];
  v3 = v2 != 0;

  return v3;
}

void __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = *(a1 + 32);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke_3;
  v15 = &unk_278CEC618;
  v19 = a3;
  v9 = v5;
  v16 = v9;
  v10 = v6;
  v17 = v10;
  v11 = v7;
  v18 = v11;
  [v8 enumerateObjectsUsingBlock:&v12];
  if ([v10 count])
  {
    [v10 addObject:v9];
    [*(a1 + 40) addObject:v10];
  }

  if ([v11 count])
  {
    [v11 addObject:v9];
    [*(a1 + 48) addObject:v11];
  }
}

uint64_t __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 56) != a3)
  {
    v26 = v5;
    [*(a1 + 32) center];
    v8 = v7;
    [v26 center];
    if (vabdd_f64(v8, v9) < 0.1)
    {
      v10 = [v26 numericalValue];
      v11 = [*(a1 + 32) numericalValue];
      if ([v10 compare:v11] == -1)
      {
      }

      else
      {
        [*(a1 + 32) center];
        v13 = v12;
        [v26 center];
        v15 = v14;

        if (v13 < v15)
        {
          [*(a1 + 40) addObject:v26];
        }
      }
    }

    [*(a1 + 32) center];
    v17 = v16;
    v5 = [v26 center];
    v6 = v26;
    if (vabdd_f64(v17, v18) < 0.1)
    {
      v19 = [v26 numericalValue];
      v20 = [*(a1 + 32) numericalValue];
      if ([v19 compare:v20] == -1)
      {
      }

      else
      {
        [*(a1 + 32) center];
        v22 = v21;
        [v26 center];
        v24 = v23;

        v6 = v26;
        if (v22 <= v24)
        {
          goto LABEL_13;
        }

        v5 = [*(a1 + 48) addObject:v26];
      }

      v6 = v26;
    }
  }

LABEL_13:

  return MEMORY[0x2821F96F8](v5, v6);
}

void __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke_4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count] > *(*(*(a1 + 40) + 8) + 24))
  {
    v4 = AXLogAudiogram();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_24179B000, v4, OS_LOG_TYPE_INFO, "Starting validation for X axis with matches %@", &buf, 0xCu);
    }

    v5 = [*(a1 + 32) _sortAndRemoveInvalidAxisValues:v3 forAxis:0 error:0];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x2020000000;
    v20 = 0;
    v6 = [AIAudiogramValidFrequencies firstObject];
    v7 = [v6 integerValue];

    v8 = [AIAudiogramValidFrequencies lastObject];
    v9 = [v8 integerValue];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke_237;
    v15[3] = &unk_278CEC640;
    v15[5] = v7;
    v15[6] = v9;
    v15[4] = &buf;
    [v5 enumerateObjectsUsingBlock:v15];
    if (*(*(&buf + 1) + 24) == 1)
    {
      v10 = [v5 count];
      if (v10 > *(*(*(a1 + 40) + 8) + 24))
      {
        v11 = AXLogAudiogram();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v16 = 138412290;
          v17 = v5;
          _os_log_impl(&dword_24179B000, v11, OS_LOG_TYPE_INFO, "Matches are now the largest X axis group: %@", v16, 0xCu);
        }

        v12 = [[AIAudiogramAxis alloc] initWithAxis:0 values:v5];
        v13 = *(*(a1 + 48) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        *(*(*(a1 + 40) + 8) + 24) = v10;
      }
    }

    _Block_object_dispose(&buf, 8);
  }
}

void __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke_237(void *a1, void *a2)
{
  v7 = a2;
  v3 = [v7 numericalValue];
  if ([v3 integerValue] <= a1[5])
  {
  }

  else
  {
    v4 = [v7 numericalValue];
    v5 = [v4 integerValue];
    v6 = a1[6];

    if (v5 < v6)
    {
      *(*(a1[4] + 8) + 24) = 1;
    }
  }
}

void __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke_239(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count] > *(*(*(a1 + 40) + 8) + 24))
  {
    v4 = AXLogAudiogram();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_24179B000, v4, OS_LOG_TYPE_INFO, "Starting validation for Y axis with matches %@", &buf, 0xCu);
    }

    v5 = [*(a1 + 32) _sortAndRemoveInvalidAxisValues:v3 forAxis:1 error:0];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x2020000000;
    v16 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke_240;
    v11[3] = &unk_278CEC690;
    v11[4] = &buf;
    [v5 enumerateObjectsUsingBlock:v11];
    if (*(*(&buf + 1) + 24) == 1)
    {
      v6 = [v5 count];
      if (v6 > *(*(*(a1 + 40) + 8) + 24))
      {
        v7 = AXLogAudiogram();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v12 = 138412290;
          v13 = v5;
          _os_log_impl(&dword_24179B000, v7, OS_LOG_TYPE_INFO, "Matches are now the largest Y axis group: %@", v12, 0xCu);
        }

        v8 = [[AIAudiogramAxis alloc] initWithAxis:1 values:v5];
        v9 = *(*(a1 + 48) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        *(*(*(a1 + 40) + 8) + 24) = v6;
      }
    }

    _Block_object_dispose(&buf, 8);
  }
}

void __68__AIAudiogramIngestionEngine__groupNumbersByAxisFromRecognizedText___block_invoke_240(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 numericalValue];
  v4 = [v3 integerValue];
  if (v4 <= -20.0)
  {
  }

  else
  {
    v5 = [v7 numericalValue];
    v6 = [v5 integerValue];

    if (v6 < 120.0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

- (id)_removeDuplicateSetsFromTextSets:(id)a3
{
  v3 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__AIAudiogramIngestionEngine__removeDuplicateSetsFromTextSets___block_invoke;
  v6[3] = &unk_278CEC708;
  v4 = v3;
  v7 = v4;
  [v4 ax_removeObjectsFromArrayUsingBlock:v6];

  return v4;
}

uint64_t __63__AIAudiogramIngestionEngine__removeDuplicateSetsFromTextSets___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__AIAudiogramIngestionEngine__removeDuplicateSetsFromTextSets___block_invoke_2;
  v10[3] = &unk_278CEC6E0;
  v13 = a3;
  v7 = v5;
  v11 = v7;
  v12 = &v14;
  [v6 enumerateObjectsUsingBlock:v10];
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __63__AIAudiogramIngestionEngine__removeDuplicateSetsFromTextSets___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (a1[6] != a3)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    v9 = a1[4];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__AIAudiogramIngestionEngine__removeDuplicateSetsFromTextSets___block_invoke_3;
    v10[3] = &unk_278CEC6B8;
    v11 = v7;
    v12 = &v13;
    [v9 enumerateObjectsUsingBlock:v10];
    if (*(v14 + 24) == 1)
    {
      *(*(a1[5] + 8) + 24) = 1;
      *a4 = 1;
    }

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __63__AIAudiogramIngestionEngine__removeDuplicateSetsFromTextSets___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if ((result & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (void)audiogramFromImages:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AIAudiogramIngestionEngine *)self analysisQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__AIAudiogramIngestionEngine_audiogramFromImages_completion___block_invoke;
  block[3] = &unk_278CEC730;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __61__AIAudiogramIngestionEngine_audiogramFromImages_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audiogramFromImages:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = v2;
    v3 = (*(v3 + 16))();
    v2 = v5;
  }

  return MEMORY[0x2821F96F8](v3, v2);
}

- (id)audiogramFromImage:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(AIAudiogramIngestionEngine *)self audiogramFromImages:v6, v9, v10];

  return v7;
}

- (id)audiogramFromImages:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(AIAudiogramIngestionEngine *)self _audiogramFromImagesV2:v4];
  }

  else
  {
    v6 = objc_opt_new();
    if ([v4 count])
    {
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __50__AIAudiogramIngestionEngine_audiogramFromImages___block_invoke;
      v13 = &unk_278CEC7A8;
      v14 = self;
      v7 = v6;
      v15 = v7;
      [v4 enumerateObjectsUsingBlock:&v10];
      v5 = [(AIAudiogramIngestionEngine *)self _combineAudiograms:v7, v10, v11, v12, v13, v14];
      if (!v5)
      {
        v8 = AXLogAudiogram();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [AIAudiogramIngestionEngine audiogramFromImages:];
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void __50__AIAudiogramIngestionEngine_audiogramFromImages___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = AXLogAudiogram();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24179B000, v4, OS_LOG_TYPE_DEFAULT, "Starting next image!", buf, 2u);
  }

  v5 = [*(a1 + 32) _propertyOrientationFromOrientation:{objc_msgSend(v3, "imageOrientation")}];
  v6 = AXLogAudiogram();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v3 imageOrientation];
    *buf = 134218240;
    v28 = v7;
    v29 = 1024;
    v30 = v5;
    _os_log_impl(&dword_24179B000, v6, OS_LOG_TYPE_INFO, "Orienting image %ld -> %d", buf, 0x12u);
  }

  v8 = [objc_alloc(MEMORY[0x277CBF758]) initWithCGImage:objc_msgSend(v3 options:{"CGImage"), 0}];
  v9 = [v8 imageByApplyingCGOrientation:v5];

  v10 = [*(a1 + 32) _observationsFromCIImage:v9];
  if ([v10 count])
  {
    v11 = [*(a1 + 32) _cropResultsFromImage:v9 observations:v10];
    v12 = objc_opt_new();
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __50__AIAudiogramIngestionEngine_audiogramFromImages___block_invoke_244;
    v22 = &unk_278CEC780;
    v23 = *(a1 + 32);
    v13 = v9;
    v24 = v13;
    v14 = v10;
    v25 = v14;
    v15 = v12;
    v26 = v15;
    [v11 enumerateObjectsUsingBlock:&v19];
    if ([v15 count])
    {
      [*(a1 + 40) addObjectsFromArray:v15];
    }

    else
    {
      v16 = AXLogAudiogram();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24179B000, v16, OS_LOG_TYPE_INFO, "Attempting find audiogram text without cropping", buf, 2u);
      }

      v17 = [*(a1 + 32) _textFromAudiogramImage:v13 regionOfInterest:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      v18 = [*(a1 + 32) _audiogramFromSymbols:v14 recognizedText:v17];
      if (v18)
      {
        [*(a1 + 40) addObject:v18];
      }
    }
  }

  else
  {
    v11 = AXLogAudiogram();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24179B000, v11, OS_LOG_TYPE_INFO, "No observations for audiogram image", buf, 2u);
    }
  }
}

void __50__AIAudiogramIngestionEngine_audiogramFromImages___block_invoke_244(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 graphRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 symbolsRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v38.origin.x = v5;
  v38.origin.y = v7;
  v38.size.width = v9;
  v38.size.height = v11;
  if (!CGRectIsEmpty(v38))
  {
    v39.origin.x = v13;
    v39.origin.y = v15;
    v39.size.width = v17;
    v39.size.height = v19;
    if (!CGRectIsEmpty(v39))
    {
      v20 = AXLogAudiogram();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24179B000, v20, OS_LOG_TYPE_INFO, "Attempting to crop graph edges for audiogram text", buf, 2u);
      }

      v21 = objc_opt_new();
      v22 = [*(a1 + 32) _cropEdgesFromImage:*(a1 + 40) graphRect:v5 symbolsRect:{v7, v9, v11, v13, v15, v17, v19}];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __50__AIAudiogramIngestionEngine_audiogramFromImages___block_invoke_245;
      v34[3] = &unk_278CEC758;
      v23 = *(a1 + 40);
      v34[4] = *(a1 + 32);
      v35 = v23;
      v36 = v21;
      v24 = v21;
      [v22 enumerateObjectsUsingBlock:v34];
      v25 = [*(a1 + 32) _audiogramFromSymbols:*(a1 + 48) recognizedText:v24];

      if (v25)
      {
        goto LABEL_10;
      }
    }
  }

  v40.origin.x = v5;
  v40.origin.y = v7;
  v40.size.width = v9;
  v40.size.height = v11;
  if (CGRectIsEmpty(v40))
  {
    goto LABEL_11;
  }

  v26 = AXLogAudiogram();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24179B000, v26, OS_LOG_TYPE_INFO, "Attempting to crop graph for audiogram text", buf, 2u);
  }

  v27 = [*(a1 + 40) imageByCroppingToRect:{v5, v7, v9, v11}];
  [*(a1 + 40) extent];
  Width = CGRectGetWidth(v41);
  [*(a1 + 40) extent];
  Height = CGRectGetHeight(v42);
  v43.origin.x = v5;
  v43.origin.y = v7;
  v43.size.width = v9;
  v43.size.height = v11;
  v30 = CGRectGetMinX(v43) / Width;
  v44.origin.x = v5;
  v44.origin.y = v7;
  v44.size.width = v9;
  v44.size.height = v11;
  v31 = CGRectGetMinY(v44) / Height;
  v45.origin.x = v5;
  v45.origin.y = v7;
  v45.size.width = v9;
  v45.size.height = v11;
  v32 = CGRectGetWidth(v45) / Width;
  v46.origin.x = v5;
  v46.origin.y = v7;
  v46.size.width = v9;
  v46.size.height = v11;
  v33 = [*(a1 + 32) _textFromAudiogramImage:v27 regionOfInterest:{v30, v31, v32, CGRectGetHeight(v46) / Height}];
  v25 = [*(a1 + 32) _audiogramFromSymbols:*(a1 + 48) recognizedText:v33];

  if (!v25)
  {
LABEL_11:
    v25 = AXLogAudiogram();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __50__AIAudiogramIngestionEngine_audiogramFromImages___block_invoke_244_cold_1();
    }
  }

  else
  {
LABEL_10:
    [*(a1 + 56) addObject:v25];
  }
}

void __50__AIAudiogramIngestionEngine_audiogramFromImages___block_invoke_245(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  [a2 CGRectValue];
  v3 = [*(a1 + 32) _textFromAudiogramImage:*(a1 + 40) regionOfInterest:?];
  [*(a1 + 48) addObjectsFromArray:v3];
  v4 = AXLogAudiogram();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_24179B000, v4, OS_LOG_TYPE_INFO, "Found text from edge crop: %@", &v5, 0xCu);
  }
}

- (id)_audiogramFromSymbols:(id)a3 recognizedText:(id)a4
{
  v6 = a3;
  v7 = [(AIAudiogramIngestionEngine *)self _audiogramMapFromRecognizedText:a4];
  v8 = [(AIAudiogramIngestionEngine *)self _audiogramFromSymbols:v6 onAudiogramMap:v7];

  return v8;
}

- (id)_audiogramFromSymbols:(id)a3 onAudiogramMap:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  v9 = 0;
  if (v7 && v8)
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [getHKUnitClass_1() hertzUnit];
    v11 = [getHKUnitClass_1() decibelHearingLevelUnit];
    v12 = objc_opt_new();
    v39 = v6;
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __67__AIAudiogramIngestionEngine__audiogramFromSymbols_onAudiogramMap___block_invoke;
    v45[3] = &unk_278CEC7F8;
    v45[4] = self;
    v46 = v7;
    v37 = v15;
    v47 = v37;
    v38 = v11;
    v48 = v38;
    v17 = v13;
    v6 = v39;
    v18 = v17;
    v49 = v17;
    v19 = v12;
    v50 = v19;
    v36 = v16;
    v51 = v36;
    v20 = v14;
    v52 = v20;
    [v39 enumerateObjectsUsingBlock:v45];
    v21 = AXLogAudiogram();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = v18;
      _os_log_impl(&dword_24179B000, v21, OS_LOG_TYPE_INFO, "Unsorted results (left): %@", buf, 0xCu);
    }

    v22 = AXLogAudiogram();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = v20;
      _os_log_impl(&dword_24179B000, v22, OS_LOG_TYPE_INFO, "Unsorted results (right): %@", buf, 0xCu);
    }

    v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:&stru_28535F0B0 ascending:1];
    v53 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    [v19 sortUsingDescriptors:v24];

    v25 = AXLogAudiogram();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = v19;
      _os_log_impl(&dword_24179B000, v25, OS_LOG_TYPE_INFO, "Sorted frequencies: %@", buf, 0xCu);
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __67__AIAudiogramIngestionEngine__audiogramFromSymbols_onAudiogramMap___block_invoke_253;
    v40[3] = &unk_278CEC820;
    v26 = v18;
    v41 = v26;
    v27 = v20;
    v42 = v27;
    v28 = v10;
    v43 = v28;
    v29 = v35;
    v44 = v29;
    [v19 enumerateObjectsUsingBlock:v40];
    if ([v29 count])
    {
      HKAudiogramSampleClass = getHKAudiogramSampleClass();
      v31 = [MEMORY[0x277CBEAA8] date];
      v32 = [MEMORY[0x277CBEAA8] date];
      v33 = metadataForHKAudiogramSample();
      v9 = [HKAudiogramSampleClass audiogramSampleWithSensitivityPoints:v29 startDate:v31 endDate:v32 metadata:v33];

      v6 = v39;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void __67__AIAudiogramIngestionEngine__audiogramFromSymbols_onAudiogramMap___block_invoke(id *a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 labels];
  v5 = [v4 firstObject];
  v6 = [v5 identifier];
  v7 = [a1[4] modelLabelLeftEarSymbol];
  if ([v6 isEqualToString:v7])
  {
  }

  else
  {
    v8 = [v3 labels];
    v9 = [v8 firstObject];
    [v9 identifier];
    v11 = v10 = v3;
    v12 = [a1[4] modelLabelRightEarSymbol];
    v31 = [v11 isEqualToString:v12];

    v3 = v10;
    if ((v31 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  [v3 boundingBox];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v13 + v17 * 0.5;
  v22 = v15 + v19 * 0.5;
  v23 = AXLogAudiogram();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [v3 labels];
    v25 = [v24 firstObject];
    v26 = [v25 identifier];
    v51.x = v21;
    v51.y = v22;
    v27 = NSStringFromCGPoint(v51);
    v52.origin.x = v14;
    v52.origin.y = v16;
    v52.size.width = v18;
    v52.size.height = v20;
    v28 = NSStringFromCGRect(v52);
    *buf = 138412802;
    v45 = v26;
    v46 = 2112;
    v47 = v27;
    v48 = 2112;
    v49 = v28;
    _os_log_impl(&dword_24179B000, v23, OS_LOG_TYPE_INFO, "Got %@ center %@ from box %@", buf, 0x20u);
  }

  v29 = [a1[5] frequencyAtPoint:{v21, v22}];
  if ([AIAudiogramValidFrequencies containsObject:v29])
  {
    v30 = [v3 labels];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __67__AIAudiogramIngestionEngine__audiogramFromSymbols_onAudiogramMap___block_invoke_250;
    v32[3] = &unk_278CEC7D0;
    v32[4] = a1[4];
    v33 = a1[6];
    v34 = v29;
    v35 = a1[5];
    v42 = v21;
    v43 = v22;
    v36 = a1[7];
    v37 = a1[8];
    v38 = v3;
    v39 = a1[9];
    v40 = a1[10];
    v41 = a1[11];
    [v30 enumerateObjectsUsingBlock:v32];
  }

LABEL_9:
}

void __67__AIAudiogramIngestionEngine__audiogramFromSymbols_onAudiogramMap___block_invoke_250(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a2;
  [v6 confidence];
  v8 = v7;
  [*(a1 + 32) modelLabelConfidenceThreshold];
  if (v8 >= v9)
  {
    v18 = [v6 identifier];
    v19 = [*(a1 + 32) modelLabelLeftEarSymbol];
    v20 = [v18 isEqualToString:v19];

    if (v20)
    {
      v21 = [*(a1 + 40) objectForKey:*(a1 + 48)];
      [v21 floatValue];
      v23 = v22;

      if (v23 != 0.0 && v8 <= v23)
      {
        goto LABEL_20;
      }

      v25 = [*(a1 + 56) hearingLevelAtPoint:{*(a1 + 112), *(a1 + 120)}];
      [v25 doubleValue];
      v27 = v26;

      v28 = [getHKQuantityClass_0() quantityWithUnit:*(a1 + 64) doubleValue:v27];
      v29 = AXLogAudiogram();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v43 = *(a1 + 48);
        v44 = [*(a1 + 72) objectForKey:v43];
        v45 = [*(a1 + 80) labels];
        v46 = [v45 firstObject];
        [v46 confidence];
        v53 = 138413058;
        v54 = v43;
        v55 = 2112;
        v56 = v44;
        v57 = 2112;
        v58 = v28;
        v59 = 2048;
        v60 = v47;
        _os_log_debug_impl(&dword_24179B000, v29, OS_LOG_TYPE_DEBUG, "New most confident result: %@ Hz left %@ -> %@, confidence %f", &v53, 0x2Au);
      }

      [*(a1 + 72) setObject:v28 forKey:*(a1 + 48)];
      [*(a1 + 88) addObject:*(a1 + 48)];
      v31 = *(a1 + 40);
    }

    else
    {
      v32 = [v6 identifier];
      v33 = [*(a1 + 32) modelLabelRightEarSymbol];
      v34 = [v32 isEqualToString:v33];

      if (!v34)
      {
        goto LABEL_20;
      }

      v35 = [*(a1 + 96) objectForKey:*(a1 + 48)];
      [v35 floatValue];
      v37 = v36;

      if (v37 != 0.0 && v8 <= v37)
      {
        goto LABEL_20;
      }

      v38 = [*(a1 + 56) hearingLevelAtPoint:{*(a1 + 112), *(a1 + 120)}];
      [v38 doubleValue];
      v40 = v39;

      v28 = [getHKQuantityClass_0() quantityWithUnit:*(a1 + 64) doubleValue:v40];
      v41 = AXLogAudiogram();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v48 = *(a1 + 48);
        v49 = [*(a1 + 104) objectForKey:v48];
        v50 = [*(a1 + 80) labels];
        v51 = [v50 firstObject];
        [v51 confidence];
        v53 = 138413058;
        v54 = v48;
        v55 = 2112;
        v56 = v49;
        v57 = 2112;
        v58 = v28;
        v59 = 2048;
        v60 = v52;
        _os_log_debug_impl(&dword_24179B000, v41, OS_LOG_TYPE_DEBUG, "New most confident result: %@ Hz right %@ -> %@, confidence %f", &v53, 0x2Au);
      }

      [*(a1 + 104) setObject:v28 forKey:*(a1 + 48)];
      [*(a1 + 88) addObject:*(a1 + 48)];
      v31 = *(a1 + 96);
    }

    *&v30 = v8;
    v42 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
    [v31 setObject:v42 forKey:*(a1 + 48)];

    goto LABEL_20;
  }

  v10 = AXLogAudiogram();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __67__AIAudiogramIngestionEngine__audiogramFromSymbols_onAudiogramMap___block_invoke_250_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  *a4 = 1;
LABEL_20:
}

void __67__AIAudiogramIngestionEngine__audiogramFromSymbols_onAudiogramMap___block_invoke_253(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = [*(a1 + 40) objectForKey:v4];
  HKQuantityClass_0 = getHKQuantityClass_0();
  v8 = *(a1 + 48);
  [v4 doubleValue];
  v10 = v9;

  v11 = [HKQuantityClass_0 quantityWithUnit:v8 doubleValue:v10];
  v15 = 0;
  v12 = [getHKAudiogramSensitivityPointClass() sensitivityPointWithFrequency:v11 leftEarSensitivity:v5 rightEarSensitivity:v6 error:&v15];
  v13 = v15;
  if (v13)
  {
    v14 = AXLogAudiogram();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __67__AIAudiogramIngestionEngine__audiogramFromSymbols_onAudiogramMap___block_invoke_253_cold_1();
    }
  }

  else
  {
    [*(a1 + 56) addObject:v12];
  }
}

- (id)_combineAudiograms:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 count];
  v5 = AXLogAudiogram();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4 == 1)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "Only one audiogram. No need to combine", buf, 2u);
    }

    v7 = [v3 firstObject];
  }

  else if (v4)
  {
    if (v6)
    {
      *buf = 67109120;
      v35 = v4;
      _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "%i audiograms to combine", buf, 8u);
    }

    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __49__AIAudiogramIngestionEngine__combineAudiograms___block_invoke;
    v29[3] = &unk_278CEC870;
    v11 = v8;
    v30 = v11;
    v12 = v9;
    v31 = v12;
    v13 = v10;
    v32 = v13;
    [v3 enumerateObjectsUsingBlock:v29];
    v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:&stru_28535F0B0 ascending:1];
    v33 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [v11 sortUsingDescriptors:v15];

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __49__AIAudiogramIngestionEngine__combineAudiograms___block_invoke_259;
    v25[3] = &unk_278CEC898;
    v17 = v12;
    v26 = v17;
    v18 = v13;
    v27 = v18;
    v19 = v16;
    v28 = v19;
    [v11 enumerateObjectsUsingBlock:v25];
    if ([v19 count])
    {
      HKAudiogramSampleClass = getHKAudiogramSampleClass();
      v21 = [MEMORY[0x277CBEAA8] date];
      v22 = [MEMORY[0x277CBEAA8] date];
      v23 = metadataForHKAudiogramSample();
      v7 = [HKAudiogramSampleClass audiogramSampleWithSensitivityPoints:v19 startDate:v21 endDate:v22 metadata:v23];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "No audiogram to combine", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

void __49__AIAudiogramIngestionEngine__combineAudiograms___block_invoke(id *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = AXLogAudiogram();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_24179B000, v4, OS_LOG_TYPE_INFO, "Combining audiogram %@", buf, 0xCu);
  }

  v5 = [v3 sensitivityPoints];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__AIAudiogramIngestionEngine__combineAudiograms___block_invoke_256;
  v6[3] = &unk_278CEC848;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  [v5 enumerateObjectsUsingBlock:v6];
}

void __49__AIAudiogramIngestionEngine__combineAudiograms___block_invoke_256(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 frequency];
  [v4 addObject:v5];

  v6 = [v3 leftEarSensitivity];

  if (v6)
  {
    v7 = a1[5];
    v8 = [v3 leftEarSensitivity];
    v9 = [v3 frequency];
    [v7 setObject:v8 forKey:v9];
  }

  v10 = [v3 rightEarSensitivity];

  if (v10)
  {
    v11 = a1[6];
    v12 = [v3 rightEarSensitivity];
    v13 = [v3 frequency];
    [v11 setObject:v12 forKey:v13];
  }

  v14 = AXLogAudiogram();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = a1[4];
    v20 = 138412290;
    v21 = v15;
    _os_log_impl(&dword_24179B000, v14, OS_LOG_TYPE_INFO, "Frequencies: %@", &v20, 0xCu);
  }

  v16 = AXLogAudiogram();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = a1[5];
    v20 = 138412290;
    v21 = v17;
    _os_log_impl(&dword_24179B000, v16, OS_LOG_TYPE_INFO, "leftEarSensitivities: %@", &v20, 0xCu);
  }

  v18 = AXLogAudiogram();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = a1[6];
    v20 = 138412290;
    v21 = v19;
    _os_log_impl(&dword_24179B000, v18, OS_LOG_TYPE_INFO, "rightEarSensitivities: %@", &v20, 0xCu);
  }
}

void __49__AIAudiogramIngestionEngine__combineAudiograms___block_invoke_259(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = [*(a1 + 40) objectForKey:v4];
  v10 = 0;
  v7 = [getHKAudiogramSensitivityPointClass() sensitivityPointWithFrequency:v4 leftEarSensitivity:v5 rightEarSensitivity:v6 error:&v10];

  v8 = v10;
  if (v8)
  {
    v9 = AXLogAudiogram();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __67__AIAudiogramIngestionEngine__audiogramFromSymbols_onAudiogramMap___block_invoke_253_cold_1();
    }
  }

  else
  {
    [*(a1 + 48) addObject:v7];
  }
}

- (id)_audiogramFromImagesV2:(id)a3
{
  v4 = a3;
  [(AIAudiogramIngestionEngine *)self setFailureMode:0];
  v5 = [(AIAudiogramIngestionEngine *)self audiogramPointsFromImages:v4];

  v6 = [(AIAudiogramIngestionEngine *)self _audiogramFromAudiogramPoints:v5];

  return v6;
}

- (id)audiogramPointsFromImages:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __56__AIAudiogramIngestionEngine_audiogramPointsFromImages___block_invoke;
    v14 = &unk_278CEC7A8;
    v15 = self;
    v6 = v5;
    v16 = v6;
    [v4 enumerateObjectsUsingBlock:&v11];
    if (![v6 count])
    {
      v7 = AXLogAudiogram();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [AIAudiogramIngestionEngine audiogramPointsFromImages:];
      }
    }

    v8 = v16;
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __56__AIAudiogramIngestionEngine_audiogramPointsFromImages___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = AXLogAudiogram();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24179B000, v4, OS_LOG_TYPE_DEFAULT, "v2: Starting next image!", buf, 2u);
  }

  v5 = [*(a1 + 32) _propertyOrientationFromOrientation:{objc_msgSend(v3, "imageOrientation")}];
  v6 = [objc_alloc(MEMORY[0x277CBF758]) initWithCGImage:objc_msgSend(v3 options:{"CGImage"), 0}];
  v7 = [v6 imageByApplyingCGOrientation:v5];

  v8 = AXLogAudiogram();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v3 imageOrientation];
    *buf = 134218240;
    v19 = v9;
    v20 = 1024;
    v21 = v5;
    _os_log_impl(&dword_24179B000, v8, OS_LOG_TYPE_INFO, "v2: Orienting image %ld -> %d", buf, 0x12u);
  }

  v10 = [*(a1 + 32) audiogramDetectorResultsFromImage:v3];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__AIAudiogramIngestionEngine_audiogramPointsFromImages___block_invoke_261;
  v14[3] = &unk_278CEC8E8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v15 = v7;
  v16 = v11;
  v17 = v12;
  v13 = v7;
  [v10 enumerateObjectsUsingBlock:v14];
}

void __56__AIAudiogramIngestionEngine_audiogramPointsFromImages___block_invoke_261(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 graph];
  [a1[4] extent];
  [v4 scaledBoxWithSize:{v5, v6}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v89 = 0;
  v90 = &v89;
  v91 = 0x4010000000;
  v92 = "";
  v15 = MEMORY[0x277CBF3A0];
  v16 = *(MEMORY[0x277CBF3A0] + 16);
  v93 = *MEMORY[0x277CBF3A0];
  v94 = v16;
  v17 = [v3 symbols];
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __56__AIAudiogramIngestionEngine_audiogramPointsFromImages___block_invoke_2;
  v88[3] = &unk_278CEC8C0;
  *&v88[5] = v8;
  *&v88[6] = v10;
  *&v88[7] = v12;
  *&v88[8] = v14;
  v88[4] = &v89;
  [v17 enumerateObjectsUsingBlock:v88];

  v18 = objc_opt_new();
  [a1[5] _adjustedRectForVisionCoordinateSpace:a1[4] inImage:{v8, v10, v12, v14}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [a1[5] _adjustedRectForVisionCoordinateSpace:a1[4] inImage:{v90[1].origin.x, v90[1].origin.y, v90[1].size.width, v90[1].size.height}];
  p_x = &v90->origin.x;
  v90[1].origin.x = v28;
  p_x[5] = v29;
  p_x[6] = v30;
  p_x[7] = v31;
  v95.origin.x = v20;
  v95.origin.y = v22;
  v95.size.width = v24;
  v95.size.height = v26;
  Width = CGRectGetWidth(v95);
  v96.origin.x = v20;
  v96.origin.y = v22;
  v96.size.width = v24;
  v96.size.height = v26;
  v33 = CGRectGetHeight(v96) * -0.05;
  v97.origin.x = v20;
  v97.origin.y = v22;
  v97.size.width = v24;
  v97.size.height = v26;
  v98 = CGRectInset(v97, Width * -0.05, v33);
  x = v98.origin.x;
  y = v98.origin.y;
  v36 = v98.size.width;
  height = v98.size.height;
  MinX = CGRectGetMinX(v98);
  v99.origin.x = x;
  v99.origin.y = y;
  v99.size.width = v36;
  v99.size.height = height;
  MinY = CGRectGetMinY(v99);
  [a1[4] extent];
  v39 = CGRectGetWidth(v100);
  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = v36;
  v101.size.height = height;
  v40 = CGRectGetWidth(v101);
  [a1[4] extent];
  v41 = CGRectGetHeight(v102);
  v103.origin.x = x;
  v103.origin.y = y;
  v103.size.width = v36;
  v103.size.height = height;
  v42 = CGRectGetHeight(v103);
  v43 = v90;
  v44 = CGRectGetWidth(v90[1]);
  v45 = CGRectGetHeight(v90[1]) * 0.1;
  v104 = CGRectInset(v43[1], v44 * 0.1, v45);
  v46 = fmax(MinX, 0.0);
  v47 = fmax(MinY, 0.0);
  v48 = fmin(v39 - v46, v40);
  v90[1] = v104;
  v49 = fmin(v41 - v47, v42);
  v104.origin.x = v46;
  v104.origin.y = v47;
  v104.size.width = v48;
  v104.size.height = v49;
  if (!CGRectIsEmpty(v104) && !CGRectIsEmpty(v90[1]))
  {
    v50 = AXLogAudiogram();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24179B000, v50, OS_LOG_TYPE_INFO, "v2: Attempting to crop graph edges for audiogram text", buf, 2u);
    }

    v51 = objc_opt_new();
    v52 = [a1[5] _cropEdgesFromImage:a1[4] graphRect:v46 symbolsRect:{v47, v48, v49, v90[1].origin.x, v90[1].origin.y, v90[1].size.width, v90[1].size.height}];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __56__AIAudiogramIngestionEngine_audiogramPointsFromImages___block_invoke_264;
    v84[3] = &unk_278CEC758;
    v82 = *(a1 + 2);
    v53 = v82.i64[0];
    v85 = vextq_s8(v82, v82, 8uLL);
    v54 = v51;
    v86 = v54;
    [v52 enumerateObjectsUsingBlock:v84];
    [a1[4] extent];
    v82.i64[0] = CGRectGetWidth(v105);
    [a1[4] extent];
    v55 = CGRectGetHeight(v106);
    v107.origin.x = v46;
    v107.origin.y = v47;
    v107.size.width = v48;
    v107.size.height = v49;
    v56 = CGRectGetMinX(v107);
    v108.origin.x = v46;
    v108.origin.y = v47;
    v108.size.width = v48;
    v108.size.height = v49;
    v57 = CGRectGetMinY(v108);
    v109.origin.x = v46;
    v109.origin.y = v47;
    v109.size.width = v48;
    v109.size.height = v49;
    v58 = CGRectGetWidth(v109);
    v110.origin.x = v46;
    v110.origin.y = v47;
    v110.size.width = v48;
    v110.size.height = v49;
    v59 = [a1[5] _textFromAudiogramImage:a1[4] regionOfInterest:{v56 / *v82.i64, v57 / v55, v58 / *v82.i64, CGRectGetHeight(v110) / v55}];
    [v54 addObjectsFromArray:v59];
    v60 = a1[5];
    v61 = [v3 symbols];
    v62 = [v3 graph];
    [v62 box];
    v63 = [v60 _audiogramPointsFromSymbolsV2:v61 inGraphRect:v54 recognizedText:?];

    v18 = v63;
  }

  if (![v18 count])
  {
    v111.origin.x = v46;
    v111.origin.y = v47;
    v111.size.width = v48;
    v111.size.height = v49;
    if (!CGRectIsEmpty(v111))
    {
      v64 = AXLogAudiogram();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24179B000, v64, OS_LOG_TYPE_INFO, "v2: Attempting to crop graph for audiogram text", buf, 2u);
      }

      [a1[4] extent];
      v83 = CGRectGetWidth(v112);
      [a1[4] extent];
      v65 = CGRectGetHeight(v113);
      v114.origin.x = v46;
      v114.origin.y = v47;
      v114.size.width = v48;
      v114.size.height = v49;
      v66 = CGRectGetMinX(v114);
      v115.origin.x = v46;
      v115.origin.y = v47;
      v115.size.width = v48;
      v115.size.height = v49;
      v67 = CGRectGetMinY(v115);
      v116.origin.x = v46;
      v116.origin.y = v47;
      v116.size.width = v48;
      v116.size.height = v49;
      v68 = CGRectGetWidth(v116);
      v117.origin.x = v46;
      v117.origin.y = v47;
      v117.size.width = v48;
      v117.size.height = v49;
      v69 = [a1[5] _textFromAudiogramImage:a1[4] regionOfInterest:{v66 / v83, v67 / v65, v68 / v83, CGRectGetHeight(v117) / v65}];
      v70 = a1[5];
      v71 = [v3 symbols];
      v72 = [v3 graph];
      [v72 box];
      v73 = [v70 _audiogramPointsFromSymbolsV2:v71 inGraphRect:v69 recognizedText:?];

      v18 = v73;
    }
  }

  if (![v18 count])
  {
    v74 = AXLogAudiogram();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24179B000, v74, OS_LOG_TYPE_INFO, "v2: Attempting find audiogram text without cropping", buf, 2u);
    }

    v75 = [a1[5] _textFromAudiogramImage:a1[4] regionOfInterest:{*v15, v15[1], v15[2], v15[3]}];
    v76 = a1[5];
    v77 = [v3 symbols];
    v78 = [v3 graph];
    [v78 box];
    v79 = [v76 _audiogramPointsFromSymbolsV2:v77 inGraphRect:v75 recognizedText:?];

    v18 = v79;
  }

  if ([v18 count])
  {
    [a1[6] addObjectsFromArray:v18];
  }

  else
  {
    v80 = AXLogAudiogram();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      __56__AIAudiogramIngestionEngine_audiogramPointsFromImages___block_invoke_261_cold_1();
    }
  }

  _Block_object_dispose(&v89, 8);
}

void __56__AIAudiogramIngestionEngine_audiogramPointsFromImages___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 scaledBoxWithSize:*(a1 + 56) offset:{*(a1 + 64), *(a1 + 40), *(a1 + 48)}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(*(a1 + 32) + 8);
  if (a3)
  {
    *&v5 = CGRectUnion(*(v13 + 32), *&v6);
    v8 = v14;
    v10 = v15;
    v12 = v16;
    v13 = *(*(a1 + 32) + 8);
  }

  *(v13 + 32) = v5;
  *(v13 + 40) = v8;
  *(v13 + 48) = v10;
  *(v13 + 56) = v12;
}

void __56__AIAudiogramIngestionEngine_audiogramPointsFromImages___block_invoke_264(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  [a2 CGRectValue];
  v3 = [*(a1 + 32) _textFromAudiogramImage:*(a1 + 40) regionOfInterest:?];
  [*(a1 + 48) addObjectsFromArray:v3];
  v4 = AXLogAudiogram();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_24179B000, v4, OS_LOG_TYPE_INFO, "v2: Found text from edge crop: %@", &v5, 0xCu);
  }
}

- (id)audiogramDetectorResultsFromImage:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = -[AIAudiogramIngestionEngine _propertyOrientationFromOrientation:](self, "_propertyOrientationFromOrientation:", [v4 imageOrientation]);
  v7 = [(AIAudiogramIngestionEngine *)self graphModel];
  v8 = [v7 getGraphDetectorResult:objc_msgSend(v4 orientation:{"CGImage"), v6}];

  v9 = AXLogAudiogram();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v24 = [v8 count];
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_24179B000, v9, OS_LOG_TYPE_DEFAULT, "Found %lu graphs for audiogram image: %@", buf, 0x16u);
  }

  if (![v8 count])
  {
    [(AIAudiogramIngestionEngine *)self setFailureMode:1];
    v10 = AXLogAudiogram();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24179B000, v10, OS_LOG_TYPE_INFO, "Adding full-size pseudo-graph to proceed with symbol detection", buf, 2u);
    }

    v11 = +[_TtC18AudiogramIngestion28AudiogramGraphDetectorResult defaultResult];
    v22 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];

    v8 = v12;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__AIAudiogramIngestionEngine_audiogramDetectorResultsFromImage___block_invoke;
  v18[3] = &unk_278CEC910;
  v18[4] = self;
  v19 = v4;
  v21 = v6;
  v13 = v5;
  v20 = v13;
  v14 = v4;
  [v8 enumerateObjectsUsingBlock:v18];
  v15 = v20;
  v16 = v13;

  return v13;
}

void __64__AIAudiogramIngestionEngine_audiogramDetectorResultsFromImage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) symbolModel];
  v7 = [v6 getSymbolDetectorResult:objc_msgSend(*(a1 + 40) orientation:"CGImage") in:{*(a1 + 56), v5}];

  if ([v7 count] <= 3)
  {
    [*(a1 + 32) setFailureMode:2];
  }

  v8 = AXLogAudiogram();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218498;
    v12 = [v7 count];
    v13 = 2048;
    v14 = a3;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_24179B000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu symbols for audiogram graph %lu: %@", &v11, 0x20u);
  }

  v9 = *(a1 + 48);
  v10 = [[_TtC18AudiogramIngestion23AudiogramDetectorResult alloc] initWithGraph:v5 symbols:v7];
  [v9 addObject:v10];
}

- (CGRect)_adjustedRectForVisionCoordinateSpace:(CGRect)a3 inImage:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [a4 extent];
  v8 = CGRectGetHeight(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MinX = CGRectGetMinX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v10 = v8 - CGRectGetMaxY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v11 = CGRectGetWidth(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = CGRectGetHeight(v20);
  v13 = MinX;
  v14 = v10;
  v15 = v11;
  result.size.height = v12;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)_audiogramPointsFromSymbolsV2:(id)a3 inGraphRect:(CGRect)a4 recognizedText:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = [(AIAudiogramIngestionEngine *)self _audiogramMapFromRecognizedText:a5];
  v13 = [(AIAudiogramIngestionEngine *)self _audiogramPointsFromSymbolsV2:v11 inGraphRect:v12 onAudiogramMap:x, y, width, height];

  return v13;
}

- (id)_audiogramPointsFromSymbolsV2:(id)a3 inGraphRect:(CGRect)a4 onAudiogramMap:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v44 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = [v11 count];
  if (!v12 || !v13)
  {
    if (v12)
    {
      v19 = 2;
    }

    else
    {
      v19 = 3;
    }

    [(AIAudiogramIngestionEngine *)self setFailureMode:v19];
    v20 = 0;
    goto LABEL_20;
  }

  v14 = [v12 frequencies];
  v15 = [v14 values];
  if ([v15 count] <= 3)
  {

    goto LABEL_11;
  }

  v16 = [v12 hearingLevels];
  v17 = [v16 values];
  v18 = [v17 count];

  if (v18 <= 3)
  {
LABEL_11:
    [(AIAudiogramIngestionEngine *)self setFailureMode:3];
  }

  v21 = [v12 hearingLevelSlope];
  [v21 doubleValue];
  if (fabs(v22) < 10.0)
  {
  }

  else
  {
    v23 = [v12 frequencySlope];
    [v23 doubleValue];
    v25 = fabs(v24);

    if (v25 <= 0.1)
    {
      goto LABEL_17;
    }
  }

  [(AIAudiogramIngestionEngine *)self setFailureMode:4];
LABEL_17:
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __87__AIAudiogramIngestionEngine__audiogramPointsFromSymbolsV2_inGraphRect_onAudiogramMap___block_invoke;
  v35 = &unk_278CEC938;
  v38 = x;
  v39 = y;
  v40 = width;
  v41 = height;
  v36 = v12;
  v27 = v26;
  v37 = v27;
  [v11 enumerateObjectsUsingBlock:&v32];
  v28 = AXLogAudiogram();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v27 count];
    *buf = 134217984;
    v43 = v29;
    _os_log_impl(&dword_24179B000, v28, OS_LOG_TYPE_DEFAULT, "Found db + frequency values for %lu points", buf, 0xCu);
  }

  v30 = v37;
  v20 = v27;

LABEL_20:

  return v20;
}

void __87__AIAudiogramIngestionEngine__audiogramPointsFromSymbolsV2_inGraphRect_onAudiogramMap___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 scaledBoxWithSize:*(a1 + 64) offset:{*(a1 + 72), *(a1 + 48), *(a1 + 56)}];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v4 + v8 * 0.5;
  v13 = 1.0 - (v6 + v10 * 0.5);
  v14 = AXLogAudiogram();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v3 labelName];
    v38.x = v12;
    v38.y = v13;
    v16 = NSStringFromCGPoint(v38);
    v39.origin.x = v5;
    v39.origin.y = v7;
    v39.size.width = v9;
    v39.size.height = v11;
    v17 = NSStringFromCGRect(v39);
    v31 = 138412802;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
    _os_log_impl(&dword_24179B000, v14, OS_LOG_TYPE_INFO, "Got %@ center %@ from box %@", &v31, 0x20u);
  }

  v18 = [*(a1 + 32) frequencyAtPoint:{v12, v13}];
  if ([AIAudiogramValidFrequencies containsObject:v18])
  {
    v19 = [*(a1 + 32) hearingLevelAtPoint:{v12, v13}];
    [v19 doubleValue];
    if (v20 <= 120.0)
    {
      [v19 doubleValue];
      if (v21 >= -20.0)
      {
        [v3 confidence];
        v23 = v22;
        v24 = *(a1 + 40);
        v25 = [AIAudiogramPoint alloc];
        v26 = [v3 labelName];
        [v18 doubleValue];
        v28 = v27;
        [v19 doubleValue];
        v30 = [(AIAudiogramPoint *)v25 initWithSymbolName:v26 frequency:v28 dbValue:v29 confidence:v23];
        [v24 addObject:v30];
      }
    }
  }
}

- (id)_audiogramFromAudiogramPoints:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v37 = objc_alloc_init(v4);
  v38 = [getHKUnitClass_1() hertzUnit];
  v6 = [getHKUnitClass_1() decibelHearingLevelUnit];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __60__AIAudiogramIngestionEngine__audiogramFromAudiogramPoints___block_invoke;
  v46[3] = &unk_278CEC960;
  v46[4] = self;
  v14 = v10;
  v47 = v14;
  v36 = v6;
  v48 = v36;
  v15 = v8;
  v49 = v15;
  v16 = v7;
  v50 = v16;
  v17 = v12;
  v51 = v17;
  v18 = v11;
  v52 = v18;
  v19 = v9;
  v53 = v19;
  v20 = v13;
  v54 = v20;
  [v5 enumerateObjectsUsingBlock:v46];

  v21 = AXLogAudiogram();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v57 = v15;
    _os_log_impl(&dword_24179B000, v21, OS_LOG_TYPE_INFO, "Unsorted results (left): %@", buf, 0xCu);
  }

  v22 = AXLogAudiogram();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v57 = v19;
    _os_log_impl(&dword_24179B000, v22, OS_LOG_TYPE_INFO, "Unsorted results (right): %@", buf, 0xCu);
  }

  v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:&stru_28535F0B0 ascending:1];
  v55 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  [v16 sortUsingDescriptors:v24];

  v25 = AXLogAudiogram();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v57 = v16;
    _os_log_impl(&dword_24179B000, v25, OS_LOG_TYPE_INFO, "Sorted frequencies: %@", buf, 0xCu);
  }

  if ([v16 containsObject:&unk_285365668])
  {
    v26 = v37;
    if ([v16 containsObject:&unk_285365680] && objc_msgSend(v16, "containsObject:", &unk_285365698) && objc_msgSend(v16, "containsObject:", &unk_2853656B0))
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __60__AIAudiogramIngestionEngine__audiogramFromAudiogramPoints___block_invoke_279;
      v39[3] = &unk_278CEC988;
      v40 = v15;
      v41 = v19;
      v42 = v38;
      v43 = v17;
      v44 = v20;
      v27 = v37;
      v45 = v27;
      [v16 enumerateObjectsUsingBlock:v39];
      if ([v27 count])
      {
        v28 = AXLogAudiogram();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v27 count];
          *buf = 134217984;
          v57 = v29;
          _os_log_impl(&dword_24179B000, v28, OS_LOG_TYPE_DEFAULT, "Writing %lu points to new audiogram sample", buf, 0xCu);
        }

        HKAudiogramSampleClass = getHKAudiogramSampleClass();
        v35 = [MEMORY[0x277CBEAA8] date];
        v33 = [MEMORY[0x277CBEAA8] date];
        v30 = metadataForHKAudiogramSample();
        v31 = [HKAudiogramSampleClass audiogramSampleWithSensitivityPoints:v27 startDate:v35 endDate:v33 metadata:v30];
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
    v26 = v37;
  }

  return v31;
}

void __60__AIAudiogramIngestionEngine__audiogramFromAudiogramPoints___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEB98];
  v5 = [*(a1 + 32) leftEarAirConductionUnmaskedSymbol];
  v6 = [*(a1 + 32) leftEarAirConductionMaskedSymbol];
  v7 = [v4 setWithObjects:{v5, v6, 0}];

  v8 = MEMORY[0x277CBEB98];
  v9 = [*(a1 + 32) rightEarAirConductionUnmaskedSymbol];
  v10 = [*(a1 + 32) rightEarAirConductionMaskedSymbol];
  v11 = [v8 setWithObjects:{v9, v10, 0}];

  v12 = [v3 symbolName];
  if ([v7 containsObject:v12])
  {

    goto LABEL_4;
  }

  v13 = [v3 symbolName];
  v14 = [v11 containsObject:v13];

  if (v14)
  {
LABEL_4:
    v15 = MEMORY[0x277CCABB0];
    [v3 frequency];
    v16 = [v15 numberWithDouble:?];
    [v3 dbValue];
    v18 = v17;
    [v3 confidence];
    v20 = v19;
    v21 = [v3 symbolName];
    v22 = [v7 containsObject:v21];

    if (v22)
    {
      v23 = [*(a1 + 40) objectForKey:v16];
      [v23 doubleValue];
      v25 = v24;

      if (v25 != 0.0 && v20 <= v25)
      {
        goto LABEL_17;
      }

      v26 = [getHKQuantityClass_0() quantityWithUnit:*(a1 + 48) doubleValue:v18];
      v27 = AXLogAudiogram();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v45 = [*(a1 + 56) objectForKey:v16];
        *buf = 138413058;
        v49 = v16;
        v50 = 2112;
        v51 = v45;
        v52 = 2112;
        v53 = v26;
        v54 = 2048;
        v55 = v20;
        _os_log_debug_impl(&dword_24179B000, v27, OS_LOG_TYPE_DEBUG, "New most confident result: %@ Hz left %@ -> %@, confidence %f", buf, 0x2Au);
      }

      v47 = v26;
      [*(a1 + 56) setObject:v26 forKey:v16];
      [*(a1 + 64) addObject:v16];
      v28 = *(a1 + 40);
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
      [v28 setObject:v29 forKey:v16];

      v30 = [v3 symbolName];
      v31 = [*(a1 + 32) leftEarAirConductionMaskedSymbol];
      v32 = [v30 isEqualToString:v31];
      v33 = 72;
    }

    else
    {
      v34 = [v3 symbolName];
      v35 = [v11 containsObject:v34];

      if (!v35)
      {
        goto LABEL_17;
      }

      v36 = [*(a1 + 80) objectForKey:v16];
      [v36 doubleValue];
      v38 = v37;

      if (v38 != 0.0 && v20 <= v38)
      {
        goto LABEL_17;
      }

      v39 = [getHKQuantityClass_0() quantityWithUnit:*(a1 + 48) doubleValue:v18];
      v40 = AXLogAudiogram();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v46 = [*(a1 + 88) objectForKey:v16];
        *buf = 138413058;
        v49 = v16;
        v50 = 2112;
        v51 = v46;
        v52 = 2112;
        v53 = v39;
        v54 = 2048;
        v55 = v20;
        _os_log_debug_impl(&dword_24179B000, v40, OS_LOG_TYPE_DEBUG, "New most confident result: %@ Hz right %@ -> %@, confidence %f", buf, 0x2Au);
      }

      v47 = v39;
      [*(a1 + 88) setObject:v39 forKey:v16];
      [*(a1 + 64) addObject:v16];
      v41 = *(a1 + 80);
      v42 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
      [v41 setObject:v42 forKey:v16];

      v30 = [v3 symbolName];
      v31 = [*(a1 + 32) rightEarAirConductionMaskedSymbol];
      v32 = [v30 isEqualToString:v31];
      v33 = 96;
    }

    v43 = *(a1 + v33);
    v44 = [MEMORY[0x277CCABB0] numberWithBool:v32];
    [v43 setObject:v44 forKey:v16];

LABEL_17:
  }
}

void __60__AIAudiogramIngestionEngine__audiogramFromAudiogramPoints___block_invoke_279(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = [*(a1 + 40) objectForKey:v4];
  HKQuantityClass_0 = getHKQuantityClass_0();
  v8 = *(a1 + 48);
  [v4 doubleValue];
  v9 = [HKQuantityClass_0 quantityWithUnit:v8 doubleValue:?];
  v10 = [*(a1 + 56) objectForKey:v4];
  v11 = [v10 BOOLValue];

  v12 = [*(a1 + 64) objectForKey:v4];

  v13 = [v12 BOOLValue];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v5)
  {
    v16 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v24 = 0;
  v15 = [objc_alloc(getHKAudiogramSensitivityTestClass_0()) initWithSensitivity:v5 type:0 masked:v11 side:0 clampingRange:0 error:&v24];
  v16 = v24;
  [v14 addObject:v15];

  if (v6)
  {
LABEL_3:
    v23 = v16;
    v17 = [objc_alloc(getHKAudiogramSensitivityTestClass_0()) initWithSensitivity:v6 type:0 masked:v13 side:1 clampingRange:0 error:&v23];
    v18 = v23;

    [v14 addObject:v17];
    v16 = v18;
  }

LABEL_4:
  v22 = v16;
  v19 = [getHKAudiogramSensitivityPointClass() sensitivityPointWithFrequency:v9 tests:v14 error:&v22];
  v20 = v22;

  if (v20 || !v19)
  {
    v21 = AXLogAudiogram();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __67__AIAudiogramIngestionEngine__audiogramFromSymbols_onAudiogramMap___block_invoke_253_cold_1();
    }
  }

  else
  {
    [*(a1 + 72) addObject:v19];
  }
}

- (void)_setAudiogramAxisError:(unint64_t)a3 onError:(id *)a4
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (a3 >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown error: %d", a4, a3];
  }

  else
  {
    v5 = off_278CECAB0[a3];
    if (a4)
    {
      v6 = MEMORY[0x277CCA9B8];
      v10[0] = *MEMORY[0x277CCA450];
      v10[1] = @"AIAudiogramAxisErrorKey";
      v11[0] = v5;
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      v11[1] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
      *a4 = [v6 errorWithDomain:@"AudiogramIngestion" code:0 userInfo:v8];
    }

    else
    {
      v9 = AXLogAudiogram();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AIAudiogramIngestionEngine _setAudiogramAxisError:onError:];
      }
    }
  }
}

- (id)_sortAndRemoveInvalidAxisValues:(id)a3 forAxis:(unint64_t)a4 error:(id *)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 count];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __76__AIAudiogramIngestionEngine__sortAndRemoveInvalidAxisValues_forAxis_error___block_invoke;
  v71[3] = &__block_descriptor_40_e47_q24__0__AIRecognizedText_8__AIRecognizedText_16l;
  v71[4] = a4;
  v8 = [v6 sortedArrayUsingComparator:v71];

  v9 = AXLogAudiogram();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AIAudiogramIngestionEngine _sortAndRemoveInvalidAxisValues:forAxis:error:];
  }

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __76__AIAudiogramIngestionEngine__sortAndRemoveInvalidAxisValues_forAxis_error___block_invoke_299;
  v68[3] = &unk_278CEC9D0;
  v70 = v7;
  v69 = v8;
  v10 = [v8 ax_filteredArrayUsingBlock:v68];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __76__AIAudiogramIngestionEngine__sortAndRemoveInvalidAxisValues_forAxis_error___block_invoke_2;
  v67[3] = &__block_descriptor_40_e33_B32__0__AIRecognizedText_8Q16_B24l;
  v67[4] = a4;
  v11 = [v10 ax_filteredArrayUsingBlock:v67];

  v12 = AXLogAudiogram();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [AIAudiogramIngestionEngine _sortAndRemoveInvalidAxisValues:forAxis:error:];
  }

  if ([v11 count] > 2)
  {
    v14 = [(AIAudiogramIngestionEngine *)self _valueDifferencesForValues:v11 stepDistance:a4 forAxis:0.1];
    v15 = AXLogAudiogram();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [AIAudiogramIngestionEngine _sortAndRemoveInvalidAxisValues:forAxis:error:];
    }

    v64 = 0;
    v65[0] = &v64;
    v65[1] = 0x3032000000;
    v65[2] = __Block_byref_object_copy__2;
    v65[3] = __Block_byref_object_dispose__2;
    v66 = 0;
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __76__AIAudiogramIngestionEngine__sortAndRemoveInvalidAxisValues_forAxis_error___block_invoke_301;
    v60[3] = &unk_278CECA40;
    v16 = v14;
    v62 = &v64;
    v63 = 0x3FC999999999999ALL;
    v61 = v16;
    [v16 enumerateObjectsUsingBlock:v60];
    v54 = v16;
    v17 = AXLogAudiogram();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(AIAudiogramIngestionEngine *)v65 _sortAndRemoveInvalidAxisValues:v17 forAxis:v18 error:v19, v20, v21, v22, v23];
    }

    [(AIAudiogramIngestionEngine *)self _meanFromNumbers:*(v65[0] + 40)];
    v25 = v24;
    if ((a4 != 1 || v24 >= 0.0) && (a4 || v24 >= 1.0))
    {
      v27 = 0;
      v28 = 4;
      do
      {
        v29 = [(AIAudiogramIngestionEngine *)self _validMapForPointPairs:v11 stepDistance:a4 forValueDifference:0.1 forAxis:v25, v54];
        v30 = AXLogAudiogram();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v73 = v11;
          _os_log_impl(&dword_24179B000, v30, OS_LOG_TYPE_INFO, "Pre-clean values: %@", buf, 0xCu);
        }

        v31 = AXLogAudiogram();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v73 = v29;
          _os_log_impl(&dword_24179B000, v31, OS_LOG_TYPE_INFO, "Pre-clean valid point map: %@", buf, 0xCu);
        }

        v32 = [(AIAudiogramIngestionEngine *)self _validPointsFromMap:v29 forValues:v11];

        v33 = [(AIAudiogramIngestionEngine *)self _validMapForPointPairs:v32 stepDistance:a4 forValueDifference:0.1 forAxis:v25];

        v34 = AXLogAudiogram();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v73 = v32;
          _os_log_impl(&dword_24179B000, v34, OS_LOG_TYPE_INFO, "Post-clean values: %@", buf, 0xCu);
        }

        v35 = AXLogAudiogram();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v73 = v33;
          _os_log_impl(&dword_24179B000, v35, OS_LOG_TYPE_INFO, "Post-clean valid point map: %@", buf, 0xCu);
        }

        v36 = [v29 isEqualToArray:v33];
        if (v28)
        {
          v37 = v36;
        }

        else
        {
          v37 = 1;
        }

        --v28;
        v11 = v32;
        v27 = v33;
      }

      while (v37 != 1);
      if ([v33 ax_containsObjectUsingBlock:&__block_literal_global_306])
      {
        v38 = AXLogAudiogram();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_24179B000, v38, OS_LOG_TYPE_INFO, "Could not validate all values after multiple tries. Group is not valid, searching for largest valid section..", buf, 2u);
        }

        v39 = 0;
        v40 = -1;
        v41 = -1;
        v42 = -1;
        v43 = -1;
        while ([v33 count] > v39)
        {
          v44 = [v33 objectAtIndexedSubscript:v39];
          v45 = [v44 integerValue] == 1;

          if (v43 - v42 <= v41 - v40)
          {
            v46 = v40;
          }

          else
          {
            v46 = v42;
          }

          if (v43 - v42 <= v41 - v40)
          {
            v47 = v41;
          }

          else
          {
            v47 = v43;
          }

          if (v42 == -1)
          {
            v48 = v39;
          }

          else
          {
            v48 = v42;
          }

          if (v45)
          {
            v42 = v48;
          }

          else
          {
            v40 = v46;
            v41 = v47;
            v42 = -1;
          }

          if (v45)
          {
            v43 = v39;
          }

          else
          {
            v43 = -1;
          }

          ++v39;
        }

        if (v43 - v42 <= v41 - v40)
        {
          v49 = v40;
        }

        else
        {
          v49 = v42;
        }

        if (v43 - v42 <= v41 - v40)
        {
          v50 = v41;
        }

        else
        {
          v50 = v43;
        }

        v51 = AXLogAudiogram();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *v73 = v49;
          *&v73[4] = 1024;
          *&v73[6] = v50;
          _os_log_impl(&dword_24179B000, v51, OS_LOG_TYPE_INFO, "Largest valid section is from %i to %i", buf, 0xEu);
        }

        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __76__AIAudiogramIngestionEngine__sortAndRemoveInvalidAxisValues_forAxis_error___block_invoke_307;
        v57[3] = &__block_descriptor_40_e33_B32__0__AIRecognizedText_8Q16_B24l;
        v58 = v49;
        v59 = v50;
        v11 = [v32 ax_filteredArrayUsingBlock:v57];
      }

      else
      {
        v11 = v32;
      }

      if ([v11 count] > 1)
      {
        v13 = v11;
      }

      else
      {
        v52 = AXLogAudiogram();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_24179B000, v52, OS_LOG_TYPE_INFO, "Could not validate enough values. Group is not valid", buf, 2u);
        }

        [(AIAudiogramIngestionEngine *)self _setAudiogramAxisError:2 onError:a5];
        v13 = 0;
      }
    }

    else
    {
      v26 = AXLogAudiogram();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v73 = v11;
        _os_log_impl(&dword_24179B000, v26, OS_LOG_TYPE_INFO, "Most frequently occuring value was less than 0 or 1 indicating the set is not increasing and not valid: %@", buf, 0xCu);
      }

      [(AIAudiogramIngestionEngine *)self _setAudiogramAxisError:1 onError:a5, v54];
      v13 = 0;
    }

    _Block_object_dispose(&v64, 8);
  }

  else
  {
    [(AIAudiogramIngestionEngine *)self _setAudiogramAxisError:0 onError:a5];
    v13 = 0;
  }

  return v13;
}

BOOL __76__AIAudiogramIngestionEngine__sortAndRemoveInvalidAxisValues_forAxis_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 center];
  v7 = v6;
  v9 = v8;
  [v5 center];
  v11 = v10;
  v13 = v12;

  if (v4)
  {
    return v9 < v13;
  }

  else
  {
    return v7 > v11;
  }
}

BOOL __76__AIAudiogramIngestionEngine__sortAndRemoveInvalidAxisValues_forAxis_error___block_invoke_299(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (*(a1 + 40) - 1 <= a3)
  {
    v16 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndex:a3 + 1];
    v7 = [v5 numericalValue];
    v8 = [v6 numericalValue];
    if ([v7 isEqualToNumber:v8] && (objc_msgSend(v5, "center"), v10 = v9, objc_msgSend(v6, "center"), vabdd_f64(v10, v11) < 0.02))
    {
      [v5 center];
      v13 = v12;
      [v6 center];
      v15 = vabdd_f64(v13, v14);

      v16 = v15 >= 0.02;
    }

    else
    {

      v16 = 1;
    }
  }

  return v16;
}

uint64_t __76__AIAudiogramIngestionEngine__sortAndRemoveInvalidAxisValues_forAxis_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 numericalValue];
  [v3 doubleValue];
  v5 = v4;

  v6 = *(a1 + 32);
  if (v6 == 1)
  {
    if (v5 >= -20.0 && v5 <= 120.0)
    {
      return 1;
    }
  }

  else
  {
    if (v6)
    {
      return 1;
    }

    v7 = AIAudiogramValidFrequencies;
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
    LOBYTE(v7) = [v7 containsObject:v8];

    if (v7)
    {
      return 1;
    }
  }

  return 0;
}

void __76__AIAudiogramIngestionEngine__sortAndRemoveInvalidAxisValues_forAxis_error___block_invoke_301(void *a1, void *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v20[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v7 = [v6 mutableCopy];

  v8 = a1[4];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __76__AIAudiogramIngestionEngine__sortAndRemoveInvalidAxisValues_forAxis_error___block_invoke_2_302;
  v15 = &unk_278CECA18;
  v18 = a3;
  v9 = v5;
  v16 = v9;
  v19 = a1[6];
  v10 = v7;
  v17 = v10;
  [v8 enumerateObjectsUsingBlock:&v12];
  v11 = [*(*(a1[5] + 8) + 40) count];
  if (v11 < [v10 count])
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v7);
  }
}

uint64_t __76__AIAudiogramIngestionEngine__sortAndRemoveInvalidAxisValues_forAxis_error___block_invoke_2_302(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 48) != a3)
  {
    v13 = v5;
    [*(a1 + 32) doubleValue];
    v8 = v7;
    [v13 doubleValue];
    v10 = vabdd_f64(v8, v9);
    v5 = [*(a1 + 32) doubleValue];
    v6 = v13;
    if (v10 < v11 * *(a1 + 56))
    {
      v5 = [*(a1 + 40) addObject:v13];
      v6 = v13;
    }
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

- (id)_valueDifferencesForValues:(id)a3 stepDistance:(double)a4 forAxis:(unint64_t)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 count];
  v9 = objc_opt_new();
  v11 = v8 - 1;
  if (v11 >= 1)
  {
    v12 = 0;
    *&v10 = 138413058;
    v34 = v10;
    do
    {
      v13 = [v7 objectAtIndex:{v12, v34}];
      v14 = [v7 objectAtIndex:++v12];
      v15 = [v14 numericalValue];
      v16 = v15;
      if (a5 == 1)
      {
        v17 = [v15 integerValue];
        v18 = [v13 numericalValue];
        v19 = (v17 - [v18 integerValue]);

        [v13 center];
        v21 = v20;
        [v14 center];
        v23 = v21 - v22;
      }

      else
      {
        [v15 doubleValue];
        v25 = v24;
        v26 = [v13 numericalValue];
        [v26 doubleValue];
        v19 = v25 / v27;

        [v14 center];
        v29 = v28;
        [v13 center];
        v23 = v29 - v30;
      }

      v31 = [MEMORY[0x277CCABB0] numberWithDouble:v19 / (v23 / a4)];
      v32 = AXLogAudiogram();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = v34;
        v36 = v31;
        v37 = 2048;
        v38 = v23;
        v39 = 2048;
        v40 = v23 / a4;
        v41 = 2048;
        v42 = v19;
        _os_log_debug_impl(&dword_24179B000, v32, OS_LOG_TYPE_DEBUG, "Step value difference: %@ distance: %f distance factor: %f original val diff: %f", buf, 0x2Au);
      }

      [v9 addObject:v31];
    }

    while (v11 != v12);
  }

  return v9;
}

- (id)_validMapForPointPairs:(id)a3 stepDistance:(double)a4 forValueDifference:(double)a5 forAxis:(unint64_t)a6
{
  v10 = a3;
  v11 = [v10 count];
  v12 = objc_opt_new();
  v13 = v11 - 1;
  if (v13 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = [v10 objectAtIndex:v14];
      v16 = [v10 objectAtIndex:++v14];
      v17 = [(AIAudiogramIngestionEngine *)self _isValidObject:v15 toObject:v16 withValueDifference:a6 stepDistance:a5 forAxis:a4];
      v18 = [MEMORY[0x277CCABB0] numberWithBool:v17];
      [v12 addObject:v18];
    }

    while (v13 != v14);
  }

  return v12;
}

- (id)_validPointsFromMap:(id)a3 forValues:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [v5 count];
  v10 = v8;
  if (v8 >= 1)
  {
    v11 = 0;
    v12 = ((v8 << 32) - 0x100000000) >> 32;
    *&v9 = 138412546;
    v26 = v9;
    v27 = v7;
    do
    {
      v13 = [v5 objectAtIndex:{v11, v26}];
      v14 = [v13 BOOLValue];

      if (v12 == v11)
      {
        if (v14)
        {
          v15 = [v6 objectAtIndex:v12 + 1];
          [v7 addObject:v15];
          v16 = AXLogAudiogram();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            goto LABEL_22;
          }

          v17 = [v15 numericalValue];
          *buf = 138412290;
          v29 = v17;
          _os_log_impl(&dword_24179B000, v16, OS_LOG_TYPE_INFO, "pairA valid. Add %@", buf, 0xCu);
LABEL_14:

          goto LABEL_22;
        }
      }

      else
      {
        v18 = [v5 objectAtIndex:v11 + 1];
        v19 = [v18 BOOLValue];

        if (v11)
        {
          if (v19)
          {
            v15 = [v6 objectAtIndex:v11 + 1];
            [v7 addObject:v15];
            v16 = AXLogAudiogram();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              goto LABEL_22;
            }

LABEL_20:
            v22 = [v15 numericalValue];
            *buf = 138412290;
            v29 = v22;
            v23 = v16;
            v24 = "pairB valid. Add %@";
LABEL_21:
            _os_log_impl(&dword_24179B000, v23, OS_LOG_TYPE_INFO, v24, buf, 0xCu);

            goto LABEL_22;
          }

          if (v14)
          {
            v15 = [v6 objectAtIndex:v11 + 1];
            [v7 addObject:v15];
            v16 = AXLogAudiogram();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              goto LABEL_22;
            }

            v22 = [v15 numericalValue];
            *buf = 138412290;
            v29 = v22;
            v23 = v16;
            v24 = "pairA valid. Add %@";
            goto LABEL_21;
          }
        }

        else
        {
          if (v14)
          {
            v15 = [v6 objectAtIndex:0];
            v16 = [v6 objectAtIndex:1];
            [v7 addObject:v15];
            [v7 addObject:v16];
            v17 = AXLogAudiogram();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v20 = [v15 numericalValue];
              v21 = [v16 numericalValue];
              *buf = v26;
              v29 = v20;
              v30 = 2112;
              v31 = v21;
              _os_log_impl(&dword_24179B000, v17, OS_LOG_TYPE_INFO, "pairA valid. Add %@, %@", buf, 0x16u);

              v7 = v27;
            }

            goto LABEL_14;
          }

          if (v19)
          {
            v15 = [v6 objectAtIndex:1];
            [v7 addObject:v15];
            v16 = AXLogAudiogram();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              goto LABEL_20;
            }

LABEL_22:
          }
        }
      }

      ++v11;
    }

    while (v10 != v11);
  }

  return v7;
}

- (BOOL)_isValidObject:(id)a3 toObject:(id)a4 withValueDifference:(double)a5 stepDistance:(double)a6 forAxis:(unint64_t)a7
{
  v68 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (a7 == 1)
  {
    [v11 center];
    v15 = v14;
    [v13 center];
    v17 = v15 - v16;
  }

  else
  {
    [v12 center];
    v19 = v18;
    [v11 center];
    v17 = v19 - v20;
  }

  v21 = v17 / a6;
  v22 = v21 * a5;
  v23 = AXLogAudiogram();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v56 = [v11 numericalValue];
    v57 = [v13 numericalValue];
    v58 = 138413314;
    v59 = v56;
    v60 = 2112;
    v61 = v57;
    v62 = 2048;
    v63 = v17;
    v64 = 2048;
    v65 = v21;
    v66 = 2048;
    v67 = v22;
    _os_log_debug_impl(&dword_24179B000, v23, OS_LOG_TYPE_DEBUG, "Pair (%@, %@), distance: %f distance factor: %f adjusted target value difference: %f", &v58, 0x34u);
  }

  v24 = [v13 numericalValue];
  v25 = v24;
  if (a7 == 1)
  {
    v26 = [v24 integerValue];
    v27 = [v11 numericalValue];
    v28 = (v26 - [v27 integerValue]);

    v29 = v28 / v22;
    v30 = AXLogAudiogram();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [(AIAudiogramIngestionEngine *)v30 _isValidObject:v31 toObject:v32 withValueDifference:v33 stepDistance:v34 forAxis:v35, v36, v37];
    }

    v38 = v29 > 0.5;
    v39 = 1.5;
  }

  else
  {
    [v24 doubleValue];
    v41 = v40;
    v42 = [v11 numericalValue];
    [v42 doubleValue];
    v44 = v41 / v43;

    if (v44 <= 1.0)
    {
      v45 = 0;
      goto LABEL_18;
    }

    v46 = log(v44);
    v29 = fabs(v46 / log(v22));
    v47 = AXLogAudiogram();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [(AIAudiogramIngestionEngine *)v47 _isValidObject:v48 toObject:v49 withValueDifference:v50 stepDistance:v51 forAxis:v52, v53, v54];
    }

    v38 = v29 > 0.1;
    v39 = 8.0;
  }

  v45 = v29 < v39 && v38;
LABEL_18:

  return v45;
}

- (double)_stddevFromNumbers:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9C0];
  v4 = [MEMORY[0x277CCA9C0] expressionForConstantValue:a3];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [v3 expressionForFunction:@"stddev:" arguments:v5];

  v7 = [v6 expressionValueWithObject:0 context:0];
  [v7 doubleValue];
  v9 = v8;

  return v9;
}

- (double)_meanFromNumbers:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9C0];
  v4 = [MEMORY[0x277CCA9C0] expressionForConstantValue:a3];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [v3 expressionForFunction:@"average:" arguments:v5];

  v7 = [v6 expressionValueWithObject:0 context:0];
  [v7 doubleValue];
  v9 = v8;

  return v9;
}

- (double)_zScoreFromNumber:(double)a3 mean:(double)a4 stddev:(double)a5
{
  result = 0.0;
  if (a5 != 0.0)
  {
    return (a3 - a4) / a5;
  }

  return result;
}

- (unsigned)_propertyOrientationFromOrientation:(int64_t)a3
{
  if (a3 < 8)
  {
    return dword_2417E8350[a3];
  }

  v4 = AXLogAudiogram();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [AIAudiogramIngestionEngine _propertyOrientationFromOrientation:];
  }

  return 1;
}

- (AIAudiogramIngestionEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_loadModelFromAssetPath:assetProperties:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_loadModelFromAssetPath:assetProperties:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_loadModelFromAssetPath:assetProperties:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_loadV2ModelFromAssetPath:assetProperties:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_loadV2ModelFromAssetPath:assetProperties:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)modelDidUpdate:assetProperties:assetVersion:withError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_textFromAudiogramImage:regionOfInterest:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_observationsFromCIImage:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_observationsFromCIImage:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__AIAudiogramIngestionEngine__formatNumbersFromRecognizedText___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)audiogramFromImages:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__AIAudiogramIngestionEngine_audiogramFromImages___block_invoke_244_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__AIAudiogramIngestionEngine__audiogramFromSymbols_onAudiogramMap___block_invoke_253_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)audiogramPointsFromImages:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__AIAudiogramIngestionEngine_audiogramPointsFromImages___block_invoke_261_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setAudiogramAxisError:onError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_propertyOrientationFromOrientation:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_24179B000, v0, OS_LOG_TYPE_FAULT, "Unable to handle unknown UIImageOrientation (%ld)", v1, 0xCu);
}

@end