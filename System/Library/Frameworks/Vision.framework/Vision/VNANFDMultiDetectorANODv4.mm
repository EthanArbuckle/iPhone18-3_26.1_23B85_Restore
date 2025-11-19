@interface VNANFDMultiDetectorANODv4
+ (NSArray)knownAnimalHeadIdentifiers;
+ (NSArray)knownSportBallIdentifiers;
+ (NSDictionary)recognizedAnimalHeadObjectClassToAnimalHeadCategoryName;
+ (NSDictionary)recognizedSportBallObjectClassToSportBallCategoryName;
+ (id)detectedObjectClassToRequestKey;
+ (id)detectedObjectRequestKeyToRequestInfo;
- (BOOL)processDetectedObject:(id)a3 originatingRequestSpecifier:(id)a4 objectBoundingBox:(CGRect)a5 objectGroupId:(id)a6 imageBuffer:(id)a7 qosClass:(unsigned int)a8 session:(id)a9 warningRecorder:(id)a10 detectedObjectResults:(id)a11 error:(id *)a12;
- (id)splitDetectedClassResultsIntoSubclasses:(id)a3;
@end

@implementation VNANFDMultiDetectorANODv4

+ (NSArray)knownSportBallIdentifiers
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VNANFDMultiDetectorANODv4_knownSportBallIdentifiers__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNANFDMultiDetectorANODv4 knownSportBallIdentifiers]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv4 knownSportBallIdentifiers]::onceToken, block);
  }

  v2 = +[VNANFDMultiDetectorANODv4 knownSportBallIdentifiers]::knownSportBallIdentifiers;

  return v2;
}

void __54__VNANFDMultiDetectorANODv4_knownSportBallIdentifiers__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) recognizedSportBallObjectClassToSportBallCategoryName];
  v1 = [v4 allValues];
  v2 = [v1 copy];
  v3 = +[VNANFDMultiDetectorANODv4 knownSportBallIdentifiers]::knownSportBallIdentifiers;
  +[VNANFDMultiDetectorANODv4 knownSportBallIdentifiers]::knownSportBallIdentifiers = v2;
}

+ (NSDictionary)recognizedSportBallObjectClassToSportBallCategoryName
{
  if (+[VNANFDMultiDetectorANODv4 recognizedSportBallObjectClassToSportBallCategoryName]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv4 recognizedSportBallObjectClassToSportBallCategoryName]::onceToken, &__block_literal_global_51);
  }

  v3 = +[VNANFDMultiDetectorANODv4 recognizedSportBallObjectClassToSportBallCategoryName]::recognizedSportBallObjectClassToSportBallCategoryName;

  return v3;
}

void __82__VNANFDMultiDetectorANODv4_recognizedSportBallObjectClassToSportBallCategoryName__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = &unk_1F19C0EE0;
  v3[0] = @"GenericSportBall";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = +[VNANFDMultiDetectorANODv4 recognizedSportBallObjectClassToSportBallCategoryName]::recognizedSportBallObjectClassToSportBallCategoryName;
  +[VNANFDMultiDetectorANODv4 recognizedSportBallObjectClassToSportBallCategoryName]::recognizedSportBallObjectClassToSportBallCategoryName = v0;
}

+ (NSArray)knownAnimalHeadIdentifiers
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VNANFDMultiDetectorANODv4_knownAnimalHeadIdentifiers__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNANFDMultiDetectorANODv4 knownAnimalHeadIdentifiers]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv4 knownAnimalHeadIdentifiers]::onceToken, block);
  }

  v2 = +[VNANFDMultiDetectorANODv4 knownAnimalHeadIdentifiers]::knownAnimalHeadIdentifiers;

  return v2;
}

void __55__VNANFDMultiDetectorANODv4_knownAnimalHeadIdentifiers__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) recognizedAnimalHeadObjectClassToAnimalHeadCategoryName];
  v1 = [v4 allValues];
  v2 = [v1 copy];
  v3 = +[VNANFDMultiDetectorANODv4 knownAnimalHeadIdentifiers]::knownAnimalHeadIdentifiers;
  +[VNANFDMultiDetectorANODv4 knownAnimalHeadIdentifiers]::knownAnimalHeadIdentifiers = v2;
}

+ (NSDictionary)recognizedAnimalHeadObjectClassToAnimalHeadCategoryName
{
  if (+[VNANFDMultiDetectorANODv4 recognizedAnimalHeadObjectClassToAnimalHeadCategoryName]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv4 recognizedAnimalHeadObjectClassToAnimalHeadCategoryName]::onceToken, &__block_literal_global_149);
  }

  v3 = +[VNANFDMultiDetectorANODv4 recognizedAnimalHeadObjectClassToAnimalHeadCategoryName]::recognizedAnimalHeadObjectClassToAnimalHeadCategoryName;

  return v3;
}

void __84__VNANFDMultiDetectorANODv4_recognizedAnimalHeadObjectClassToAnimalHeadCategoryName__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F19C0EB0;
  v2[1] = &unk_1F19C0EC8;
  v3[0] = @"CatHead";
  v3[1] = @"DogHead";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = +[VNANFDMultiDetectorANODv4 recognizedAnimalHeadObjectClassToAnimalHeadCategoryName]::recognizedAnimalHeadObjectClassToAnimalHeadCategoryName;
  +[VNANFDMultiDetectorANODv4 recognizedAnimalHeadObjectClassToAnimalHeadCategoryName]::recognizedAnimalHeadObjectClassToAnimalHeadCategoryName = v0;
}

+ (id)detectedObjectRequestKeyToRequestInfo
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VNANFDMultiDetectorANODv4_detectedObjectRequestKeyToRequestInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNANFDMultiDetectorANODv4 detectedObjectRequestKeyToRequestInfo]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv4 detectedObjectRequestKeyToRequestInfo]::onceToken, block);
  }

  v2 = +[VNANFDMultiDetectorANODv4 detectedObjectRequestKeyToRequestInfo]::detectedObjectRequestKeyToRequestInfo;

  return v2;
}

void __66__VNANFDMultiDetectorANODv4_detectedObjectRequestKeyToRequestInfo__block_invoke(uint64_t a1)
{
  v16.receiver = *(a1 + 32);
  v16.super_class = &OBJC_METACLASS___VNANFDMultiDetectorANODv4;
  v1 = objc_msgSendSuper2(&v16, sel_detectedObjectRequestKeyToRequestInfo);
  v2 = [v1 mutableCopy];

  v3 = [(VNMultiDetectorOriginalRequestInfo *)[VNANFDMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNANFDMultiDetectorProcessingOption_AnimalHeadsRecognitionOriginatingRequestSpecifier" originalRequestResultsIndex:5];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 setObject:v3 forKey:v5];

  v6 = [(VNMultiDetectorOriginalRequestInfo *)[VNANFDMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNANFDMultiDetectorProcessingOption_SportBallsRecognitionOriginatingRequestSpecifier" originalRequestResultsIndex:6];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v2 setObject:v6 forKey:v8];

  v9 = [(VNMultiDetectorOriginalRequestInfo *)[VNANFDMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNANFDMultiDetectorProcessingOption_HumanDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:7];
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 initWithFormat:@"%@%@%@", v12, @"_", MEMORY[0x1E695E110]];
  [v2 setObject:v9 forKey:v13];

  v14 = [v2 copy];
  v15 = +[VNANFDMultiDetectorANODv4 detectedObjectRequestKeyToRequestInfo]::detectedObjectRequestKeyToRequestInfo;
  +[VNANFDMultiDetectorANODv4 detectedObjectRequestKeyToRequestInfo]::detectedObjectRequestKeyToRequestInfo = v14;
}

+ (id)detectedObjectClassToRequestKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VNANFDMultiDetectorANODv4_detectedObjectClassToRequestKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNANFDMultiDetectorANODv4 detectedObjectClassToRequestKey]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv4 detectedObjectClassToRequestKey]::onceToken, block);
  }

  v2 = +[VNANFDMultiDetectorANODv4 detectedObjectClassToRequestKey]::detectedObjectClassToRequestKey;

  return v2;
}

void __60__VNANFDMultiDetectorANODv4_detectedObjectClassToRequestKey__block_invoke(uint64_t a1)
{
  v15.receiver = *(a1 + 32);
  v15.super_class = &OBJC_METACLASS___VNANFDMultiDetectorANODv4;
  v1 = objc_msgSendSuper2(&v15, sel_detectedObjectClassToRequestKey);
  v2 = [v1 mutableCopy];

  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v2 setObject:v4 forKey:&unk_1F19C0EB0];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 setObject:v6 forKey:&unk_1F19C0EC8];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v2 setObject:v8 forKey:&unk_1F19C0EE0];

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 initWithFormat:@"%@%@%@", v11, @"_", MEMORY[0x1E695E110]];
  [v2 setObject:v12 forKey:&unk_1F19C0EF8];

  v13 = [v2 copy];
  v14 = +[VNANFDMultiDetectorANODv4 detectedObjectClassToRequestKey]::detectedObjectClassToRequestKey;
  +[VNANFDMultiDetectorANODv4 detectedObjectClassToRequestKey]::detectedObjectClassToRequestKey = v13;
}

- (id)splitDetectedClassResultsIntoSubclasses:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = v4;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v8)
    {
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [(VNANFDMultiDetector *)self isDetectedObject:v11 ofAGivenObjectSubClass:@"DogHead"];
          v13 = v5;
          if (!v12)
          {
            v14 = [(VNANFDMultiDetector *)self isDetectedObject:v11 ofAGivenObjectSubClass:@"CatHead"];
            v13 = v6;
            if (!v14)
            {
              v18.receiver = self;
              v18.super_class = VNANFDMultiDetectorANODv4;
              v15 = [(VNANFDMultiDetectorANODv3 *)&v18 splitDetectedClassResultsIntoSubclasses:v7];

              v4 = v17;
              goto LABEL_14;
            }
          }

          [v13 addObject:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v4 = v17;
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v5, v6, 0}];
LABEL_14:
  }

  else
  {
    v23.receiver = self;
    v23.super_class = VNANFDMultiDetectorANODv4;
    v15 = [(VNANFDMultiDetectorANODv3 *)&v23 splitDetectedClassResultsIntoSubclasses:v4];
  }

  return v15;
}

- (BOOL)processDetectedObject:(id)a3 originatingRequestSpecifier:(id)a4 objectBoundingBox:(CGRect)a5 objectGroupId:(id)a6 imageBuffer:(id)a7 qosClass:(unsigned int)a8 session:(id)a9 warningRecorder:(id)a10 detectedObjectResults:(id)a11 error:(id *)a12
{
  v13 = *&a8;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v22 = a3;
  v23 = a4;
  v24 = a6;
  v44 = a7;
  v43 = a9;
  v25 = a10;
  v26 = a11;
  v27 = [objc_opt_class() recognizedAnimalHeadObjectClassToAnimalHeadCategoryName];
  v28 = [objc_opt_class() recognizedSportBallObjectClassToSportBallCategoryName];
  v29 = [v22 labelKey];
  if ((v29 - 9) < 2)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v22, "labelKey")}];
    v34 = [v27 objectForKey:v35];

    [v22 confidence];
    LODWORD(v37) = v36;
    [(VNANFDMultiDetector *)self processRecognizedObjectWithIdentifier:v34 originatingRequestSpecifier:v23 objectBoundingBox:v24 objectGroupId:v26 objectConfidence:x detectedObjectResults:y, width, height, v37];
  }

  else if (v29 == 11)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v22, "labelKey")}];
    v34 = [v28 objectForKey:v38];

    [v22 confidence];
    LODWORD(v40) = v39;
    [(VNANFDMultiDetector *)self processRecognizedObjectWithIdentifier:v34 originatingRequestSpecifier:v23 objectBoundingBox:v24 objectGroupId:v26 objectConfidence:x detectedObjectResults:y, width, height, v40];
  }

  else
  {
    if (v29 != 12)
    {
      v45.receiver = self;
      v45.super_class = VNANFDMultiDetectorANODv4;
      v41 = [(VNANFDMultiDetectorANODv3 *)&v45 processDetectedObject:v22 originatingRequestSpecifier:v23 objectBoundingBox:v24 objectGroupId:v44 imageBuffer:v13 qosClass:v43 session:x warningRecorder:y detectedObjectResults:width error:height, v25, v26, a12];
      goto LABEL_11;
    }

    v30 = [VNHumanObservation alloc];
    [v22 confidence];
    LODWORD(v32) = v31;
    v33 = [(VNHumanObservation *)v30 initWithOriginatingRequestSpecifier:v23 boundingBox:0 upperBodyOnly:x confidence:y, width, height, v32];
    v34 = v33;
    if (v24)
    {
      [(VNDetectedObjectObservation *)v33 setGroupId:v24];
    }

    [v26 addObject:v34];
  }

  v41 = 1;
LABEL_11:

  return v41;
}

@end