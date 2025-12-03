@interface VNCCTextDetector
+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error;
- (VNCCTextDetector)initWithOptions:(id)options;
- (__CCRange)tightenBox:(vImage_Buffer *)box startTop:(unsigned __int16)top startBottom:(unsigned __int16)bottom startPosition:(unsigned __int16)position stopPosition:(unsigned __int16)stopPosition imageHeight:(unint64_t)height halfWalk:(unsigned __int16)walk;
- (float)createLumaImage:(vImage_Buffer *)image lumaImage:(vImage_Buffer *)lumaImage numCropRows:(unsigned __int16)rows rowStartLocation:(unsigned __int16)location;
- (float)createLumaImageAlternative:(vImage_Buffer *)alternative lumaImageAlternative:(vImage_Buffer *)imageAlternative numCropRows:(unsigned __int16)rows rowStartLocation:(unsigned __int16)location;
- (id)textBoxesForBuffer:(vImage_Buffer *)buffer error:(id *)error;
- (id)textBoxesForImage:(id)image originatingRequestSpecifier:(id)specifier error:(id *)error;
- (int)_allocateSumDerivVectors:(__CCSumDerivVectors *)vectors size:(int)size;
- (int)_allocateVImageWithWidth:(unint64_t)width height:(unint64_t)height rowBytes:(unint64_t)bytes imageOut:(vImage_Buffer *)out;
- (int)_generateAdaptiveBinarization:(vImage_Buffer *)binarization adaptImage:(vImage_Buffer *)image useLowLightEnhancement:(unsigned __int8)enhancement;
- (int)_generateAndApplyColorProfileForImage:(vImage_Buffer *)image votingImage:(vImage_Buffer *)votingImage textOut:(vImage_Buffer *)out minMaxRGB:(__rgbMinMaxU8 *)b lowHighRGB:(__rgbMinMaxFloat *)gB numCropRows:(unsigned __int16)rows rowStartLocation:(unsigned __int16)location rowStopLocation:(unsigned __int16)self0 sumTextOutFirstPass:(unsigned int *)self1 useLowLightEnhancement:(unsigned __int8)self2;
- (int)_generateBoxes:(id)boxes pulseVector:(unint64_t)vector uImage:(vImage_Buffer *)image countBigBoxOut:(unint64_t *)out bigBoxes:(__CCBigBox *)bigBoxes bigBoxesA:(__CCBigBox *)a useLowLightEnhancement:(unsigned __int8)enhancement;
- (int)_generateCRCharBoxInformation:(id)information inputImage:(vImage_Buffer *)image singleVotingImageAddressRef:(char *)ref bigBoxes:(__CCBigBox *)boxes bigBoxesAdapt:(__CCBigBox *)adapt textOut:(vImage_Buffer *)out adaptOut:(vImage_Buffer *)adaptOut lowHighRGB:(__rgbMinMaxFloat *)self0 countBigBox:(unsigned __int8)self1 useLowLightEnhancement:(unsigned __int8)self2;
- (int)_generateCRCharBoxInformation_TrackBox:(__CCBox *)box finalCharBoxCoordCount:(unint64_t *)count;
- (int)_generateCRCharBoxInformation_extendTextBoxes:(__CCBigBox *)boxes countBigBox:(unsigned __int8)box rowStartLocation2:(unsigned __int16)location2 finalCharBoxCoordCount:(unint64_t)count finalCoordinatesForStubRevised:(__CCBox *)revised width:(unint64_t)width height:(unsigned __int16)height bigBoxIndicator:(char *)self0;
- (int)_generateCRCharBoxInformation_spaceBoxRemovalMagicThresh:(vImage_Buffer *)thresh magicMinHeight:(float)height magicMaxHeight:(float)maxHeight rowStartLocation2:(unsigned __int16)location2 magicThresh:(float *)magicThresh magicThreshPrev:(float *)prev useLowLightEnhancement:(unsigned __int8)enhancement;
- (int)_generateCRCharBoxInformation_zcFinalVectorHighProbability:(vImage_Buffer *)probability zcFinalRange:(unsigned __int16)range;
- (int)_generateCRCharBoxInformation_zcFinalVectorOriginate:(vImage_Buffer *)originate textOut:(vImage_Buffer *)out adaptOut:(vImage_Buffer *)adaptOut bigBoxes:(__CCBigBox *)boxes bigBoxesAdapt:(__CCBigBox *)adapt ccCharBoxesAggr:(__CCCharBox *)aggr ccCharBoxesFiltered:(__CCCharBox *)filtered height:(unsigned __int16)self0 rowStartLocation2:(unsigned __int16)self1 rowStopLocation2:(unsigned __int16)self2 singleVotingImageAddressRef:(char *)self3 countBigBox:(unsigned __int8)self4 filterWalkUpDownCount:(unsigned __int16 *)self5 useLowLightEnhancement:(unsigned __int8)self6;
- (int)_generatePulseVectorOutputs:(vImage_Buffer *)outputs votingImage:(vImage_Buffer *)image rowLocationsRef:(unsigned __int16 *)ref;
- (int)_generateSmoothedImage:(vImage_Buffer *)image uImage:(vImage_Buffer *)uImage;
- (int)_generateVotingImage:(vImage_Buffer *)image votingImage:(vImage_Buffer *)votingImage useLowLightEnhancement:(char *)enhancement;
- (int)_getFilterResultOut:(float *)out defaultRows:(unsigned __int16)rows bufferHeight:(unsigned __int16)height minHeight:(unsigned __int8)minHeight maxHeight:(unsigned __int8)maxHeight startRange:(unsigned __int16)range stopRange:(unsigned __int16)stopRange startMaxFind:(unsigned int)self0 stopMaxFind:(unsigned int)self1 bytesPerRow:(unsigned __int16)self2 thresholdSet:(ThresholdSet_t)self3 sampleImageAddressRef:(char *)self4 sampleImageFloatAddressRef:(float *)self5 pulseVectorFlag:(unint64_t)self6;
- (int)_getFilterResultOutBothSumDeriv:(unsigned __int8)deriv floatVectorResult:(float *)result bufferHeight:(unsigned __int16)height minHeight:(unsigned __int8)minHeight maxHeight:(unsigned __int8)maxHeight config:(__CCFilterSumDerivConfig *)config bytesPerRow:(unsigned __int16)row thresholdSet:(ThresholdSet_t)self0 sampleImageAddressRef:(char *)self1;
- (int)allocateColorProfileContext:(__CCColorProfileContext *)context width:(unsigned __int16)width height:(unsigned __int16)height rowBytes:(unint64_t)bytes;
- (int)computeDependentTopAndBottomComponents:(__CCBox *)components finalCharBoxCoordCount:(unint64_t *)count;
- (int)computeMainStub:(vImage_Buffer *)stub numCropRows:(unsigned __int16)rows numCropColsOut:(unsigned __int16 *)out maxY:(float)y start:(unsigned __int16 *)start;
- (int)computePulseVectorSum:(char *)sum start:(unsigned __int16)start stop:(unsigned __int16)stop imageHeight:(unint64_t)height imageWidth:(unint64_t)width bottomHeight:(unsigned __int16)bottomHeight topHeight:(unsigned __int16)topHeight;
- (int)extractBoxesForStub:(__CCBigBox *)stub bigBoxesAdapt:(__CCBigBox *)adapt countBigBox:(unsigned __int8)box rowStartLocation2:(unsigned __int16)location2 rowStopLocation2:(unsigned __int16)stopLocation2 heightConstraint:(unsigned __int8)constraint imageWidth:(unsigned __int16)width height:(unsigned __int16)self0 ccCharBoxesAggr:(__CCCharBox *)self1 ccCharBoxesFiltered:(__CCCharBox *)self2 useLowLightEnhancement:(unsigned __int8)self3;
- (int)generateHistogramBounds:(__rgbaColor *)bounds rgbVector2Ref:(__rgbaColor *)ref numPixels1:(unsigned int)pixels1 numPixels2:(unsigned int)pixels2 minMaxRGB:(__rgbMinMaxU8 *)b lowHighRGB:(__rgbMinMaxFloat *)gB;
- (int)generatePulses:(unsigned __int16)pulses minHeight:(unsigned __int8)height maxHeight:(unsigned __int8)maxHeight thresholdSet:(ThresholdSet_t)set prodBoostNormalized:(float *)normalized pulseVectorFlag:(unint64_t)flag;
- (unsigned)_extractCharBoxCuts:(__CCBigBox *)cuts heightConstraint:(unsigned __int8)constraint medianHeightTopVector:(unsigned __int16 *)vector medianHeightBottomVector:(unsigned __int16 *)bottomVector isAdaptive:(BOOL)adaptive;
- (unsigned)_generateBinarizationForImage:(vImage_Buffer *)image textOut:(vImage_Buffer *)out firstOrSecondPassIndicator:(unsigned __int8)indicator minMaxRGB:(__rgbMinMaxFloat *)b;
- (unsigned)charBoxesFromTextBoxes:(__CCCharBox *)boxes bigBoxes:(__CCBigBox *)bigBoxes ccYTopLocationsForSort:(unsigned __int16 *)sort ccYBottomLocationsForSort:(unsigned __int16 *)forSort;
- (unsigned)computeNumCropCols:(float *)cols width:(unint64_t)width start:(unsigned __int16 *)start;
- (void)_computeColumnSumsOverRange:(__CCRange *)range sampleImageAddress:(char *)address rowSumOut:(int *)out rowDerivOut:(int *)derivOut;
- (void)_computeProdBoostNormalizedResult:(__CCSumDerivVectors *)result size:(int)size binOverride:(unsigned __int8)override;
- (void)_freeSumDerivVectors:(__CCSumDerivVectors *)vectors;
- (void)_freeVImage:(vImage_Buffer *)image;
- (void)_generateCC:(id)c ccBigBoxes:(__CCBigBox *)boxes textOut:(vImage_Buffer *)out countBigBox:(unsigned __int8)box bufferHeight:(unsigned __int16)height;
- (void)_generateCRCharBoxInformation_spaceBoxRemovalHistogram:(vImage_Buffer *)histogram zcStartLeft:(unsigned __int16)left zcStopRight:(unsigned __int16)right rowStartLocation2:(unsigned __int16)location2 lowHighRGB:(__rgbMinMaxFloat *)b histCompliancePercent:(float *)percent varSpaceBox:(float *)box;
- (void)_generateCRCharBoxInformation_spaceBoxRemovalTightenBox:(vImage_Buffer *)box singleVotingImageAddressRef:(char *)ref adaptOut:(vImage_Buffer *)out textOut:(vImage_Buffer *)textOut zcStartLeft:(unsigned __int16)left zcStopRight:(unsigned __int16)right finalCoordinatesForStub:(__CCBox *)stub finalCoordinatesForStubRevised:(__CCBox *)self0 finalCharBoxCoordCount:(unint64_t *)self1 useLowLightEnhancement:(unsigned __int8)self2;
- (void)_generateCRCharBoxInformation_spaceBoxRemovalTruthFilter:(float *)filter magicThresh:(float *)thresh zcStartLeft:(unsigned __int16)left zcStopRight:(unsigned __int16)right isSpaceBoxAccepted:(BOOL *)accepted histCompliancePercent:(float *)percent useLowLightEnhancement:(unsigned __int8)enhancement;
- (void)_generateCRCharBoxInformation_zcFinalVectorFillIn:(vImage_Buffer *)in;
- (void)_generateFilteredPulseVector:(unint64_t)vector target:(unint64_t)target height:(unint64_t)height;
- (void)_generatePulseAggregate:(unint64_t)aggregate pulseVectorMain:(unint64_t)main pulseVectorResult:(unint64_t)result metricSelection:(unsigned __int8)selection bufferHeight:(unsigned __int16)height bufferWidth:(unsigned __int16)width;
- (void)_generatePulseAggregateSmallStubs:(unint64_t)stubs pulseVectorResult:(unint64_t)result bufferHeight:(unsigned __int16)height bufferWidth:(unsigned __int16)width;
- (void)_generateZeroCrossingVector:(unint64_t)vector zcVectorFlag:(unint64_t)flag width:(unint64_t)width;
- (void)calculateSumProd:(vImage_Buffer *)prod prodROIRef:(float *)ref prodROIRotateRef:(float *)rotateRef rowStartLocation2:(unsigned __int16)location2 height:(unsigned __int16)height;
- (void)calculateSumProdAlternative:(vImage_Buffer *)alternative prodROIRef:(float *)ref prodROIRotateRef:(float *)rotateRef rowStartLocation2:(unsigned __int16)location2 height:(unsigned __int16)height;
- (void)computeIndependentTopAndBottomComponents:(__CCBox *)components finalCharBoxCoordCount:(unint64_t *)count;
- (void)dealloc;
- (void)determineColorProfileType:(__CCColorProfileContext *)type;
- (void)examinePulseWindow:(unsigned __int16)window prodBoostNormalized:(float *)normalized pwContext:(__CCPulseWindowContext *)context minHeight:(unsigned __int8)height maxHeight:(unsigned __int8)maxHeight thresholdSet:(ThresholdSet_t)set;
- (void)extractCharBoxHeightInfo:(__CCCharBox *)info ccCharBoxesFiltered:(__CCCharBox *)filtered ccYTopLocationsForSort:(unsigned __int16 *)sort ccYBottomLocationsForSort:(unsigned __int16 *)forSort aggregateGreenBoxesForStubCount:(unsigned __int16)count imageWidth:(unsigned __int16)width;
- (void)fillInOneVector:(vImage_Buffer *)vector checkFlag:(unint64_t)flag checkHeight:(BOOL)height;
- (void)freeColorProfileContext:(__CCColorProfileContext *)context;
- (void)generateDominantPulse:(unint64_t)pulse rowLocationsRef:(unsigned __int16 *)ref debugOut:(unsigned __int8)out bufferHeight:(unsigned __int16)height bufferWidth:(unsigned __int16)width;
- (void)getLumaHistogram:(vImage_Buffer *)histogram startCC:(unsigned __int16)c colorProfileContext:(__CCColorProfileContext *)context;
- (void)getVotingHistogram:(vImage_Buffer *)histogram colorProfileContext:(__CCColorProfileContext *)context startCC:(unsigned __int16)c rowStartLocation:(unsigned __int16)location;
- (void)groupEndpoints:(__CCBox *)endpoints finalCharBoxCoordCount:(unint64_t *)count;
- (void)initializeForImage:(vImage_Buffer *)image;
@end

@implementation VNCCTextDetector

- (id)textBoxesForImage:(id)image originatingRequestSpecifier:(id)specifier error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  specifierCopy = specifier;
  v39 = imageCopy;
  width = [imageCopy width];
  height = [imageCopy height];
  if (width >= height)
  {
    v12 = 480;
  }

  else
  {
    v12 = 768;
  }

  if (width >= height)
  {
    v13 = 768;
  }

  else
  {
    v13 = 480;
  }

  v59 = 0;
  v14 = [imageCopy bufferWithWidth:v13 height:v12 format:1111970369 options:0 error:&v59];
  v15 = v59;
  v16 = v15;
  if (v14)
  {
    CVPixelBufferLockBaseAddress(v14, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(v14);
    v18 = COERCE_DOUBLE(CVPixelBufferGetWidth(v14));
    v19 = COERCE_DOUBLE(CVPixelBufferGetHeight(v14));
    v20 = COERCE_DOUBLE(CVPixelBufferGetBytesPerRow(v14));
    [(VNCCTextDetector *)self setComputeZCVectorHighProbability:1];
    pixelBuffer = v14;
    *&rect.origin.x = BaseAddress;
    rect.origin.y = v19;
    rect.size.width = v18;
    rect.size.height = v20;
    v57 = v16;
    v37 = [(VNCCTextDetector *)self textBoxesForBuffer:&rect error:&v57];
    v40 = v57;

    CVPixelBufferUnlockBaseAddress(v14, 1uLL);
    if (v40)
    {
      if (error)
      {
        v21 = v40;
        *error = v40;
      }

      CVPixelBufferRelease(v14);
      v22 = MEMORY[0x1E695E0F0];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      v24 = MEMORY[0x1E695DF70];
      v25 = [v37 objectForKeyedSubscript:@"stubBoxNormalized"];
      v41 = [v24 arrayWithArray:v25];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = [v37 objectForKeyedSubscript:@"textBoxRevisedNormalized"];
      v45 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v45)
      {
        v44 = *v54;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v54 != v44)
            {
              objc_enumerationMutation(obj);
            }

            if (CGRectMakeWithDictionaryRepresentation(*(*(&v53 + 1) + 8 * i), &rect))
            {
              v26 = [VNTextObservation alloc];
              v46 = [(VNRectangleObservation *)v26 initWithOriginatingRequestSpecifier:specifierCopy boundingBox:rect.origin.x, 1.0 - rect.origin.y - rect.size.height, rect.size.width];
              v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v29 = v41;
              v30 = [v29 countByEnumeratingWithState:&v49 objects:v60 count:16];
              if (v30)
              {
                v31 = *v50;
                do
                {
                  for (j = 0; j != v30; ++j)
                  {
                    if (*v50 != v31)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v33 = *(*(&v49 + 1) + 8 * j);
                    if (CGRectMakeWithDictionaryRepresentation(v33, &v48))
                    {
                      v64 = CGRectIntersection(v48, rect);
                      *&v64.origin.x = v64.size.width * v64.size.height / (v48.size.width * v48.size.height);
                      if (*&v64.origin.x >= 0.25)
                      {
                        v34 = [VNRectangleObservation alloc];
                        v35 = [(VNRectangleObservation *)v34 initWithOriginatingRequestSpecifier:specifierCopy boundingBox:v48.origin.x, 1.0 - v48.origin.y - v48.size.height, v48.size.width];
                        [v27 addObject:v35];
                        [v28 addObject:v33];
                      }
                    }
                  }

                  v30 = [v29 countByEnumeratingWithState:&v49 objects:v60 count:16];
                }

                while (v30);
              }

              [v29 removeObjectsInArray:v28];
              [(VNTextObservation *)v46 setCharacterBoxes:v27];
              [array addObject:v46];
            }
          }

          v45 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v45);
      }

      v22 = [array sortedArrayUsingComparator:&__block_literal_global_28578];
      CVPixelBufferRelease(pixelBuffer);
    }

    v16 = v40;
  }

  else
  {
    v22 = MEMORY[0x1E695E0F0];
    if (error && v15)
    {
      v23 = v15;
      *error = v16;
    }
  }

  return v22;
}

uint64_t __72__VNCCTextDetector_textBoxesForImage_originatingRequestSpecifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 characterBoxes];
  v6 = [v5 count];

  v7 = [v4 characterBoxes];
  v8 = [v7 count];

  if (v6 > v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = v6 < v8;
  }

  return v9;
}

- (id)textBoxesForBuffer:(vImage_Buffer *)buffer error:(id *)error
{
  v76 = *MEMORY[0x1E69E9840];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (buffer->width <= buffer->height)
  {
    height = buffer->height;
  }

  else
  {
    height = buffer->width;
  }

  v10 = [(VNCCTextDetector *)self _allocateCRCharBoxContext:height];
  if (v10 != 1 || (v10 = [(VNCCTextDetector *)self _allocateVImageWithWidth:buffer->width height:buffer->height rowBytes:buffer->width imageOut:&v67], v10 != 1) || (v10 = [(VNCCTextDetector *)self _allocateVImageWithWidth:buffer->width height:buffer->height rowBytes:buffer->width imageOut:&v65], v10 != 1) || (v10 = [(VNCCTextDetector *)self _allocateVImageWithWidth:buffer->width height:buffer->height rowBytes:buffer->width imageOut:&v63], v10 != 1) || (v10 = [VNCCTextDetector _allocateVImageWithWidth:"_allocateVImageWithWidth:height:rowBytes:imageOut:" height:? rowBytes:? imageOut:?], v10 != 1))
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_18;
  }

  v11 = malloc_type_calloc(0xC8uLL, 0x1FCuLL, 0x10000402E06451DuLL);
  if (!v11)
  {
    v12 = 0;
    v10 = 0;
    goto LABEL_18;
  }

  v12 = malloc_type_calloc(0xC8uLL, 0x1FCuLL, 0x10000402E06451DuLL);
  v71 = 0;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v13 = *&buffer->width;
  v56 = *&buffer->data;
  v57 = v13;
  [(VNCCTextDetector *)self initializeForImage:&v56];
  v14 = *&buffer->width;
  v56 = *&buffer->data;
  v57 = v14;
  v54 = v67;
  v55 = v68;
  v10 = [(VNCCTextDetector *)self _generateVotingImage:&v56 votingImage:&v54 useLowLightEnhancement:&v59];
  if (v10 == 1)
  {
    v15 = *&buffer->width;
    v56 = *&buffer->data;
    v57 = v15;
    v54 = v67;
    v55 = v68;
    v10 = [(VNCCTextDetector *)self _generatePulseVectorOutputs:&v56 votingImage:&v54 rowLocationsRef:&v72];
    if (v10 == 1)
    {
      computeZCVectorHighProbability = [(VNCCTextDetector *)self computeZCVectorHighProbability];
      minHeight = [(VNCCTextDetector *)self minHeight];
      v18 = v73;
      v19 = v74;
      v20 = v75;
      v51 = v72;
      v21 = v73 - v72;
      v22 = v75 - v74;
      if (v21 <= minHeight && v22 <= minHeight)
      {
LABEL_14:
        if (v21 > minHeight || v22 > minHeight)
        {
          v41 = *&buffer->width;
          v56 = *&buffer->data;
          v57 = v41;
          v54 = v65;
          v55 = v66;
          if (computeZCVectorHighProbability)
          {
            v52 = v63;
            v53 = v64;
            BYTE1(v45) = v59;
            LOBYTE(v45) = v60;
            v42 = [(VNCCTextDetector *)self _generateCRCharBoxInformation:v8 inputImage:&v56 singleVotingImageAddressRef:v67 bigBoxes:v11 bigBoxesAdapt:v12 textOut:&v54 adaptOut:&v52 lowHighRGB:v69 countBigBox:v45 useLowLightEnhancement:?];
          }

          else
          {
            v52 = v65;
            v53 = v66;
            BYTE1(v45) = v59;
            LOBYTE(v45) = v60;
            v42 = [(VNCCTextDetector *)self _generateCRCharBoxInformation:v8 inputImage:&v56 singleVotingImageAddressRef:v67 bigBoxes:v11 bigBoxesAdapt:v11 textOut:&v54 adaptOut:&v52 lowHighRGB:v69 countBigBox:v45 useLowLightEnhancement:?];
          }

          v10 = v42;
        }

        else
        {
          v10 = 1;
        }

        goto LABEL_18;
      }

      v46 = v75 - v74;
      v47 = computeZCVectorHighProbability;
      v48 = minHeight;
      v25 = 0;
      v26 = 1;
      v49 = v75;
      v50 = v74;
      do
      {
        if ((v26 & 1) == 0)
        {
          v18 = v20;
        }

        v27 = v51;
        if ((v26 & 1) == 0)
        {
          v27 = v19;
        }

        v51 = v27;
        if (v27)
        {
          v28 = v18 == 0;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = *&buffer->width;
          v56 = *&buffer->data;
          v57 = v29;
          v54 = v67;
          v55 = v68;
          v52 = v65;
          v53 = v66;
          LOBYTE(v45) = v59;
          WORD1(v43) = v18;
          LOWORD(v43) = v27;
          v10 = [(VNCCTextDetector *)self _generateAndApplyColorProfileForImage:&v56 votingImage:&v54 textOut:&v52 minMaxRGB:&v70 lowHighRGB:v69 numCropRows:(v18 - v27 + 1) rowStartLocation:v43 rowStopLocation:&v58 sumTextOutFirstPass:v45 useLowLightEnhancement:?];
          if (v10 != 1)
          {
            goto LABEL_18;
          }

          v25 = v26 & ((v58 / (buffer->width * buffer->height)) > 0.667);
          v20 = v49;
          v19 = v50;
        }

        v26 = 0;
        v28 = v25 == 0;
        v25 = 1;
      }

      while (!v28);
      v56 = v65;
      v57 = v66;
      v54 = v61;
      v55 = v62;
      v10 = [(VNCCTextDetector *)self _generateSmoothedImage:&v56 uImage:&v54];
      if (v10 == 1)
      {
        if (buffer->height)
        {
          v30 = 0;
          do
          {
            [(VNCCCharBoxContext *)self->_charBoxContext clearFlag:512 atIndex:v30++];
          }

          while (buffer->height > v30);
        }

        startSensitized = [(VNCCTextDetector *)self startSensitized];
        stopSensitized = [(VNCCTextDetector *)self stopSensitized];
        v56 = 0u;
        LOWORD(v56) = startSensitized;
        WORD1(v56) = stopSensitized;
        v57 = 0x200uLL;
        v33 = buffer->height;
        maxHeight = [(VNCCTextDetector *)self maxHeight];
        LOWORD(v43) = buffer->width;
        LODWORD(v35) = 1025758986;
        LODWORD(v36) = 1017370378;
        LODWORD(v37) = 1005961871;
        v10 = [(VNCCTextDetector *)self _getFilterResultOutBothSumDeriv:1 floatVectorResult:0 bufferHeight:v33 minHeight:v48 maxHeight:maxHeight config:&v56 bytesPerRow:v35 thresholdSet:v36 sampleImageAddressRef:v37, v43, v61];
        if (v10 == 1)
        {
          [(VNCCTextDetector *)self _generatePulseAggregate:512 pulseVectorMain:0x1000000 pulseVectorResult:0x2000000 metricSelection:1 bufferHeight:LOWORD(buffer->height) bufferWidth:LOWORD(buffer->width)];
          computeZCVectorHighProbability = v47;
          if (buffer->height >= 2)
          {
            v38 = 1;
            do
            {
              [(VNCCCharBoxContext *)self->_charBoxContext copyFlagValue:0x2000000 toTarget:0x1000000 atIndex:v38++];
            }

            while (buffer->height > v38);
          }

          v56 = v61;
          v57 = v62;
          LOBYTE(v44) = v59;
          v39 = [(VNCCTextDetector *)self _generateBoxes:v8 pulseVector:0x1000000 uImage:&v56 countBigBoxOut:&v60 bigBoxes:v11 bigBoxesA:v12 useLowLightEnhancement:v44];
          v10 = v39;
          if (v39 == 1 && v47)
          {
            v40 = *&buffer->width;
            v56 = *&buffer->data;
            v57 = v40;
            v54 = v63;
            v55 = v64;
            v10 = [(VNCCTextDetector *)self _generateAdaptiveBinarization:&v56 adaptImage:&v54 useLowLightEnhancement:v59];
            if (v10 != 1)
            {
              goto LABEL_18;
            }

            v56 = v63;
            v57 = v64;
            [(VNCCTextDetector *)self _generateCC:v7 ccBigBoxes:v12 textOut:&v56 countBigBox:v60 bufferHeight:LOWORD(buffer->height)];
          }

          else if (v39 != 1)
          {
            goto LABEL_18;
          }

          v56 = v65;
          v57 = v66;
          [(VNCCTextDetector *)self _generateCC:v7 ccBigBoxes:v11 textOut:&v56 countBigBox:v60 bufferHeight:LOWORD(buffer->height)];
          v21 = v18 - v51;
          minHeight = v48;
          v22 = v46;
          goto LABEL_14;
        }
      }
    }
  }

LABEL_18:
  free(v11);
  free(v12);
  [(VNCCTextDetector *)self _freeCRCharBoxContext];
  [(VNCCTextDetector *)self _freeVImage:&v67];
  [(VNCCTextDetector *)self _freeVImage:&v61];
  [(VNCCTextDetector *)self _freeVImage:&v63];
  [(VNCCTextDetector *)self _freeVImage:&v65];
  if (v10)
  {
    v23 = v8;
  }

  else
  {
    if (error)
    {
      *error = [VNError errorForInternalErrorWithLocalizedDescription:@"VNCCTextDetector internal error"];
    }

    v23 = MEMORY[0x1E695E0F8];
  }

  return v23;
}

- (int)_generatePulseVectorOutputs:(vImage_Buffer *)outputs votingImage:(vImage_Buffer *)image rowLocationsRef:(unsigned __int16 *)ref
{
  if (!ref)
  {
    return 0;
  }

  v22 = 257;
  v21[0] = [(VNCCTextDetector *)self startNormal];
  v21[1] = [(VNCCTextDetector *)self stopNormal];
  v21[2] = [(VNCCTextDetector *)self startSensitized];
  v21[3] = [(VNCCTextDetector *)self stopSensitized];
  v23 = xmmword_1A6038E30;
  height_low = LOWORD(outputs->height);
  minHeight = [(VNCCTextDetector *)self minHeight];
  maxHeight = [(VNCCTextDetector *)self maxHeight];
  LOWORD(v20) = image->rowBytes;
  LODWORD(v12) = 1025758986;
  LODWORD(v13) = 1017370378;
  LODWORD(v14) = 1005961871;
  result = [(VNCCTextDetector *)self _getFilterResultOutBothSumDeriv:0 floatVectorResult:0 bufferHeight:height_low minHeight:minHeight maxHeight:maxHeight config:v21 bytesPerRow:v12 thresholdSet:v13 sampleImageAddressRef:v14, v20, image->data];
  if (result == 1)
  {
    [(VNCCTextDetector *)self _generatePulseAggregate:256 pulseVectorMain:512 pulseVectorResult:0x100000 metricSelection:0 bufferHeight:LOWORD(outputs->height) bufferWidth:LOWORD(outputs->width)];
    [(VNCCTextDetector *)self _generatePulseAggregate:1024 pulseVectorMain:2048 pulseVectorResult:0x200000 metricSelection:0 bufferHeight:LOWORD(outputs->height) bufferWidth:LOWORD(outputs->width)];
    if (outputs->height)
    {
      v16 = 0;
      do
      {
        [(VNCCCharBoxContext *)self->_charBoxContext copyFlagValue:0x100000 toTarget:0x400000 atIndex:v16];
        [(VNCCCharBoxContext *)self->_charBoxContext copyFlagValue:0x200000 toTarget:0x800000 atIndex:v16++];
        height = outputs->height;
      }

      while (height > v16);
    }

    else
    {
      height = 0;
    }

    [(VNCCTextDetector *)self _generateFilteredPulseVector:0x100000 target:0x400000 height:height];
    [(VNCCTextDetector *)self _generateFilteredPulseVector:0x200000 target:0x800000 height:outputs->height];
    [(VNCCTextDetector *)self _generatePulseAggregate:0x200000 pulseVectorMain:0x100000 pulseVectorResult:0x1000000 metricSelection:0 bufferHeight:LOWORD(outputs->height) bufferWidth:LOWORD(outputs->width)];
    [(VNCCTextDetector *)self _generatePulseAggregate:0x800000 pulseVectorMain:0x400000 pulseVectorResult:0x1000000 metricSelection:0 bufferHeight:LOWORD(outputs->height) bufferWidth:LOWORD(outputs->width)];
    [(VNCCTextDetector *)self generateDominantPulse:0x1000000 rowLocationsRef:ref debugOut:[(VNCCTextDetector *)self debugOut] bufferHeight:LOWORD(outputs->height) bufferWidth:LOWORD(outputs->width)];
    v18 = outputs->height;
    if (v18)
    {
      for (i = 0; i < v18; ++i)
      {
        [(VNCCCharBoxContext *)self->_charBoxContext copyFlagValue:0x1000000 toTarget:0x80000 atIndex:i];
        v18 = outputs->height;
      }
    }

    [(VNCCTextDetector *)self _generatePulseAggregateSmallStubs:0x80000 pulseVectorResult:0x1000000 bufferHeight:v18 bufferWidth:LOWORD(outputs->width)];
    return 1;
  }

  return result;
}

- (int)_generateCRCharBoxInformation:(id)information inputImage:(vImage_Buffer *)image singleVotingImageAddressRef:(char *)ref bigBoxes:(__CCBigBox *)boxes bigBoxesAdapt:(__CCBigBox *)adapt textOut:(vImage_Buffer *)out adaptOut:(vImage_Buffer *)adaptOut lowHighRGB:(__rgbMinMaxFloat *)self0 countBigBox:(unsigned __int8)self1 useLowLightEnhancement:(unsigned __int8)self2
{
  informationCopy = information;
  LODWORD(v18) = 0;
  v19 = 0;
  if (!informationCopy || !ref || !boxes || !adapt)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_77;
  }

  adaptCopy = adapt;
  refCopy = ref;
  outCopy = out;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (b)
  {
    v21 = malloc_type_calloc(0x32uLL, 0xAuLL, 0x100004080B1215BuLL);
    if (v21)
    {
      v22 = malloc_type_calloc(0x32uLL, 0xAuLL, 0x100004080B1215BuLL);
      if (v22)
      {
        v20 = malloc_type_calloc(0xC8uLL, 8uLL, 0x100004000313F17uLL);
        if (v20)
        {
          v23 = malloc_type_calloc(0xC8uLL, 8uLL, 0x100004000313F17uLL);
          if (v23)
          {
            v18 = malloc_type_calloc(0xC8uLL, 1uLL, 0x100004077774924uLL);
            if (v18)
            {
              v137 = 0;
              v138[0] = 0;
              v136 = 0;
              v135 = 0;
              v134 = 0;
              v24 = [informationCopy objectForKeyedSubscript:@"stubBox"];

              if (!v24)
              {
                array = [MEMORY[0x1E695DF70] array];
                [informationCopy setObject:array forKeyedSubscript:@"stubBox"];
              }

              v26 = [informationCopy objectForKeyedSubscript:@"stubBoxNormalized"];

              if (!v26)
              {
                array2 = [MEMORY[0x1E695DF70] array];
                [informationCopy setObject:array2 forKeyedSubscript:@"stubBoxNormalized"];
              }

              minHeight = [(VNCCTextDetector *)self minHeight];
              maxHeight = [(VNCCTextDetector *)self maxHeight];
              computeZCVectorHighProbability = [(VNCCTextDetector *)self computeZCVectorHighProbability];
              charBoxFlags = [(VNCCCharBoxContext *)self->_charBoxContext charBoxFlags];
              v116 = v18;
              v108 = v20;
              v110 = v22;
              v111 = v21;
              v117 = v23;
              if (image->height < 2)
              {
                LODWORD(v18) = 1;
              }

              else
              {
                v29 = 0;
                v30 = 0;
                v105 = v23 + 2;
                v31 = 1;
                v32 = *charBoxFlags;
                selfCopy2 = self;
                do
                {
                  v34 = v29;
                  v35 = [(VNCCCharBoxContext *)selfCopy2->_charBoxContext charBoxFlags][8 * v31];
                  v127 = v35;
                  if ((((v32 & 0x1000000) == 0) & BYTE3(v35)) != 0)
                  {
                    v29 = v31;
                  }

                  else
                  {
                    v29 = v34;
                  }

                  if (v29)
                  {
                    v36 = (v35 & 0x1000000) == 0;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  if (v36)
                  {
                    v30 = v31 - 1;
                  }

                  if (v29)
                  {
                    v37 = v30 == 0;
                  }

                  else
                  {
                    v37 = 1;
                  }

                  if (v37)
                  {
                    LODWORD(v18) = 1;
                  }

                  else
                  {
                    v125 = v29;
                    if (minHeight <= (v30 - v29 + 1) && maxHeight >= (v30 - v29 + 1))
                    {
                      v39 = *&image->width;
                      v132 = *&image->data;
                      v133 = v39;
                      v40 = *&outCopy->width;
                      v130 = *&outCopy->data;
                      v131 = v40;
                      v41 = *&adaptOut->width;
                      v128 = *&adaptOut->data;
                      v129 = v41;
                      LOBYTE(v104) = enhancement;
                      LOBYTE(v103) = box;
                      WORD2(v102) = v30;
                      WORD1(v102) = v29;
                      LOWORD(v102) = v30 - v29 + 1;
                      if ([VNCCTextDetector _generateCRCharBoxInformation_zcFinalVectorOriginate:selfCopy2 textOut:"_generateCRCharBoxInformation_zcFinalVectorOriginate:textOut:adaptOut:bigBoxes:bigBoxesAdapt:ccCharBoxesAggr:ccCharBoxesFiltered:height:rowStartLocation2:rowStopLocation2:singleVotingImageAddressRef:countBigBox:filterWalkUpDownCount:useLowLightEnhancement:" adaptOut:&v132 bigBoxes:&v130 bigBoxesAdapt:&v128 ccCharBoxesAggr:boxes ccCharBoxesFiltered:adaptCopy height:v111 rowStartLocation2:v110 rowStopLocation2:v102 singleVotingImageAddressRef:refCopy countBigBox:v103 filterWalkUpDownCount:&v134 useLowLightEnhancement:v104]== 1)
                      {
                        medianHeightBottom = [(VNCCCharBoxContext *)selfCopy2->_charBoxContext medianHeightBottom];
                        medianHeightTop = [(VNCCCharBoxContext *)selfCopy2->_charBoxContext medianHeightTop];
                        medianHeightBottom2 = [(VNCCCharBoxContext *)selfCopy2->_charBoxContext medianHeightBottom];
                        medianHeightTop2 = [(VNCCCharBoxContext *)selfCopy2->_charBoxContext medianHeightTop];
                        if (!computeZCVectorHighProbability || (v46 = *&image->width, v132 = *&image->data, v133 = v46, [(VNCCTextDetector *)selfCopy2 _generateCRCharBoxInformation_zcFinalVectorHighProbability:&v132 zcFinalRange:3]== 1))
                        {
                          [(VNCCCharBoxContext *)selfCopy2->_charBoxContext setLoopBigBoxPrev:[(VNCCCharBoxContext *)selfCopy2->_charBoxContext loopBigBox]];
                          if (!computeZCVectorHighProbability && image->width >= 2)
                          {
                            v47 = 1;
                            do
                            {
                              [(VNCCCharBoxContext *)selfCopy2->_charBoxContext clearFlag:0x8000 atIndex:v47++];
                            }

                            while (image->width > v47);
                          }

                          v48 = *&image->width;
                          v132 = *&image->data;
                          v133 = v48;
                          [(VNCCTextDetector *)selfCopy2 _generateCRCharBoxInformation_zcFinalVectorFillIn:&v132];
                          v49 = (medianHeightBottom - medianHeightTop) * 0.25 + -1.0;
                          *&v49 = v49;
                          v50 = (medianHeightBottom2 - medianHeightTop2) + (medianHeightBottom2 - medianHeightTop2);
                          v51 = *&image->width;
                          v52 = v50;
                          v132 = *&image->data;
                          v133 = v51;
                          *&v50 = v52;
                          if ([(VNCCTextDetector *)selfCopy2 _generateCRCharBoxInformation_spaceBoxRemovalMagicThresh:&v132 magicMinHeight:v125 magicMaxHeight:v138 + 4 rowStartLocation2:v138 magicThresh:enhancement magicThreshPrev:v49 useLowLightEnhancement:v50]== 1)
                          {
                            if (image->width)
                            {
                              v53 = 0;
                              v54 = 0;
                              v55 = 0;
                              do
                              {
                                if ([(VNCCCharBoxContext *)selfCopy2->_charBoxContext checkFlag:0x8000 atIndex:v53])
                                {
                                  if (v54)
                                  {
                                    v55 = v53;
                                  }

                                  else
                                  {
                                    v54 = v53;
                                  }

                                  if (v54 && v55)
                                  {
                                    v56 = v55 - v54;
                                    if (v56 >= 7 && v52 >= v56)
                                    {
                                      v57 = *&image->width;
                                      v132 = *&image->data;
                                      v133 = v57;
                                      [(VNCCTextDetector *)selfCopy2 _generateCRCharBoxInformation_spaceBoxRemovalHistogram:&v132 zcStartLeft:v54 zcStopRight:v55 rowStartLocation2:v125 lowHighRGB:b histCompliancePercent:&v137 + 4 varSpaceBox:&v137];
                                      LOBYTE(v101) = enhancement;
                                      [(VNCCTextDetector *)selfCopy2 _generateCRCharBoxInformation_spaceBoxRemovalTruthFilter:&v137 magicThresh:v138 + 4 zcStartLeft:v54 zcStopRight:v55 isSpaceBoxAccepted:&v136 histCompliancePercent:&v137 + 4 useLowLightEnhancement:v101];
                                      if (v136 == 1)
                                      {
                                        v58 = *&image->width;
                                        v132 = *&image->data;
                                        v133 = v58;
                                        v59 = *&adaptOut->width;
                                        v130 = *&adaptOut->data;
                                        v131 = v59;
                                        v60 = *&outCopy->width;
                                        v128 = *&outCopy->data;
                                        v129 = v60;
                                        LOBYTE(v103) = enhancement;
                                        [(VNCCTextDetector *)selfCopy2 _generateCRCharBoxInformation_spaceBoxRemovalTightenBox:&v132 singleVotingImageAddressRef:refCopy adaptOut:&v130 textOut:&v128 zcStartLeft:v54 zcStopRight:v55 finalCoordinatesForStub:v108 finalCoordinatesForStubRevised:v117 finalCharBoxCoordCount:&v135 useLowLightEnhancement:v103];
                                      }
                                    }

                                    v54 = v55;
                                  }
                                }

                                ++v53;
                              }

                              while (image->width > v53);
                            }

                            if ([(VNCCTextDetector *)selfCopy2 _generateCRCharBoxInformation_TrackBox:v117 finalCharBoxCoordCount:&v135]== 1)
                            {
                              v121 = informationCopy;
                              dictionary = [MEMORY[0x1E695DF90] dictionary];
                              v119 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F1976900];
                              v118 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F1976900];
                              pixelHeightCard = [(VNCCTextDetector *)selfCopy2 pixelHeightCard];
                              pixelWidthCard = [(VNCCTextDetector *)selfCopy2 pixelWidthCard];
                              [(VNCCTextDetector *)selfCopy2 mmHeightCard];
                              v62 = v61;
                              boxesCopy = boxes;
                              [(VNCCTextDetector *)selfCopy2 mmWidthCard];
                              if (v135)
                              {
                                v64 = v63;
                                v65 = 0;
                                v66 = 1;
                                v67 = v105;
                                imageCopy = image;
                                do
                                {
                                  v68 = *(v67 - 2);
                                  v69 = *(v67 - 1);
                                  v70 = *v67;
                                  v71 = v67[1];
                                  if ((v66 & 1) == 0)
                                  {
                                    [v119 appendString:{@", "}];
                                    [v118 appendString:{@", "}];
                                  }

                                  v72 = (v69 + v68) - v68;
                                  v73 = (v71 + v70);
                                  v74 = v73 - v70;
                                  v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%i, %i}, {%i, %i}}", v68, v70, v72, (v73 - v70)];
                                  v76 = [v121 objectForKey:@"stubBox"];
                                  v77 = v70;
                                  v139.origin.x = v68;
                                  v139.origin.y = v70;
                                  v139.size.width = v72;
                                  v139.size.height = (v73 - v70);
                                  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v139);
                                  [v76 addObject:DictionaryRepresentation];

                                  v79 = [v121 objectForKey:@"stubBoxNormalized"];
                                  width = imageCopy->width;
                                  v140.origin.x = v68 / width;
                                  height = imageCopy->height;
                                  v140.origin.y = v77 / height;
                                  v140.size.width = v72 / width;
                                  v140.size.height = v74 / height;
                                  v82 = CGRectCreateDictionaryRepresentation(v140);
                                  [v79 addObject:v82];

                                  [v119 appendString:v75];
                                  v83 = v62 * ((pixelHeightCard - v73) / pixelHeightCard);
                                  if (v83 < 0.0)
                                  {
                                    v83 = 0.0;
                                  }

                                  v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%2.4f, %2.4f}, {%2.4f, %2.4f}}", (v64 * (v68 / pixelWidthCard)), v83, (v64 * (v72 / pixelWidthCard)), (v62 * (v74 / pixelHeightCard))];
                                  [v118 appendString:v84];
                                  image = imageCopy;
                                  selfCopy2 = self;
                                  v67 += 4;

                                  v66 = 0;
                                  ++v65;
                                }

                                while (v135 > v65);
                              }

                              [dictionary setValue:v119 forKey:@"stubBox"];
                              [dictionary setValue:v118 forKey:@"stubBoxMM"];

                              informationCopy = v121;
                              boxes = boxesCopy;
                            }
                          }
                        }
                      }
                    }

                    LOWORD(v100) = image->height;
                    LODWORD(v18) = [(VNCCTextDetector *)selfCopy2 _generateCRCharBoxInformation_extendTextBoxes:boxes countBigBox:box rowStartLocation2:v125 finalCharBoxCoordCount:v135 finalCoordinatesForStubRevised:v117 width:image->width height:v100 bigBoxIndicator:v116];
                    v30 = 0;
                    v29 = 0;
                    v135 = 0;
                  }

                  if (image->height <= ++v31)
                  {
                    break;
                  }

                  LODWORD(v32) = v127;
                }

                while (v18 == 1);
              }

              boxCopy = box;
              if (box)
              {
                p_var2 = &boxes->var2;
                v88 = v116;
                do
                {
                  if (*v88++)
                  {
                    v90 = [informationCopy objectForKey:@"textBoxRevised"];
                    v91 = *p_var2;
                    v141.origin.x = v91;
                    v92 = *(p_var2 - 2);
                    v141.origin.y = v92;
                    v141.size.width = (p_var2[1] - v91);
                    v141.size.height = (*(p_var2 - 1) - v92);
                    v93 = CGRectCreateDictionaryRepresentation(v141);
                    [v90 addObject:v93];

                    v94 = [informationCopy objectForKey:@"textBoxRevisedNormalized"];
                    v95 = *p_var2;
                    v96 = image->width;
                    v142.origin.x = v95 / v96;
                    v97 = *(p_var2 - 2);
                    v98 = image->height;
                    v142.origin.y = v97 / v98;
                    v142.size.width = (p_var2[1] - v95) / v96;
                    v142.size.height = (*(p_var2 - 1) - v97) / v98;
                    v99 = CGRectCreateDictionaryRepresentation(v142);
                    [v94 addObject:v99];
                  }

                  p_var2 += 254;
                  --boxCopy;
                }

                while (boxCopy);
              }

              v22 = v110;
              v21 = v111;
              v20 = v108;
              v19 = v116;
              v23 = v117;
            }

            else
            {
              v19 = 0;
            }

            goto LABEL_77;
          }

          v19 = 0;
LABEL_76:
          LODWORD(v18) = 0;
          goto LABEL_77;
        }

        v19 = 0;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v22 = 0;
    }

    v23 = 0;
    goto LABEL_76;
  }

LABEL_77:
  free(v21);
  free(v22);
  free(v20);
  free(v23);
  free(v19);

  return v18;
}

- (int)_generateCRCharBoxInformation_extendTextBoxes:(__CCBigBox *)boxes countBigBox:(unsigned __int8)box rowStartLocation2:(unsigned __int16)location2 finalCharBoxCoordCount:(unint64_t)count finalCoordinatesForStubRevised:(__CCBox *)revised width:(unint64_t)width height:(unsigned __int16)height bigBoxIndicator:(char *)self0
{
  if (box)
  {
    v10 = 0;
    LOBYTE(v11) = 0;
    LOBYTE(v12) = -1;
    boxesCopy = boxes;
    v14 = -1;
    do
    {
      if (boxesCopy->var0 == location2)
      {
        v15 = v12 == 255;
        if (v12 == 255)
        {
          LOBYTE(v12) = v10;
        }

        if (v11)
        {
          v11 = 1;
        }

        else
        {
          v11 = v15;
        }

        if (v11)
        {
          v14 = v10;
        }
      }

      else
      {
        if (v11)
        {
          break;
        }

        LOBYTE(v11) = 0;
      }

      ++boxesCopy;
      ++v10;
    }

    while (box != v10);
  }

  else
  {
    v14 = -1;
    LOBYTE(v12) = -1;
  }

  if (count)
  {
    v16 = 0;
    v17 = 0;
    if (v12 <= v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = v12;
    }

    do
    {
      v19 = &revised[v16];
      var0 = v19->var0;
      v21 = v19->var1 + var0;
      if (v12 <= v14)
      {
        v26 = &boxes[v12];
        v27 = v12;
        while (1)
        {
          var2 = v26->var2;
          var3 = v26->var3;
          if (var0 >= var2 && v21 <= var3)
          {
            ++v17;
            goto LABEL_60;
          }

          if (var0 < var2 && v21 >= var2)
          {
            ++v17;
            v26->var2 = (var0 - 7) & ~((var0 - 7) >> 15);
            goto LABEL_60;
          }

          if (var0 < var3 && v21 > var3)
          {
            break;
          }

          ++v27;
          ++v26;
          if (v18 + 1 == v27)
          {
            goto LABEL_22;
          }
        }

        ++v17;
        v38 = v21 + 7;
        if (width <= (v21 + 7))
        {
          v38 = width - 1;
        }

        v26->var3 = v38;
LABEL_60:
        v39 = 1;
      }

      else
      {
LABEL_22:
        v22 = v17 + 1;
        v23 = ++v17;
        while (v23 < count)
        {
          v24 = &revised[v23];
          v25 = v24->var0;
          if (v25 - v21 > 79)
          {
            v17 = v22;
            break;
          }

          v21 = v24->var1 + v25;
          v23 = ++v22;
          v17 = v22;
        }

        if ((v12 & 0xFFFF) > v14)
        {
          goto LABEL_73;
        }

        v33 = &boxes[v12];
        v27 = v12;
        while (1)
        {
          v34 = v33->var2;
          v35 = v33->var3;
          if (var0 < v34 && v34 <= v21)
          {
            break;
          }

          v36 = v35 - var0;
          if (v36 < 0)
          {
            v36 = -v36;
          }

          if (v36 <= 0x50)
          {
            v41 = v21 + 7;
            if (width <= (v21 + 7))
            {
              v41 = width - 1;
            }

            v33->var3 = v41;
            goto LABEL_71;
          }

          v37 = v21 - v34;
          if (v37 < 0)
          {
            v37 = -v37;
          }

          if (v37 <= 0x50)
          {
            v33->var2 = (var0 - 7) & ~((var0 - 7) >> 15);
            goto LABEL_71;
          }

          ++v27;
          ++v33;
          if (v27 > v14)
          {
            goto LABEL_73;
          }
        }

        v33->var2 = (var0 - 7) & ~((var0 - 7) >> 15);
        if (v21 <= v35)
        {
          v40 = v35;
        }

        else
        {
          v40 = v21;
        }

        if (width - 1 < v40)
        {
          LOWORD(v40) = width - 1;
        }

        v33->var3 = v40;
LABEL_71:
        v39 = 2;
      }

      indicator[v27] += v39;
LABEL_73:
      v16 = v17;
    }

    while (v17 < count);
  }

  if ((v12 & 0x80) == 0 && v14 >= v12)
  {
    v12 = v12;
    p_var2 = &revised->var2;
    do
    {
      v43 = &boxes[v12];
      v44 = v43->var0;
      var1 = v43->var1;
      if (count)
      {
        v46 = v43->var3;
        v47 = p_var2;
        v48 = 1;
        v49 = v43->var1;
        v50 = v43->var0;
        do
        {
          v51 = (*(v47 - 1) + *(v47 - 2));
          if (*(v47 - 2) >= v43->var2 && v51 <= v46)
          {
            v53 = *v47;
            if (v53 < v50)
            {
              v50 = *v47;
            }

            if ((v47[1] + v53) > v49)
            {
              v49 = v47[1] + v53;
            }
          }

          v54 = v51 > v46 || v48++ >= count;
          v47 += 4;
        }

        while (!v54);
      }

      else
      {
        v50 = v43->var0;
        v49 = v43->var1;
      }

      if (v49 < height)
      {
        v44 = v50;
        var1 = v49;
      }

      v43->var0 = v44;
      v43->var1 = var1;
    }

    while (v12++ != v14);
  }

  return 1;
}

- (void)_generateCRCharBoxInformation_zcFinalVectorFillIn:(vImage_Buffer *)in
{
  computeZCVectorHighProbability = [(VNCCTextDetector *)self computeZCVectorHighProbability];
  v6 = *&in->width;
  v68 = *&in->data;
  v69 = v6;
  [(VNCCTextDetector *)self fillInOneVector:&v68 checkFlag:0x4000 checkHeight:0];
  if (in->width >= 2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x2000 atIndex:v9];
      v11 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x2000 atIndex:(v9 - 1)];
      if (v10)
      {
        v12 = (v11 | v7) == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        v7 = v9;
      }

      if (v10)
      {
        v13 = 1;
      }

      else
      {
        v13 = v7 == 0;
      }

      if (!v13 && v11 != 0)
      {
        v8 = v9 - 1;
      }

      if (v7)
      {
        v15 = v8 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = *&in->width;
        v68 = *&in->data;
        v69 = v16;
        [(VNCCTextDetector *)self fillInOneVector:&v68 checkFlag:8 checkHeight:1];
        v8 = 0;
        v7 = 0;
      }

      ++v9;
    }

    while (in->width > v9);
  }

  if (computeZCVectorHighProbability)
  {
    v17 = *&in->width;
    v68 = *&in->data;
    v69 = v17;
    [(VNCCTextDetector *)self fillInOneVector:&v68 checkFlag:128 checkHeight:0];
    v18 = *&in->width;
    v68 = *&in->data;
    v69 = v18;
    [(VNCCTextDetector *)self fillInOneVector:&v68 checkFlag:64 checkHeight:0];
  }

  minBoxWidth = [(VNCCTextDetector *)self minBoxWidth];
  maxBoxWidth = [(VNCCTextDetector *)self maxBoxWidth];
  if (in->width)
  {
    v21 = 0;
    v22 = 0;
    v23 = maxBoxWidth * 1.5;
    v24 = -minBoxWidth;
    do
    {
      if ([(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x8000 atIndex:v21])
      {
        if (v23 < (v21 - v22) && v22 != 0)
        {
          v26 = (v22 + minBoxWidth);
          if (v26 <= (v21 - minBoxWidth))
          {
            do
            {
              if ([(VNCCCharBoxContext *)self->_charBoxContext checkFlag:4 atIndex:v26])
              {
                [(VNCCCharBoxContext *)self->_charBoxContext setFlag:0x8000 atIndex:v26];
              }

              v26 = (v26 + 1);
            }

            while (v24 + 1 != v26);
          }
        }

        v22 = v21;
      }

      ++v21;
      width = in->width;
      LOWORD(v24) = v24 + 1;
    }

    while (width > v21);
    if (width >= 2)
    {
      v28 = 0;
      v29 = 0;
      v30 = minBoxWidth * 1.5;
      v31 = roundf(v30);
      v32 = 1;
      while (1)
      {
        v33 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x2000 atIndex:v32];
        v34 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x2000 atIndex:(v32 - 1)];
        if (v33)
        {
          v35 = (v34 | v28) == 0;
        }

        else
        {
          v35 = 0;
        }

        if (v35)
        {
          v28 = v32;
        }

        if (v33)
        {
          v36 = 1;
        }

        else
        {
          v36 = v28 == 0;
        }

        if (!v36 && v34 != 0)
        {
          v29 = v32 - 1;
        }

        if (v28)
        {
          v38 = v29 == 0;
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          goto LABEL_108;
        }

        if (in->height == 480)
        {
          break;
        }

        v57 = v28;
        if (v31 <= v57)
        {
          v58 = (v57 - v31);
        }

        else
        {
          v58 = 0;
        }

        v59 = minBoxWidth + v28;
        v60 = in->width;
        if (v60 <= v59)
        {
          LOWORD(v59) = 0;
        }

        if ((v58 - 1) < v59)
        {
          v61 = v59 + 1;
          do
          {
            [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x8000 atIndex:v58];
            v58 = (v58 + 1);
          }

          while (v61 != v58);
          v60 = in->width;
        }

        v62 = v29 - minBoxWidth;
        if (minBoxWidth > v29)
        {
          v62 = 0;
        }

        v63 = v31 + v29;
        v64 = v60;
        v65 = v63;
        if (v63 >= v64)
        {
          v65 = 0;
        }

        v29 = 0;
        if (!v62 || !v65)
        {
          v28 = 0;
          goto LABEL_108;
        }

        v28 = 0;
        if (v65 >= v62)
        {
          v66 = v62;
          v67 = v65 + 1;
          do
          {
            [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x8000 atIndex:v66];
            v66 = (v66 + 1);
          }

          while (v67 != v66);
LABEL_107:
          v29 = 0;
          v28 = 0;
        }

LABEL_108:
        if (in->width <= ++v32)
        {
          return;
        }
      }

      v39 = roundf(vcvts_n_f32_s32([(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom]- [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop], 1uLL));
      v40 = v28;
      v41 = (v40 - v39);
      v47 = v39 > v40;
      v42 = v39 + v40;
      v43 = in->width;
      if (v47)
      {
        v44 = 0;
      }

      else
      {
        v44 = v41;
      }

      if (v42 >= v43)
      {
        v45 = 0;
      }

      else
      {
        v45 = v42;
      }

      if (v44)
      {
        v46 = v45 == 0;
      }

      else
      {
        v46 = 1;
      }

      v47 = v46 || v44 > v45;
      if (!v47)
      {
        v48 = v45 + 1;
        do
        {
          [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x8000 atIndex:v44];
          v44 = (v44 + 1);
        }

        while (v48 != v44);
        v43 = in->width;
      }

      v49 = v29;
      v50 = (v49 - v39);
      v47 = v39 > v49;
      v51 = v39 + v49;
      if (v47)
      {
        v52 = 0;
      }

      else
      {
        v52 = v50;
      }

      if (v51 >= v43)
      {
        v53 = 0;
      }

      else
      {
        v53 = v51;
      }

      if (v52)
      {
        v54 = v53 == 0;
      }

      else
      {
        v54 = 1;
      }

      if (!v54 && v52 <= v53)
      {
        v56 = v53 + 1;
        do
        {
          [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x8000 atIndex:v52];
          v52 = (v52 + 1);
        }

        while (v56 != v52);
      }

      goto LABEL_107;
    }
  }
}

- (void)fillInOneVector:(vImage_Buffer *)vector checkFlag:(unint64_t)flag checkHeight:(BOOL)height
{
  heightCopy = height;
  minBoxWidth = [(VNCCTextDetector *)self minBoxWidth];
  if (vector->width >= 2)
  {
    v10 = minBoxWidth;
    v11 = minBoxWidth;
    for (i = 1; vector->width > i; ++i)
    {
      if (heightCopy)
      {
        v13 = [(VNCCCharBoxContext *)self->_charBoxContext pulseVectorHeightCharBox][i];
        [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom];
        [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop];
        if (!v13)
        {
          continue;
        }
      }

      if ([(VNCCCharBoxContext *)self->_charBoxContext checkFlag:flag atIndex:i])
      {
        if (vector->height == 480)
        {
          medianHeightBottom = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom];
          v16 = medianHeightBottom - [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop];
          medianHeightBottom2 = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom];
          v18 = medianHeightBottom2 - [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop];
          v19 = i;
          if (v16 < 16)
          {
            v14 = v18 / 3.0;
            *&v14 = v14;
          }

          else
          {
            *&v14 = vcvts_n_f32_s32(v18, 1uLL);
          }

          v27 = roundf(*&v14);
          *&v14 = v27 + v19;
          if ((v27 + v19) < vector->width)
          {
            v28 = v27 <= v19 ? (v19 - v27) : 0;
            v29 = *&v14;
            v30 = !v28 || v29 == 0;
            if (!v30 && v28 <= v29)
            {
              v32 = v29 + 1;
              while (![(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x8000 atIndex:v28])
              {
                v28 = (v28 + 1);
                if (v32 == v28)
                {
                  goto LABEL_33;
                }
              }

              continue;
            }
          }
        }

        else
        {
          v20 = i - v10;
          if (i < v11)
          {
            v20 = 0;
          }

          v21 = v10 + i;
          if (vector->width <= v21)
          {
            LOWORD(v21) = 0;
          }

          if ((v20 - 1) < v21)
          {
            v22 = 0;
            v23 = v20;
            v24 = v21 + 1;
            do
            {
              v25 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x8000 atIndex:v23];
              v26 = v22 << 31 >> 31;
              v22 = v25 != v26;
              v23 = (v23 + 1);
            }

            while (v24 != v23);
            if (v25 != v26)
            {
              continue;
            }
          }
        }

LABEL_33:
        [(VNCCCharBoxContext *)self->_charBoxContext setFlag:0x8000 atIndex:i, v14];
      }
    }
  }
}

- (int)_generateCRCharBoxInformation_zcFinalVectorHighProbability:(vImage_Buffer *)probability zcFinalRange:(unsigned __int16)range
{
  rangeCopy = range;
  v7 = malloc_type_calloc(3 * probability->width, 1uLL, 0x100004077774924uLL);
  v8 = v7;
  if (v7)
  {
    width = probability->width;
    v10 = &v7[width];
    if (!width)
    {
      goto LABEL_6;
    }

    v11 = 0;
    do
    {
      [(VNCCCharBoxContext *)self->_charBoxContext clearFlag:0x8000 atIndex:v11];
      [(VNCCCharBoxContext *)self->_charBoxContext clearFlag:0x20000 atIndex:v11];
      [(VNCCCharBoxContext *)self->_charBoxContext clearFlag:0x4000000 atIndex:v11++];
      v12 = probability->width;
    }

    while (v12 > v11);
    if (v12 != 1)
    {
LABEL_6:
      v13 = 0;
      do
      {
        if ([(VNCCCharBoxContext *)self->_charBoxContext checkFlag:128 atIndex:v13]&& ([(VNCCCharBoxContext *)self->_charBoxContext checkFlag:64 atIndex:(v13 - 1)]|| [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:64 atIndex:v13]|| [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:64 atIndex:(v13 + 1)]))
        {
          [(VNCCCharBoxContext *)self->_charBoxContext setFlag:0x4000000 atIndex:v13];
        }

        ++v13;
        v12 = probability->width;
      }

      while (v12 - 1 > v13);
      if (v12 >= 2)
      {
        v14 = 1;
        v15 = &v8[2 * width];
        do
        {
          v16.i32[0] = [(VNCCCharBoxContext *)self->_charBoxContext charBoxFlags][8 * v14] & 0x400400C;
          v16.i8[0] = vaddlv_u8(vcnt_s8(v16));
          v15[v14] = v16.i8[0];
          v10[v14] = v16.i8[0];
          if (v15[v14] >= 2u)
          {
            v8[v14] = 1;
          }

          ++v14;
          v12 = probability->width;
        }

        while (v12 > v14);
      }
    }

    v48 = v10;
    v17 = rangeCopy + 1;
    if (v12 - rangeCopy > v17)
    {
      v18 = rangeCopy;
      v19 = rangeCopy + 2;
      v20 = rangeCopy;
      while (v8[v17] != 1)
      {
        v20 = v17;
LABEL_46:
        ++v17;
        ++v19;
        ++rangeCopy;
        if (v12 - v18 <= v17)
        {
          goto LABEL_51;
        }
      }

      if (v20 + 2 <= (v17 + v18))
      {
        v22 = 0;
        v21 = 0;
        v23 = v19;
        v24 = rangeCopy;
        do
        {
          if (v8[v24] == 1)
          {
            v22 = v24;
          }

          if (v8[v23] == 1)
          {
            v21 = v23;
          }

          --v24;
        }

        while (v23++ < v17 + v18);
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      v20 = v17;
      v26 = v17 != 0;
      if (!v22)
      {
        v26 = 0;
      }

      if (!v26 || v21 == 0)
      {
        if (v26)
        {
          v28 = v17 + v22;
        }

        else
        {
          if (!v17 || !v21)
          {
            v31 = v17;
            if (!v17)
            {
              v31 = 0.0;
            }

            goto LABEL_45;
          }

          v28 = v17 + v21;
        }

        v29 = vcvtd_n_f64_u32(v28, 1uLL);
      }

      else
      {
        v29 = (v17 + v21 + v22) / 3.0;
      }

      v30 = v29;
      v31 = roundf(v30);
LABEL_45:
      v32 = v31;
      [(VNCCCharBoxContext *)self->_charBoxContext setFlag:0x20000 atIndex:v32];
      [(VNCCCharBoxContext *)self->_charBoxContext setFlag:0x8000 atIndex:v32];
      v12 = probability->width;
      goto LABEL_46;
    }

LABEL_51:
    minBoxWidth = [(VNCCTextDetector *)self minBoxWidth];
    v34 = probability->width;
    if (v34 - minBoxWidth > (minBoxWidth + 1))
    {
      v35 = minBoxWidth;
      v36 = 2 * minBoxWidth;
      v37 = 2 * minBoxWidth + 2;
      v38 = 2;
      v39 = -2;
      do
      {
        if (v37 <= v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = v37;
        }

        v41 = v38 - 1;
        if ([(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x20000 atIndex:v38 - 1 + v35]&& v41 <= v41 + v36)
        {
          bzero(&v48[v41], v40 + v39 + 1);
        }

        v42 = v35 + v38;
        v34 = probability->width;
        ++v37;
        ++v38;
        --v39;
      }

      while (v34 - v35 > v42);
    }

    if (v34 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v43 = 1;
      v44 = 1;
      do
      {
        v45 = &v48[v43];
        if (*(v45 - 1) && *v45)
        {
          v46 = v48[v44 + 1];
          [(VNCCCharBoxContext *)self->_charBoxContext setFlag:0x20000 atIndex:v44];
          [(VNCCCharBoxContext *)self->_charBoxContext setFlag:0x8000 atIndex:v44];
          if (v46)
          {
            ++v44;
          }

          v34 = probability->width;
        }

        v43 = ++v44;
      }

      while (v34 - 1 > v44);
    }
  }

  free(v8);
  return v8 != 0;
}

- (int)_generateCRCharBoxInformation_zcFinalVectorOriginate:(vImage_Buffer *)originate textOut:(vImage_Buffer *)out adaptOut:(vImage_Buffer *)adaptOut bigBoxes:(__CCBigBox *)boxes bigBoxesAdapt:(__CCBigBox *)adapt ccCharBoxesAggr:(__CCCharBox *)aggr ccCharBoxesFiltered:(__CCCharBox *)filtered height:(unsigned __int16)self0 rowStartLocation2:(unsigned __int16)self1 rowStopLocation2:(unsigned __int16)self2 singleVotingImageAddressRef:(char *)self3 countBigBox:(unsigned __int8)self4 filterWalkUpDownCount:(unsigned __int16 *)self5 useLowLightEnhancement:(unsigned __int8)self6
{
  v17 = 0;
  v18 = 0;
  if (!boxes || !adapt || !aggr || !filtered || !ref || !count)
  {
    goto LABEL_43;
  }

  width = originate->width;
  v18 = malloc_type_malloc(8 * height * width, 0x100004052888210uLL);
  if (!v18)
  {
    v17 = 0;
LABEL_43:
    [(VNCCTextDetector *)self computeZCVectorHighProbability:originate];
    free(v18);
    return v17;
  }

  boxesCopy = boxes;
  data = out->data;
  v73 = adaptOut->data;
  v24 = originate->width;
  v25 = v24 * height;
  if (v24 == 767)
  {
    v26 = 15;
  }

  else
  {
    v26 = 12;
  }

  v75 = v26;
  [(VNCCCharBoxContext *)self->_charBoxContext setMedianHeightTop:location2];
  [(VNCCCharBoxContext *)self->_charBoxContext setMedianHeightBottom:stopLocation2];
  [(VNCCCharBoxContext *)self->_charBoxContext resetBoxBounds];
  if (originate->width)
  {
    v27 = 0;
    do
    {
      [(VNCCCharBoxContext *)self->_charBoxContext clearFlag:67203327 atIndex:v27];
      [(VNCCCharBoxContext *)self->_charBoxContext pulseVectorHeightCharBox][v27] = 0;
      [(VNCCCharBoxContext *)self->_charBoxContext pulseVectorHeightCharBoxAdaptive][v27++] = 0;
    }

    while (originate->width > v27);
  }

  v74 = v25;
  v28 = &v18[4 * v25];
  v29 = *&originate->width;
  v78[0] = *&originate->data;
  v78[1] = v29;
  if (enhancement)
  {
    [(VNCCTextDetector *)self calculateSumProdAlternative:v78 prodROIRef:v18 prodROIRotateRef:v28 rowStartLocation2:location2 height:height];
  }

  else
  {
    [(VNCCTextDetector *)self calculateSumProd:v78 prodROIRef:v18 prodROIRotateRef:v28 rowStartLocation2:location2 height:height];
  }

  floatVectorSumProd = [(VNCCCharBoxContext *)self->_charBoxContext floatVectorSumProd];
  WORD2(v68) = height;
  HIDWORD(v65) = [(VNCCTextDetector *)self startMaxFind];
  LODWORD(v68) = [(VNCCTextDetector *)self stopMaxFind];
  LOWORD(v65) = height - 1;
  LODWORD(v31) = 1028443341;
  LODWORD(v32) = 1003277517;
  LODWORD(v33) = 1008981770;
  v34 = [(VNCCTextDetector *)self _getFilterResultOut:floatVectorSumProd defaultRows:767 bufferHeight:width minHeight:v75 maxHeight:35 startRange:0 stopRange:v31 startMaxFind:v32 stopMaxFind:v33 bytesPerRow:v65 thresholdSet:v68 sampleImageAddressRef:ref sampleImageFloatAddressRef:v28 pulseVectorFlag:4096];
  if (v34 != 1)
  {
    v17 = v34;
    goto LABEL_43;
  }

  if (location2 <= stopLocation2)
  {
    v36 = originate->width;
    v37 = &v18[4 * v74 + 4 * stopLocation2 - 4 * location2];
    v38 = location2 - 1;
    v35 = 255.0;
    location2Copy = location2;
    do
    {
      if (v36)
      {
        v40 = &data[out->rowBytes * v38];
        v41 = v37;
        v42 = v36;
        do
        {
          v43 = *v40++;
          v44 = v43 * 255.0;
          *v41 = v44;
          v41 += height;
          --v42;
        }

        while (v42);
      }

      --v37;
      ++v38;
      v51 = location2Copy++ == stopLocation2;
    }

    while (!v51);
  }

  WORD2(v69) = height;
  HIDWORD(v66) = [(VNCCTextDetector *)self startMaxFind];
  LODWORD(v69) = [(VNCCTextDetector *)self stopMaxFind];
  LOWORD(v66) = height - 1;
  LODWORD(v45) = 1028443341;
  LODWORD(v46) = 1003277517;
  LODWORD(v47) = 1008981770;
  v17 = [(VNCCTextDetector *)self _getFilterResultOut:0 defaultRows:767 bufferHeight:width minHeight:v75 maxHeight:35 startRange:0 stopRange:v45 startMaxFind:v46 stopMaxFind:v47 bytesPerRow:v66 thresholdSet:v69 sampleImageAddressRef:ref sampleImageFloatAddressRef:v28 pulseVectorFlag:1];
  computeZCVectorHighProbability = [(VNCCTextDetector *)self computeZCVectorHighProbability];
  v50 = computeZCVectorHighProbability;
  v51 = v17 != 1 || !computeZCVectorHighProbability;
  if (!v51)
  {
    if (location2 <= stopLocation2)
    {
      v52 = originate->width;
      v53 = &v18[4 * v74 + 4 * stopLocation2 - 4 * location2];
      v54 = location2 - 1;
      v49 = 255.0;
      location2Copy2 = location2;
      do
      {
        if (v52)
        {
          v56 = &v73[adaptOut->rowBytes * v54];
          v57 = v53;
          v58 = v52;
          do
          {
            v59 = *v56++;
            v60 = v59 * 255.0;
            *v57 = v60;
            v57 += height;
            --v58;
          }

          while (v58);
        }

        --v53;
        ++v54;
        v51 = location2Copy2++ == stopLocation2;
      }

      while (!v51);
    }

    WORD2(v70) = height;
    HIDWORD(v67) = [(VNCCTextDetector *)self startMaxFind];
    LODWORD(v70) = [(VNCCTextDetector *)self stopMaxFind];
    LOWORD(v67) = height - 1;
    LODWORD(v61) = 1028443341;
    LODWORD(v62) = 1003277517;
    LODWORD(v63) = 1008981770;
    v17 = [(VNCCTextDetector *)self _getFilterResultOut:0 defaultRows:767 bufferHeight:width minHeight:v75 maxHeight:35 startRange:0 stopRange:v61 startMaxFind:v62 stopMaxFind:v63 bytesPerRow:v67 thresholdSet:v70 sampleImageAddressRef:ref sampleImageFloatAddressRef:v28 pulseVectorFlag:16];
  }

  free(v18);
  if (v17 == 1)
  {
    [(VNCCTextDetector *)self _generateZeroCrossingVector:4096 zcVectorFlag:0x4000 width:originate->width];
    [(VNCCTextDetector *)self _generateZeroCrossingVector:1 zcVectorFlag:4 width:originate->width];
    if (v50)
    {
      [(VNCCTextDetector *)self _generateZeroCrossingVector:16 zcVectorFlag:64 width:originate->width];
    }

    if ([(VNCCCharBoxContext *)self->_charBoxContext loopBigBoxPrev]< box && boxesCopy[[(VNCCCharBoxContext *)self->_charBoxContext loopBigBoxPrev]].var0 == location2)
    {
      LOBYTE(v71) = enhancement;
      WORD1(v67) = height;
      LOWORD(v67) = originate->width;
      return [VNCCTextDetector extractBoxesForStub:"extractBoxesForStub:bigBoxesAdapt:countBigBox:rowStartLocation2:rowStopLocation2:heightConstraint:imageWidth:height:ccCharBoxesAggr:ccCharBoxesFiltered:useLowLightEnhancement:" bigBoxesAdapt:v67 countBigBox:aggr rowStartLocation2:filtered rowStopLocation2:v71 heightConstraint:? imageWidth:? height:? ccCharBoxesAggr:? ccCharBoxesFiltered:? useLowLightEnhancement:?];
    }

    else
    {
      return 1;
    }
  }

  return v17;
}

- (int)extractBoxesForStub:(__CCBigBox *)stub bigBoxesAdapt:(__CCBigBox *)adapt countBigBox:(unsigned __int8)box rowStartLocation2:(unsigned __int16)location2 rowStopLocation2:(unsigned __int16)stopLocation2 heightConstraint:(unsigned __int8)constraint imageWidth:(unsigned __int16)width height:(unsigned __int16)self0 ccCharBoxesAggr:(__CCCharBox *)self1 ccCharBoxesFiltered:(__CCCharBox *)self2 useLowLightEnhancement:(unsigned __int8)self3
{
  v13 = 0;
  v14 = 0;
  if (stub && adapt && aggr && filtered != 0)
  {
    constraintCopy = constraint;
    boxCopy = box;
    location2Copy = location2;
    stopLocation2Copy = stopLocation2;
    loopBigBoxPrev = [(VNCCCharBoxContext *)self->_charBoxContext loopBigBoxPrev];
    loopBigBoxPrev2 = [(VNCCCharBoxContext *)self->_charBoxContext loopBigBoxPrev];
    if (loopBigBoxPrev2 < boxCopy)
    {
      v22 = &stub[loopBigBoxPrev];
      var0 = v22->var0;
      do
      {
        v24 = &stub[loopBigBoxPrev2];
        v25 = v24->var0;
        if (v25 == var0)
        {
          [(VNCCCharBoxContext *)self->_charBoxContext setFlag:0x10000 atIndex:v24->var2];
          [(VNCCCharBoxContext *)self->_charBoxContext setFlag:0x10000 atIndex:v24->var3];
          var2 = v24->var2;
          if (var2 <= v24->var3)
          {
            do
            {
              [(VNCCCharBoxContext *)self->_charBoxContext setFlag:0x2000 atIndex:var2];
              v27 = var2 >= v24->var3;
              var2 = (var2 + 1);
            }

            while (!v27);
          }
        }

        if (v25 != v22->var0)
        {
          break;
        }

        LOWORD(loopBigBoxPrev2) = loopBigBoxPrev2 + 1;
        var0 = v25;
      }

      while (boxCopy > loopBigBoxPrev2);
    }

    [(VNCCCharBoxContext *)self->_charBoxContext setLoopBigBox:loopBigBoxPrev2];
    v28 = malloc_type_calloc(0x12CuLL, 2uLL, 0x1000040BDFB0063uLL);
    v13 = v28;
    if (v28)
    {
      v29 = v28 + 100;
      v30 = [(VNCCTextDetector *)self _extractCharBoxCuts:stub heightConstraint:constraintCopy medianHeightTopVector:v28 medianHeightBottomVector:v28 + 100 isAdaptive:0];
      if ([(VNCCTextDetector *)self computeZCVectorHighProbability])
      {
        [(VNCCTextDetector *)self _extractCharBoxCuts:adapt heightConstraint:constraintCopy medianHeightTopVector:v13 + 200 medianHeightBottomVector:v13 + 300 isAdaptive:1];
      }

      heightCopy = height;
      [(VNCCCharBoxContext *)self->_charBoxContext setMedianHeightTop:0];
      [(VNCCCharBoxContext *)self->_charBoxContext setMedianHeightBottom:0];
      if (v30)
      {
        v32 = 0;
        v33 = v30 - 1;
        v34 = v13 + 102;
        do
        {
          v35 = v32 + 1;
          if (v32 + 1 < v30)
          {
            v36 = v34;
            v37 = v33;
            do
            {
              v38 = *(v36 - 50);
              v39 = *&v13[2 * v32];
              if (v38 < v39)
              {
                *(v36 - 50) = v39;
                *&v13[2 * v32] = v38;
              }

              v40 = *v36;
              v41 = *&v29[2 * v32];
              if (v40 < v41)
              {
                *v36 = v41;
                *&v29[2 * v32] = v40;
              }

              ++v36;
              --v37;
            }

            while (v37);
          }

          --v33;
          ++v34;
          ++v32;
        }

        while (v35 != v30);
        if (v30 == 1)
        {
          v42 = 0;
          heightCopy = 0;
        }

        else
        {
          v43 = vcvtd_n_f64_u32(v30, 1uLL);
          v44 = v43;
          *&v43 = v43 + -1.0;
          LODWORD(heightCopy) = llroundf(*&v43);
          v42 = (vcvtms_s32_f32(v44) - 1);
        }

        [(VNCCCharBoxContext *)self->_charBoxContext setMedianHeightTop:*&v13[2 * v42]];
        [(VNCCCharBoxContext *)self->_charBoxContext setMedianHeightBottom:*&v29[2 * heightCopy]];
        if ([(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop]< location2Copy)
        {
          [(VNCCCharBoxContext *)self->_charBoxContext setMedianHeightTop:location2Copy];
        }

        LODWORD(heightCopy) = height;
        if ([(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom]> stopLocation2Copy)
        {
          [(VNCCCharBoxContext *)self->_charBoxContext setMedianHeightBottom:stopLocation2Copy];
        }
      }

      if (vcvtd_n_f64_u32(heightCopy, 1uLL) > ([(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom]- [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop]))
      {
        [(VNCCCharBoxContext *)self->_charBoxContext setMedianHeightTop:location2Copy];
        [(VNCCCharBoxContext *)self->_charBoxContext setMedianHeightBottom:stopLocation2Copy];
      }

      if (width)
      {
        v45 = 0;
        do
        {
          [(VNCCCharBoxContext *)self->_charBoxContext charboxROIFullVectorRowStart][v45] = 0;
          [(VNCCCharBoxContext *)self->_charBoxContext charboxROIFullVectorHeight2][v45] = 0;
          v45 += 2;
        }

        while (2 * width != v45);
      }

      if (enhancement)
      {
        stubCopy = adapt;
      }

      else
      {
        stubCopy = stub;
      }

      v47 = [(VNCCTextDetector *)self charBoxesFromTextBoxes:aggr bigBoxes:stubCopy ccYTopLocationsForSort:v13 + 400 ccYBottomLocationsForSort:v13 + 500];
      if (v47)
      {
        [(VNCCTextDetector *)self extractCharBoxHeightInfo:aggr ccCharBoxesFiltered:filtered ccYTopLocationsForSort:v13 + 400 ccYBottomLocationsForSort:v13 + 500 aggregateGreenBoxesForStubCount:v47 imageWidth:width];
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  free(v13);
  return v14;
}

- (unsigned)charBoxesFromTextBoxes:(__CCCharBox *)boxes bigBoxes:(__CCBigBox *)bigBoxes ccYTopLocationsForSort:(unsigned __int16 *)sort ccYBottomLocationsForSort:(unsigned __int16 *)forSort
{
  loopBigBoxPrev = [(VNCCCharBoxContext *)self->_charBoxContext loopBigBoxPrev];
  if (loopBigBoxPrev >= [(VNCCCharBoxContext *)self->_charBoxContext loopBigBox])
  {
    return 0;
  }

  v12 = 0;
  v13 = loopBigBoxPrev;
  var4 = bigBoxes[loopBigBoxPrev].var4;
  do
  {
    v15 = var4;
    v16 = 50;
    do
    {
      if (!v15->var0)
      {
        break;
      }

      v17 = &boxes[v12];
      v17->var0 = v15->var0;
      v18 = *&v15->var1;
      *&v17->var1 = v18;
      sort[v12] = WORD2(v18);
      forSort[v12] = v15->var4;
      if ((v12 + 1) == 50)
      {
        v12 = 49;
      }

      else
      {
        ++v12;
      }

      ++v15;
      --v16;
    }

    while (v16);
    ++v13;
    var4 = (var4 + 508);
  }

  while (v13 < [(VNCCCharBoxContext *)self->_charBoxContext loopBigBox]);
  return v12;
}

- (void)extractCharBoxHeightInfo:(__CCCharBox *)info ccCharBoxesFiltered:(__CCCharBox *)filtered ccYTopLocationsForSort:(unsigned __int16 *)sort ccYBottomLocationsForSort:(unsigned __int16 *)forSort aggregateGreenBoxesForStubCount:(unsigned __int16)count imageWidth:(unsigned __int16)width
{
  widthCopy = width;
  countCopy = count;
  filteredCopy2 = filtered;
  selfCopy2 = self;
  if (!count)
  {
    goto LABEL_17;
  }

  widthCopy2 = width;
  v17 = 0;
  p_charBoxContext = &self->_charBoxContext;
  countCopy2 = count;
  countCopy3 = count;
  do
  {
    v20 = &info[v17];
    var1 = v20->var1;
    var2 = v20->var2;
    if (var1 <= var2)
    {
      v23 = var2 + 1;
      do
      {
        var3 = v20->var3;
        [(VNCCCharBoxContext *)*p_charBoxContext charboxROIFullVectorRowStart][2 * var1] = var3;
        v25 = v20->var4 - v20->var3;
        [(VNCCCharBoxContext *)*p_charBoxContext charboxROIFullVectorHeight2][2 * var1++] = v25;
      }

      while (v23 != var1);
    }

    ++v17;
  }

  while (v17 != countCopy3);
  v26 = 0;
  v27 = countCopy3 - 1;
  v28 = forSort + 1;
  v29 = sort + 1;
  widthCopy = widthCopy2;
  filteredCopy2 = filtered;
  countCopy = countCopy2;
  do
  {
    v30 = v26 + 1;
    if (v26 + 1 < countCopy3)
    {
      v31 = v29;
      v32 = v28;
      v33 = v27;
      do
      {
        v34 = *v31;
        v35 = sort[v26];
        if (v34 < v35)
        {
          *v31 = v35;
          sort[v26] = v34;
        }

        v36 = *v32;
        v37 = forSort[v26];
        if (v36 < v37)
        {
          *v32 = v37;
          forSort[v26] = v36;
        }

        ++v32;
        ++v31;
        --v33;
      }

      while (v33);
    }

    --v27;
    ++v28;
    ++v29;
    ++v26;
  }

  while (v30 != countCopy3);
  selfCopy2 = self;
  if (countCopy2 != 1)
  {
    v41 = vcvtd_n_f64_u32(countCopy2, 1uLL);
    *&v41 = v41;
    LODWORD(selfCopy2) = vcvtms_s32_f32(*&v41);
    if (countCopy2)
    {
      LOWORD(v41) = sort[selfCopy2];
      v43 = *&v41;
      LOWORD(v8) = forSort[selfCopy2];
      v44 = v8;
    }

    else
    {
      v42 = 2 * selfCopy2 - 2;
      LOWORD(v41) = *(sort + v42);
      LOWORD(v8) = sort[selfCopy2];
      v43 = (*&v41 + v8) * 0.5;
      LOWORD(v9) = *(forSort + v42);
      LOWORD(v10) = forSort[selfCopy2];
      v44 = (v9 + v10) * 0.5;
    }

    v40 = v44 - v43;
    [(VNCCCharBoxContext *)*p_charBoxContext setFilterWalkUpDownCount:0];
  }

  else
  {
LABEL_17:
    v38 = *sort;
    v39 = *forSort;
    p_charBoxContext = &selfCopy2->_charBoxContext;
    [(VNCCCharBoxContext *)selfCopy2->_charBoxContext setFilterWalkUpDownCount:0];
    if (!countCopy)
    {
      goto LABEL_29;
    }

    v40 = v39 - v38;
    countCopy3 = countCopy;
  }

  p_var4 = &info->var4;
  do
  {
    if ((countCopy > 6 || vabdd_f64((*p_var4 - *(p_var4 - 1)), v40) / v40 < 0.2) && *(p_var4 - 4) <= 0x1C0u)
    {
      v46 = &filteredCopy2[[(VNCCCharBoxContext *)*p_charBoxContext filterWalkUpDownCount]];
      v46->var0 = *(p_var4 - 4);
      *&v46->var3 = *(p_var4 - 1);
      [(VNCCCharBoxContext *)*p_charBoxContext setFilterWalkUpDownCount:([(VNCCCharBoxContext *)*p_charBoxContext filterWalkUpDownCount]+ 1)];
    }

    p_var4 += 5;
    --countCopy3;
  }

  while (countCopy3);
LABEL_29:
  if ([(VNCCCharBoxContext *)*p_charBoxContext filterWalkUpDownCount]>= 3)
  {
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    if ([(VNCCCharBoxContext *)*p_charBoxContext filterWalkUpDownCount])
    {
      v52 = 0;
      v53 = &filteredCopy2->var4;
      do
      {
        LOWORD(v47) = *(v53 - 4);
        *&v54 = v47;
        v49 = v49 + *&v54;
        LOWORD(v54) = *(v53 - 1);
        *&v55 = v54;
        v50 = v50 + *&v55;
        LOWORD(v55) = *v53;
        v51 = v51 + v55;
        ++v52;
        v53 += 5;
      }

      while (v52 < [(VNCCCharBoxContext *)*p_charBoxContext filterWalkUpDownCount]);
    }

    v56 = v49 / [(VNCCCharBoxContext *)*p_charBoxContext filterWalkUpDownCount];
    v57 = v50 / [(VNCCCharBoxContext *)*p_charBoxContext filterWalkUpDownCount];
    v58 = v51 / [(VNCCCharBoxContext *)*p_charBoxContext filterWalkUpDownCount];
    if ([(VNCCCharBoxContext *)*p_charBoxContext filterWalkUpDownCount])
    {
      v62 = 0;
      v63 = &filteredCopy2->var4;
      v64 = 0.0;
      v65 = 1.0;
      v48 = 0.0;
      do
      {
        LOWORD(v59) = *(v63 - 4);
        v66 = v59 - v56;
        LOWORD(v60) = *(v63 - 1);
        v67 = v60 - v57;
        LOWORD(v61) = *v63;
        v68 = v61 - v58;
        v48 = v48 + (v66 * v67);
        v64 = v64 + (v66 * v68);
        v65 = v65 + (v66 * v66);
        ++v62;
        v63 += 5;
      }

      while (v62 < [(VNCCCharBoxContext *)*p_charBoxContext filterWalkUpDownCount]);
    }

    else
    {
      v65 = 1.0;
      v64 = 0.0;
    }

    v69 = v48 / v65;
    *&v69 = v48 / v65;
    [(VNCCCharBoxContext *)*p_charBoxContext setMTop:v69];
    v70 = v64 / v65;
    *&v70 = v64 / v65;
    [(VNCCCharBoxContext *)*p_charBoxContext setMBottom:v70];
    [(VNCCCharBoxContext *)*p_charBoxContext mTop];
    v72 = v57 - v71 * v56;
    *&v72 = v72;
    [(VNCCCharBoxContext *)*p_charBoxContext setBTop:v72];
    [(VNCCCharBoxContext *)*p_charBoxContext mBottom];
    v74 = v58 - v73 * v56;
    *&v74 = v74;
    [(VNCCCharBoxContext *)*p_charBoxContext setBBottom:v74];
    [(VNCCCharBoxContext *)*p_charBoxContext mTop];
    v76 = v75;
    [(VNCCCharBoxContext *)*p_charBoxContext bTop];
    *&v78 = v76 + v77;
    [(VNCCCharBoxContext *)*p_charBoxContext setPosUL:v78];
    [(VNCCCharBoxContext *)*p_charBoxContext mBottom];
    v80 = v79;
    [(VNCCCharBoxContext *)*p_charBoxContext bBottom];
    *&v82 = v80 + v81;
    [(VNCCCharBoxContext *)*p_charBoxContext setPosLL:v82];
    [(VNCCCharBoxContext *)*p_charBoxContext mTop];
    v84 = v83;
    [(VNCCCharBoxContext *)*p_charBoxContext bTop];
    *&v86 = v85 + (v84 * widthCopy);
    [(VNCCCharBoxContext *)*p_charBoxContext setPosUR:v86];
    [(VNCCCharBoxContext *)*p_charBoxContext mBottom];
    v88 = v87;
    [(VNCCCharBoxContext *)*p_charBoxContext bBottom];
    *&v89 = *&v89 + (v88 * widthCopy);
    v90 = *p_charBoxContext;

    [(VNCCCharBoxContext *)v90 setPosLR:v89];
  }
}

- (void)calculateSumProdAlternative:(vImage_Buffer *)alternative prodROIRef:(float *)ref prodROIRotateRef:(float *)rotateRef rowStartLocation2:(unsigned __int16)location2 height:(unsigned __int16)height
{
  if (height)
  {
    v8 = 0;
    width = alternative->width;
    rowBytes = alternative->rowBytes;
    v11 = alternative->data + rowBytes * location2;
    v12 = 4 * width;
    v13 = 0.0;
    refCopy = ref;
    do
    {
      if (width)
      {
        v15 = 2;
        v16 = refCopy;
        v17 = width;
        do
        {
          LOBYTE(v7) = v11[v15];
          v7 = LODWORD(v7);
          if (v13 < v7)
          {
            v13 = v7;
          }

          *v16++ = v7;
          v15 += 4;
          --v17;
        }

        while (v17);
      }

      ++v8;
      v11 += rowBytes;
      refCopy = (refCopy + v12);
    }

    while (v8 != height);
    v18 = 0;
    v19 = &rotateRef[height - 1];
    v20 = 1.0 / v13;
    do
    {
      refCopy2 = ref;
      v22 = v19;
      for (i = width; i; --i)
      {
        v24 = *refCopy2++;
        *v22 = v20 * v24;
        v22 += height;
      }

      ++v18;
      --v19;
      ref = (ref + v12);
    }

    while (v18 != height);
  }
}

- (void)calculateSumProd:(vImage_Buffer *)prod prodROIRef:(float *)ref prodROIRotateRef:(float *)rotateRef rowStartLocation2:(unsigned __int16)location2 height:(unsigned __int16)height
{
  if ((prod->width & 0xF) != 0)
  {
    __assert_rtn("[VNCCTextDetector calculateSumProd:prodROIRef:prodROIRotateRef:rowStartLocation2:height:]", "VNCCTextDetector.mm", 5270, "!(inputImage.width & 0xf)");
  }

  heightCopy = height;
  if (height)
  {
    refCopy = ref;
    v12 = 0;
    v13 = prod->data + prod->rowBytes * location2;
    v14 = 0.0;
    refCopy2 = ref;
    do
    {
      v16 = [(VNCCTextDetector *)self ii];
      width = prod->width;
      if (v16 == 1)
      {
        if (width)
        {
          v18 = 0;
          v19 = v13;
          v20 = refCopy2;
          do
          {
            v45 = vld4q_s8(v19);
            v19 += 64;
            v21 = vmull_u8(*v45.val[0].i8, *v45.val[1].i8);
            v22 = vmull_high_u8(v45.val[0], v45.val[1]);
            v23 = vmovl_u8(*v45.val[2].i8);
            v45.val[0] = vmovl_high_u8(v45.val[2]);
            v45.val[2] = vmull_high_u16(v21, v23);
            v45.val[3] = vmull_u16(*v22.i8, *v45.val[0].i8);
            v45.val[0] = vmull_high_u16(v22, v45.val[0]);
            v24 = vcvtq_f32_u32(vmull_u16(*v21.i8, *v23.i8));
            v25 = vcvtq_f32_u32(v45.val[2]);
            v26 = vcvtq_f32_u32(v45.val[3]);
            v27 = vcvtq_f32_u32(v45.val[0]);
            *v20 = v24;
            v20[1] = v25;
            v20[2] = v26;
            v20[3] = v27;
            v20 += 4;
            v28 = vmaxvq_f32(vmaxq_f32(vmaxq_f32(v24, v25), vmaxq_f32(v26, v27)));
            if (v28 > v14)
            {
              v14 = v28;
            }

            v18 += 16;
            width = prod->width;
          }

          while (width > v18);
        }
      }

      else if (width)
      {
        v29 = 0;
        v30 = refCopy2;
        v31 = v13;
        do
        {
          v46 = vld4q_s8(v31);
          v31 += 64;
          v32 = vmvnq_s8(v46.val[0]);
          v33 = vmvnq_s8(v46.val[1]);
          v46.val[0] = vmvnq_s8(v46.val[2]);
          v46.val[1] = vmull_u8(*v32.i8, *v33.i8);
          v46.val[2] = vmull_high_u8(v32, v33);
          v46.val[3] = vmovl_u8(*v46.val[0].i8);
          v46.val[0] = vmovl_high_u8(v46.val[0]);
          v34 = vcvtq_f32_u32(vmull_u16(*v46.val[1].i8, *v46.val[3].i8));
          v35 = vcvtq_f32_u32(vmull_high_u16(v46.val[1], v46.val[3]));
          v36 = vcvtq_f32_u32(vmull_u16(*v46.val[2].i8, *v46.val[0].i8));
          v37 = vcvtq_f32_u32(vmull_high_u16(v46.val[2], v46.val[0]));
          *v30 = v34;
          v30[1] = v35;
          v30[2] = v36;
          v30[3] = v37;
          v30 += 4;
          v38 = vmaxvq_f32(vmaxq_f32(vmaxq_f32(v34, v35), vmaxq_f32(v36, v37)));
          if (v38 > v14)
          {
            v14 = v38;
          }

          v29 += 16;
          width = prod->width;
        }

        while (width > v29);
      }

      refCopy2 += width;
      ++v12;
      v13 += prod->rowBytes;
    }

    while (v12 != heightCopy);
    v39 = 0;
    v40 = &rotateRef[heightCopy - 1];
    do
    {
      v41 = refCopy;
      v42 = v40;
      for (i = width; i; --i)
      {
        v44 = *v41++;
        *v42 = (1.0 / v14) * v44;
        v42 += heightCopy;
      }

      ++v39;
      --v40;
      refCopy += width;
    }

    while (v39 != heightCopy);
  }
}

- (void)_generateZeroCrossingVector:(unint64_t)vector zcVectorFlag:(unint64_t)flag width:(unint64_t)width
{
  charBoxFlags = [(VNCCCharBoxContext *)self->_charBoxContext charBoxFlags];
  if (width >= 2)
  {
    v10 = 0;
    v11 = *charBoxFlags;
    v12 = width - 1;
    do
    {
      v13 = v11;
      v11 = ([(VNCCCharBoxContext *)self->_charBoxContext charBoxFlags]+ 8 * v10)[8];
      v14 = v13 & vector;
      if ((v11 & vector) != 0 && v14 == 0)
      {
        charBoxContext = self->_charBoxContext;
        v19 = (v10 + 1);
        flagCopy2 = flag;
      }

      else
      {
        if ((v11 & vector) != 0 || v14 == 0)
        {
          goto LABEL_14;
        }

        charBoxContext = self->_charBoxContext;
        flagCopy2 = flag;
        v19 = v10;
      }

      [(VNCCCharBoxContext *)charBoxContext setFlag:flagCopy2 atIndex:v19];
LABEL_14:
      ++v10;
    }

    while (v12 != v10);
  }
}

- (void)_generateFilteredPulseVector:(unint64_t)vector target:(unint64_t)target height:(unint64_t)height
{
  maxHeight = [(VNCCTextDetector *)self maxHeight];
  charBoxFlags = [(VNCCCharBoxContext *)self->_charBoxContext charBoxFlags];
  if (height >= 2)
  {
    LODWORD(v11) = 0;
    v12 = 0;
    v13 = *charBoxFlags;
    v14 = 1;
    do
    {
      v15 = v13;
      v13 = [(VNCCCharBoxContext *)self->_charBoxContext charBoxFlags][8 * v14];
      v16 = (v15 & vector) == 0 || (v13 & vector) != 0;
      if ((v13 & vector) != 0 && (v15 & vector) == 0)
      {
        v11 = v14;
      }

      else
      {
        v11 = v11;
      }

      if (!v16)
      {
        v12 = v14 - 1;
      }

      if (v11)
      {
        v17 = v12 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        if (v12 - v11 + 1 > maxHeight && v12 >= v11)
        {
          v19 = v12 + 1;
          do
          {
            [(VNCCCharBoxContext *)self->_charBoxContext clearFlag:target atIndex:v11];
            v11 = (v11 + 1);
          }

          while (v19 != v11);
        }

        v12 = 0;
        LODWORD(v11) = 0;
      }

      ++v14;
    }

    while (v14 != height);
  }
}

- (unsigned)_extractCharBoxCuts:(__CCBigBox *)cuts heightConstraint:(unsigned __int8)constraint medianHeightTopVector:(unsigned __int16 *)vector medianHeightBottomVector:(unsigned __int16 *)bottomVector isAdaptive:(BOOL)adaptive
{
  adaptiveCopy = adaptive;
  constraintCopy = constraint;
  if (adaptive)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  pulseVectorHeightCharBox = [(VNCCCharBoxContext *)self->_charBoxContext pulseVectorHeightCharBox];
  if (adaptiveCopy)
  {
    pulseVectorHeightCharBox = [(VNCCCharBoxContext *)self->_charBoxContext pulseVectorHeightCharBoxAdaptive];
  }

  v11 = pulseVectorHeightCharBox;
  loopBigBoxPrev = [(VNCCCharBoxContext *)self->_charBoxContext loopBigBoxPrev];
  if (loopBigBoxPrev >= [(VNCCCharBoxContext *)self->_charBoxContext loopBigBox])
  {
    return 0;
  }

  v13 = 0;
  v14 = 8 << v9;
  v15 = 2 << v9;
  v16 = loopBigBoxPrev;
  do
  {
    v17 = 0;
    v26 = v16;
    v18 = &cuts[v16];
    do
    {
      v19 = v18 + 10 * v17;
      v20 = *(v19 + 5);
      if (!*(v19 + 5))
      {
        break;
      }

      v21 = *(v19 + 6);
      [(VNCCCharBoxContext *)self->_charBoxContext setFlag:v14 atIndex:*(v19 + 5)];
      [(VNCCCharBoxContext *)self->_charBoxContext setFlag:v14 atIndex:v21];
      v11[v20] = v19[16] - v19[14];
      v11[v21] = v19[16] - v19[14];
      if (v20 <= v21)
      {
        v22 = v21 + 1;
        do
        {
          [(VNCCCharBoxContext *)self->_charBoxContext setFlag:v15 atIndex:v20];
          v20 = (v20 + 1);
        }

        while (v22 != v20);
      }

      v23 = *(v19 + 7);
      if (*(v19 + 8) - v23 >= constraintCopy)
      {
        vector[v13] = v23;
        bottomVector[v13] = *(v19 + 8);
        if ((v13 + 1) == 50)
        {
          v13 = 49;
        }

        else
        {
          ++v13;
        }
      }

      ++v17;
    }

    while (v17 != 50);
    v16 = v26 + 1;
  }

  while (v26 + 1 < [(VNCCCharBoxContext *)self->_charBoxContext loopBigBox]);
  return v13;
}

- (int)_generateCRCharBoxInformation_spaceBoxRemovalMagicThresh:(vImage_Buffer *)thresh magicMinHeight:(float)height magicMaxHeight:(float)maxHeight rowStartLocation2:(unsigned __int16)location2 magicThresh:(float *)magicThresh magicThreshPrev:(float *)prev useLowLightEnhancement:(unsigned __int8)enhancement
{
  location2Copy = location2;
  v9 = 0;
  v10 = 0;
  if (!magicThresh)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_66;
  }

  prevCopy = prev;
  v12 = 0;
  v13 = 0;
  if (prev)
  {
    v12 = malloc_type_calloc(0x32uLL, 4uLL, 0x100004052888210uLL);
    if (!v12)
    {
      v10 = 0;
      v9 = 0;
      v13 = 0;
      goto LABEL_66;
    }

    v13 = malloc_type_calloc(0x32uLL, 4uLL, 0x100004052888210uLL);
    if (!v13)
    {
      v10 = 0;
      v9 = 0;
      goto LABEL_66;
    }

    v18 = malloc_type_calloc(0x32uLL, 1uLL, 0x100004077774924uLL);
    v9 = v18;
    if (!v18)
    {
      v10 = 0;
      goto LABEL_66;
    }

    if (!thresh->width)
    {
      goto LABEL_48;
    }

    v64 = prevCopy;
    v19 = 0;
    v67 = 0;
    LODWORD(v20) = 0;
    v63 = thresh->data + thresh->rowBytes * location2Copy + 1;
    threshCopy3 = thresh;
    v65 = v18;
    do
    {
      if ([(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x8000 atIndex:v19])
      {
        v20 = v20 ? v20 : v19;
        if (v20 && v19)
        {
          v22 = (v19 - v20);
          v23 = v22 < height || v22 > maxHeight;
          if (!v23 && [(VNCCTextDetector *)self startSensitized]<= v20 && [(VNCCTextDetector *)self stopSensitized]>= v19)
          {
            medianHeightBottom = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom];
            medianHeightTop = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop];
            medianHeightTop2 = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop];
            medianHeightBottom2 = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom];
            v27 = 0.0;
            v28 = 0.0;
            v29 = 0.0;
            if (medianHeightTop2 <= medianHeightBottom2)
            {
              v61 = medianHeightBottom;
              v62 = v13;
              v30 = 0;
              v31 = 0;
              v32 = (medianHeightTop2 - location2Copy);
              do
              {
                if (v19 >= v20)
                {
                  v33 = v19 - v20 + 1;
                  v34 = &v63[4 * v20 + thresh->rowBytes * v32];
                  do
                  {
                    v35 = *v34;
                    v34 += 4;
                    v31 += v35;
                    v30 += v35 * v35;
                    --v33;
                  }

                  while (v33);
                }

                v23 = v32++ < ([(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom:v28]- location2Copy);
              }

              while (v23);
              *&v28 = v31;
              *&v29 = v30;
              v13 = v62;
              threshCopy3 = thresh;
              medianHeightBottom = v61;
            }

            v36 = (v19 - v20 + 1 + (v19 - v20 + 1) * (medianHeightBottom - medianHeightTop));
            v12[v67] = sqrtf((*&v29 / v36) - ((*&v28 / v36) * (*&v28 / v36)));
            if (v19 >= v20)
            {
              v37 = 0;
              do
              {
                v37 += [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:4096 atIndex:v20];
                v20 = (v20 + 1);
              }

              while (v19 + 1 != v20);
              v27 = v37;
              threshCopy3 = thresh;
            }

            v65[v67] = (v27 / v22) > 0.5;
            v9 = v65;
            if ((v67 + 1) >= 0x32u)
            {
              v38 = 50;
            }

            else
            {
              v38 = v67 + 1;
            }

            v67 = v38;
          }

          LODWORD(v20) = v19;
        }
      }

      ++v19;
    }

    while (threshCopy3->width > v19);
    v39 = v67;
    LODWORD(v40) = v67;
    prevCopy = v64;
    if (v67)
    {
      v41 = 100000.0;
      v42 = v9;
      v43 = v12;
      v44 = v67;
      do
      {
        v45 = *v42++;
        if (v45 == 1 && *v43 < v41)
        {
          v41 = *v43;
        }

        ++v43;
        --v44;
      }

      while (v44);
      if (v67 != 1)
      {
        v51 = 0;
        v52 = v41 + -0.1;
        v53 = v67 - 1;
        v54 = v12 + 1;
        do
        {
          v55 = v12[v51];
          v56 = v54;
          v57 = v53;
          do
          {
            v58 = *v56;
            if (*v56 < v55)
            {
              *v56 = v55;
              v12[v51] = v58;
              v55 = v58;
            }

            ++v56;
            --v57;
          }

          while (v57);
          ++v51;
          --v53;
          ++v54;
        }

        while (v51 != v67 - 1);
        *v13 = 0;
        v59 = v12 + 1;
        v60 = 1;
        while (1)
        {
          *&v13[v60] = *v59 - *(v59 - 1);
          if (v52 < *v59)
          {
            break;
          }

          ++v60;
          ++v59;
          if (v67 == v60)
          {
            goto LABEL_50;
          }
        }

        LODWORD(v40) = v60;
        goto LABEL_50;
      }

      *v13 = 0;
      v39 = 1;
    }

    else
    {
LABEL_48:
      v39 = 0;
      *v13 = 0;
    }

    LODWORD(v40) = 1;
LABEL_50:
    v46 = 0;
    v40 = v40;
    if (v40 <= 1uLL)
    {
      v40 = 1;
    }

    v47 = -1.0;
    v48 = 1;
    do
    {
      if (*&v13[v48] > v47)
      {
        v47 = *&v13[v48];
        v46 = v48;
      }

      ++v48;
      --v40;
    }

    while (v40);
    *magicThresh = 0.0;
    v49 = (v12[v46] + v12[v46 - 1]) * 0.5;
    *magicThresh = v49;
    if (v49 < 0.00001)
    {
      v49 = *prevCopy;
      *magicThresh = *prevCopy;
    }

    if (v49 > 19.0)
    {
      *magicThresh = 19.0;
      v49 = 19.0;
    }

    if (v47 < 11.0)
    {
      v49 = *v12 + -0.1;
      *magicThresh = v49;
    }

    v10 = 1;
    if (v39 >= 8u && v49 > 0.0)
    {
      *prevCopy = v49;
    }
  }

LABEL_66:
  free(v12);
  free(v13);
  free(v9);
  return v10;
}

- (void)_generateCRCharBoxInformation_spaceBoxRemovalHistogram:(vImage_Buffer *)histogram zcStartLeft:(unsigned __int16)left zcStopRight:(unsigned __int16)right rowStartLocation2:(unsigned __int16)location2 lowHighRGB:(__rgbMinMaxFloat *)b histCompliancePercent:(float *)percent varSpaceBox:(float *)box
{
  location2Copy = location2;
  rightCopy = right;
  leftCopy = left;
  boxCopy2 = box;
  data = histogram->data;
  rowBytes = histogram->rowBytes;
  if ([(VNCCTextDetector *)self ii]== 1)
  {
    v16 = b->var0 + -15.0;
    v17 = b->var1 + 15.0;
    v18 = b->var2 + -15.0;
    v19 = b->var4 + -15.0;
    v20 = b->var5 + 15.0;
    v21 = v17;
  }

  else
  {
    v20 = 0.0;
    v19 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v21 = 0.0;
    v16 = 0.0;
    if ([(VNCCTextDetector *)self ii]== 2)
    {
      if ([(VNCCTextDetector *)self profileNormal]== 1)
      {
        v16 = b[1].var0 + -60.0;
        v18 = b[1].var2 + -60.0;
        v19 = b[1].var4 + -60.0;
        v21 = fmaxf(b[1].var1 + 60.0, 100.0);
        v17 = fmaxf(b[1].var3 + 60.0, 100.0);
        v20 = fmaxf(b[1].var5 + 60.0, 100.0);
      }

      else
      {
        v16 = b->var0 + -60.0;
        v18 = b->var2 + -60.0;
        v19 = b->var4 + -60.0;
        v21 = b->var1 + 60.0;
        v17 = b->var3 + 60.0;
        v20 = b->var5 + 60.0;
      }
    }
  }

  medianHeightBottom = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom];
  medianHeightTop = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop];
  medianHeightTop2 = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop];
  v24 = medianHeightTop2 - location2Copy;
  medianHeightBottom2 = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom];
  v26 = ~location2Copy;
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  if ((medianHeightTop2 - location2Copy) < (medianHeightBottom2 + ~location2Copy))
  {
    percentCopy = percent;
    v30 = 0;
    v31 = 0;
    v32 = leftCopy;
    v33 = 0;
    v34 = location2Copy;
    v35 = rowBytes * location2Copy;
    v57 = rightCopy;
    v36 = (rightCopy - 2);
    v53 = medianHeightBottom;
    v54 = v32;
    v37 = v32 + 2;
    v38 = (v32 + 2);
    if (v36 <= v38)
    {
      v39 = (v32 + 2);
    }

    else
    {
      v39 = (rightCopy - 2);
    }

    v40 = medianHeightTop2 - v34;
    v41 = v24;
    v42 = v39 - v37 + 1;
    v60 = data + 4 * v37 + v35 + 2;
    v43 = v40 + 1;
    do
    {
      if (v38 <= v36)
      {
        v44 = (v60 + histogram->rowBytes * v43);
        v45 = v42;
        do
        {
          v46 = *(v44 - 1);
          LOBYTE(v27) = *v44;
          *&v27 = LODWORD(v27);
          v47 = v16 >= *&v27 || v21 <= *&v27;
          *&v27 = v46;
          if (!v47 && v18 < *&v27 && v17 > *&v27)
          {
            *&v27 = *(v44 - 2);
            v51 = v20 > *&v27 && v19 < *&v27;
            v30 += v51;
          }

          v44 += 4;
          v31 += v46;
          v33 += v46 * v46;
          --v45;
        }

        while (v45);
      }

      ++v41;
      ++v43;
    }

    while (v41 < [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom:v27]+ v26);
    *&v28 = v31;
    *&v27 = v33;
    *&v29 = v30;
    boxCopy2 = box;
    percent = percentCopy;
    rightCopy = v57;
    medianHeightBottom = v53;
    leftCopy = v54;
  }

  v52 = ((~medianHeightTop + medianHeightBottom) * (rightCopy - leftCopy - 3));
  *percent = *&v29 / v52;
  *boxCopy2 = (*&v27 / v52) - ((*&v28 / v52) * (*&v28 / v52));
}

- (void)_generateCRCharBoxInformation_spaceBoxRemovalTruthFilter:(float *)filter magicThresh:(float *)thresh zcStartLeft:(unsigned __int16)left zcStopRight:(unsigned __int16)right isSpaceBoxAccepted:(BOOL *)accepted histCompliancePercent:(float *)percent useLowLightEnhancement:(unsigned __int8)enhancement
{
  v10 = sqrtf(*filter);
  v11 = *thresh + -0.1;
  v12 = v11 > v10 && v10 > 4.0;
  if (v12)
  {
    leftCopy = left;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = right - left;
    if (right >= left)
    {
      percentCopy = percent;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = right + 1;
      do
      {
        v19 += [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:4096 atIndex:leftCopy, v14, v15, v16];
        v20 += [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:1 atIndex:leftCopy];
        [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:16 atIndex:leftCopy];
        v21 += [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:2 atIndex:leftCopy];
        [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:32 atIndex:leftCopy];
        leftCopy = (leftCopy + 1);
      }

      while (v22 != leftCopy);
      *&v16 = v19;
      *&v15 = v20;
      *&v14 = v21;
      percent = percentCopy;
    }

    v23 = fmaxf(fmaxf(*&v16 / (v17 + 1), *&v15 / (v17 + 1)), *&v14 / (v17 + 1)) > 0.9;
  }

  else
  {
    v23 = 0;
  }

  v25 = v11 <= v10 && v10 > 4.0;
  if (enhancement)
  {
    v26 = v25 || v23;
  }

  else
  {
    v26 = (v25 || v12 && v23) && *percent > 0.1;
  }

  *accepted = v26;
}

- (void)_generateCRCharBoxInformation_spaceBoxRemovalTightenBox:(vImage_Buffer *)box singleVotingImageAddressRef:(char *)ref adaptOut:(vImage_Buffer *)out textOut:(vImage_Buffer *)textOut zcStartLeft:(unsigned __int16)left zcStopRight:(unsigned __int16)right finalCoordinatesForStub:(__CCBox *)stub finalCoordinatesForStubRevised:(__CCBox *)self0 finalCharBoxCoordCount:(unint64_t *)self1 useLowLightEnhancement:(unsigned __int8)self2
{
  rightCopy = right;
  leftCopy = left;
  leftCopy2 = left;
  rightCopy2 = right;
  if (left - 2 <= right)
  {
    rightCopy3 = right;
  }

  else
  {
    rightCopy3 = left - 2;
  }

  while (1)
  {
    v19 = leftCopy2 - 2;
    if (leftCopy2 - 2 >= rightCopy2)
    {
      break;
    }

    v20 = *([(VNCCCharBoxContext *)self->_charBoxContext floatVectorSumProd]+ 4 * leftCopy2 - 4);
    v21 = (v20 - *([(VNCCCharBoxContext *)self->_charBoxContext floatVectorSumProd]+ 4 * leftCopy2++ - 8));
    if (v21 > 0.005)
    {
      rightCopy3 = v19;
      break;
    }
  }

  if (rightCopy3 <= leftCopy || rightCopy3 == rightCopy - 1)
  {
    v23 = leftCopy;
  }

  else
  {
    v23 = rightCopy3;
  }

  v24 = rightCopy + 2;
  if (rightCopy + 2 > v23)
  {
    while (1)
    {
      v25 = ([(VNCCCharBoxContext *)self->_charBoxContext floatVectorSumProd]+ 4 * rightCopy2)[4];
      if ((v25 - ([(VNCCCharBoxContext *)self->_charBoxContext floatVectorSumProd]+ 4 * rightCopy2)[8]) > 0.005)
      {
        break;
      }

      v26 = rightCopy2-- + 1;
      if (v26 <= v23)
      {
        v24 = v23;
        goto LABEL_18;
      }
    }

    v24 = rightCopy2 + 2;
  }

LABEL_18:
  if (v24 >= rightCopy || v24 == v23 + 1)
  {
    v28 = rightCopy;
  }

  else
  {
    v28 = v24;
  }

  medianHeightBottom = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom];
  if (medianHeightBottom - [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop]<= 34 && (v30 = v28, v28 - v23 >= [(VNCCTextDetector *)self minBoxWidth]- 1) || (v31 = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom], v31 - [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop]>= 35) && (v30 = v28, v28 - v23 >= [(VNCCTextDetector *)self minBoxWidth]+ 1))
  {
    height = box->height;
    v33 = vcvtd_n_f64_u32(v30 + v23, 1uLL);
    medianHeightBottom2 = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom];
    medianHeightTop = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop];
    if ([(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop]>= 0x15)
    {
      v34 = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop]- 20;
    }

    else
    {
      LOWORD(v34) = 1;
    }

    v35 = llroundf(v33);
    v36 = box->height;
    if (v36 >= [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom]+ 20)
    {
      LOWORD(v37) = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom]+ 20;
    }

    else
    {
      v37 = box->height;
    }

    LOWORD(v81) = v34;
    v38 = v37;
    [VNCCTextDetector computePulseVectorSum:"computePulseVectorSum:start:stop:imageHeight:imageWidth:bottomHeight:topHeight:" start:ref stop:v23 imageHeight:v28 imageWidth:v81 bottomHeight:? topHeight:?];
    v83 = v34;
    if (v38 > v34)
    {
      v39 = 0;
      v40 = 0;
      while (1)
      {
        if ([(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x40000 atIndex:(v39 + 1)])
        {
          if (![(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x40000 atIndex:v39])
          {
            v40 = v39 + 1;
          }
        }

        else
        {
          if (v40)
          {
            v42 = v39;
            v41 = height;
            goto LABEL_46;
          }

          v40 = 0;
        }

        v39 = (v39 + 1);
        if (v38 - v34 == v39)
        {
          goto LABEL_45;
        }
      }
    }

    v40 = 0;
LABEL_45:
    v41 = height;
    v42 = height;
LABEL_46:
    v43 = v42;
    if ([(VNCCCharBoxContext *)self->_charBoxContext charboxROIFullVectorRowStart][2 * v35])
    {
      v44 = [(VNCCCharBoxContext *)self->_charBoxContext charboxROIFullVectorRowStart][2 * v35];
      v45 = [(VNCCCharBoxContext *)self->_charBoxContext charboxROIFullVectorHeight2][2 * v35] + v44;
    }

    else
    {
      v44 = 0;
      v45 = v41;
    }

    v46 = medianHeightBottom2 - medianHeightTop;
    v87 = v43 - v40;
    if ([(VNCCCharBoxContext *)self->_charBoxContext filterWalkUpDownCount]< 3 || ([(VNCCCharBoxContext *)self->_charBoxContext posLL], v48 = v47, [(VNCCCharBoxContext *)self->_charBoxContext posUL], v48 <= v49) || ([(VNCCCharBoxContext *)self->_charBoxContext posLR], v51 = v50, [(VNCCCharBoxContext *)self->_charBoxContext posUR], v51 <= v52))
    {
      v57 = 1;
    }

    else
    {
      [(VNCCCharBoxContext *)self->_charBoxContext mTop];
      v54 = v53;
      v55 = v35;
      [(VNCCCharBoxContext *)self->_charBoxContext bTop];
      v57 = vcvtms_s32_f32(v56 + (v54 * v35));
      [(VNCCCharBoxContext *)self->_charBoxContext mBottom];
      v59 = v58;
      [(VNCCCharBoxContext *)self->_charBoxContext bBottom];
      v41 = llroundf(v60 + (v59 * v55));
    }

    v85 = v41;
    v61 = v41 - v57;
    medianHeightTop2 = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop];
    medianHeightBottom3 = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom];
    v64 = v46 - v87;
    if ((v64 & 0x80000000) != 0)
    {
      v64 = v87 - v46;
    }

    v65 = 3 * v46;
    v66 = v46 - (v45 - v44);
    if ((v66 & 0x80000000) != 0)
    {
      v66 = (v45 - v44) - v46;
    }

    v67 = v46 - v61;
    if ((v67 & 0x80000000) != 0)
    {
      v67 = v61 - v46;
    }

    if (v64 >= v65 || v64 >= v66 || v64 >= v67)
    {
      boxCopy2 = box;
      if (v66 >= v65 || v66 >= v64 || v66 >= v67)
      {
        v70 = v67 < v65 && v67 < v64;
        v71 = v67 < v66;
        if (v71 && v70)
        {
          v44 = v57;
        }

        else
        {
          v44 = medianHeightTop2;
        }

        if (v71 && v70)
        {
          v45 = v85;
        }

        else
        {
          v45 = medianHeightBottom3;
        }
      }
    }

    else
    {
      v44 = v83 + v40 - 1;
      v45 = v44 + v87;
      boxCopy2 = box;
    }

    v72 = vcvtmd_s64_f64(vcvtd_n_f64_s32([(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom]- [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop], 1uLL));
    if (enhancement)
    {
      textOutCopy = out;
    }

    else
    {
      textOutCopy = textOut;
    }

    v74 = *&textOutCopy->width;
    v91[0] = *&textOutCopy->data;
    v91[1] = v74;
    LOWORD(v82) = v72;
    v75 = [(VNCCTextDetector *)self tightenBox:v91 startTop:v44 startBottom:v45 startPosition:v23 stopPosition:v28 imageHeight:boxCopy2->height halfWalk:v82];
    var0 = v75.var0;
    v77 = HIWORD(*&v75) - v75.var0;
    if (v77 > [(VNCCTextDetector *)self minHeight])
    {
      v78 = *count;
      v79 = &stub[*count];
      v79->var0 = v23;
      v79->var1 = v28 - v23;
      v79->var2 = var0;
      v79->var3 = v77;
      revised[v78] = *v79;
      v80 = *count;
      if (*count != 199)
      {
        ++v80;
      }

      *count = v80;
    }
  }
}

- (__CCRange)tightenBox:(vImage_Buffer *)box startTop:(unsigned __int16)top startBottom:(unsigned __int16)bottom startPosition:(unsigned __int16)position stopPosition:(unsigned __int16)stopPosition imageHeight:(unint64_t)height halfWalk:(unsigned __int16)walk
{
  topCopy = top;
  if (top)
  {
    if (bottom > top && (top + 1) < height)
    {
      v10 = (bottom + 1);
      if (v10 < height)
      {
        data = box->data;
        if (position > stopPosition)
        {
          goto LABEL_17;
        }

        v12 = 0;
        rowBytes = box->rowBytes;
        v14 = stopPosition - position + 1;
        v15 = &data[rowBytes * top - 1 + position];
        do
        {
          v16 = *v15++;
          v12 += v16;
          --v14;
        }

        while (v14);
        if (v12)
        {
          if (walk)
          {
            v17 = 1;
            while (top != v17)
            {
              v18 = 0;
              v19 = &data[position - 1 + rowBytes * (top - v17)];
              v20 = stopPosition - position + 1;
              do
              {
                v21 = *v19++;
                v18 += v21;
                --v20;
              }

              while (v20);
              if (!v18)
              {
                topCopy = top - v17;
                goto LABEL_28;
              }

              if (walk < ++v17)
              {
                goto LABEL_28;
              }
            }
          }
        }

        else
        {
LABEL_17:
          if (walk)
          {
            v22 = 1;
            while (top + v22 + 1 < height)
            {
              if (position <= stopPosition)
              {
                v23 = 0;
                v24 = &data[position - 1 + box->rowBytes * (top + v22)];
                v25 = stopPosition - position + 1;
                do
                {
                  v26 = *v24++;
                  v23 += v26;
                  --v25;
                }

                while (v25);
                if (v23)
                {
                  topCopy = top + v22 - 1;
                  goto LABEL_28;
                }
              }

              if (walk < ++v22)
              {
                goto LABEL_28;
              }
            }
          }
        }

        if (position > stopPosition)
        {
          goto LABEL_41;
        }

LABEL_28:
        v27 = 0;
        v28 = box->rowBytes;
        v29 = stopPosition - position + 1;
        v30 = &data[v28 * bottom - 1 + position];
        do
        {
          v31 = *v30++;
          v27 += v31;
          --v29;
        }

        while (v29);
        if (v27)
        {
          if (walk && (bottom + 2) < height)
          {
            v32 = &data[position - 1];
            v33 = 1;
            while (1)
            {
              v34 = 0;
              v35 = (v32 + v28 * (bottom + v33));
              v36 = stopPosition - position + 1;
              do
              {
                v37 = *v35++;
                v34 += v37;
                --v36;
              }

              while (v36);
              if (!v34)
              {
                break;
              }

              if (++v33 > walk || v10 + v33 >= height)
              {
                return (topCopy | (bottom << 16));
              }
            }

            bottom += v33;
          }
        }

        else
        {
LABEL_41:
          if (walk)
          {
            v38 = &data[position - 1];
            v39 = 1;
            while (bottom != v39)
            {
              if (position <= stopPosition)
              {
                v40 = 0;
                v41 = (v38 + box->rowBytes * (bottom - v39));
                v42 = stopPosition - position + 1;
                do
                {
                  v43 = *v41++;
                  v40 += v43;
                  --v42;
                }

                while (v42);
                if (v40)
                {
                  bottom = bottom - v39 + 1;
                  return (topCopy | (bottom << 16));
                }
              }

              if (walk < ++v39)
              {
                return (topCopy | (bottom << 16));
              }
            }
          }
        }
      }
    }
  }

  return (topCopy | (bottom << 16));
}

- (int)computePulseVectorSum:(char *)sum start:(unsigned __int16)start stop:(unsigned __int16)stop imageHeight:(unint64_t)height imageWidth:(unint64_t)width bottomHeight:(unsigned __int16)bottomHeight topHeight:(unsigned __int16)topHeight
{
  stopCopy = stop;
  startCopy = start;
  v16 = stop - start;
  v17 = bottomHeight - topHeight + 1;
  v37 = stop - start + 1;
  v18 = malloc_type_calloc(v37 * v17, 4uLL, 0x100004052888210uLL);
  if (v18)
  {
    if (height - 5 >= (bottomHeight + 1))
    {
      v20 = v17;
    }

    else
    {
      v20 = height - 5 - topHeight;
    }

    v21 = v20;
    v22 = v18;
    if (v20)
    {
      v23 = 0;
      v24 = &sum[topHeight * width];
      v25 = v18;
      do
      {
        v26 = startCopy;
        if ((v16 & 0x80000000) == 0)
        {
          do
          {
            LOBYTE(v19) = v24[v26];
            v19 = LODWORD(v19);
            *v25++ = v19;
            ++v26;
          }

          while (stopCopy + 1 != v26);
        }

        v24 += width;
        ++v23;
      }

      while (v23 != v21);
      v27 = 0;
      do
      {
        [(VNCCCharBoxContext *)self->_charBoxContext clearFlag:0x40000 atIndex:v27];
        v27 = (v27 + 1);
      }

      while (v21 != v27);
    }

    minHeight = [(VNCCTextDetector *)self minHeight];
    maxHeight = [(VNCCTextDetector *)self maxHeight];
    WORD2(v36) = v37;
    HIDWORD(v35) = 1;
    LODWORD(v36) = v37;
    LOWORD(v35) = v37;
    LODWORD(v30) = 1025758986;
    LODWORD(v31) = 1017370378;
    LODWORD(v32) = 1005961871;
    v33 = [(VNCCTextDetector *)self _getFilterResultOut:0 defaultRows:480 bufferHeight:v21 minHeight:minHeight maxHeight:maxHeight startRange:0 stopRange:v30 startMaxFind:v31 stopMaxFind:v32 bytesPerRow:v35 thresholdSet:v36 sampleImageAddressRef:sum sampleImageFloatAddressRef:v22 pulseVectorFlag:0x40000];
  }

  else
  {
    v33 = 0;
    v22 = 0;
  }

  free(v22);
  return v33;
}

- (int)_generateCRCharBoxInformation_TrackBox:(__CCBox *)box finalCharBoxCoordCount:(unint64_t *)count
{
  v4 = 0;
  v5 = 0;
  if (box && count)
  {
    v5 = malloc_type_calloc(0xC8uLL, 1uLL, 0x100004077774924uLL);
    if (v5)
    {
      if (*count < 3)
      {
LABEL_69:
        v4 = 1;
        goto LABEL_70;
      }

      v9 = [(VNCCTextDetector *)self computeDependentTopAndBottomComponents:box finalCharBoxCoordCount:count];
      if (v9 == 1)
      {
        [(VNCCTextDetector *)self computeIndependentTopAndBottomComponents:box finalCharBoxCoordCount:count];
        if (*count)
        {
          v10 = 0;
          do
          {
            v5[v10++] = 1;
          }

          while (*count > v10);
          v11 = *count;
        }

        else
        {
          v11 = 0.0;
        }

        medianHeightBottom = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightBottom];
        medianHeightTop = [(VNCCCharBoxContext *)self->_charBoxContext medianHeightTop];
        v15 = *count;
        if (floor(vcvtd_n_f64_u64(*count, 1uLL)) < v11)
        {
          v16 = (medianHeightBottom - medianHeightTop);
          v17 = 0.2;
          HIWORD(v14) = 15820;
          do
          {
            if (v15)
            {
              v18 = 0;
              p_var3 = &box->var3;
              v20 = v15;
              do
              {
                v21 = *p_var3;
                p_var3 += 4;
                v22 = v16 - v21;
                if ((v16 - v21) < 0)
                {
                  v22 = -v22;
                }

                if ((v17 * v16) > v22)
                {
                  v5[v18] = 0;
                  if (v20)
                  {
                    --v20;
                  }

                  else
                  {
                    v20 = 0;
                  }

                  v15 = *count;
                }

                ++v18;
              }

              while (v15 > v18);
              v23 = v20;
            }

            else
            {
              v23 = 0.0;
            }

            v17 = v17 + 0.1;
          }

          while (floor(vcvtd_n_f64_u64(v15, 1uLL)) < v23);
        }

        v24 = v15 - 1;
        if (v15 - 1 >= 2)
        {
          v25 = 0;
          v26 = 1;
          do
          {
            if (v25 >= -1)
            {
              v27 = -1;
            }

            else
            {
              v27 = v25;
            }

            if (v5[v26] == 1)
            {
              v28 = &box[v26];
              v29 = v26;
              while ((--v29 & 0x8000) == 0)
              {
                if (!v5[v29])
                {
                  v30 = &box[v29];
                  var2 = v30->var2;
                  v32 = (v30->var3 + var2);
                  v33 = v29;
                  goto LABEL_39;
                }
              }

              var2 = 0;
              v32 = 0;
              v33 = v27;
              v29 = v27;
LABEL_39:
              v34 = v26;
              do
              {
                v35 = ++v34;
                if (v15 <= v34)
                {
                  v37 = 0;
                  v38 = 0;
                  if (var2)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_47;
                }
              }

              while (v5[v34]);
              v36 = &box[v34];
              v37 = v36->var2;
              v38 = (v36->var3 + v37);
              if (!var2)
              {
                goto LABEL_47;
              }

LABEL_45:
              if (!v37)
              {
                v28->var2 = var2;
                LOWORD(v37) = v32 - var2;
LABEL_53:
                v28->var3 = v37;
                goto LABEL_54;
              }

LABEL_47:
              if (!var2 && v37)
              {
                v28->var2 = v37;
                LOWORD(v37) = v38 - v37;
                goto LABEL_53;
              }

              if (var2 && v37)
              {
                v39 = ((v37 - var2) / (v35 - v33));
                v40 = (v28->var3 + v28->var2);
                LOWORD(v14) = box[v29].var2;
                v41 = (v26 - v33);
                v14 = LODWORD(v14);
                v42 = (roundf(v41 * v39) + v14);
                v28->var2 = v42;
                v37 = ((roundf(v41 * ((v38 - v32) / (v35 - v33))) + v40) - v42);
                goto LABEL_53;
              }

LABEL_54:
              v5[v26] = 0;
              v15 = *count;
            }

            ++v26;
            v24 = v15 - 1;
            ++v25;
          }

          while (v15 - 1 > v26);
        }

        if (*v5 == 1 && v15 >= 2)
        {
          v43 = 1;
          v44 = 1;
          while (v5[v43])
          {
            v43 = ++v44;
            if (v15 <= v44)
            {
              goto LABEL_63;
            }
          }

          *&box->var2 = *&box[v43].var2;
        }

LABEL_63:
        v4 = 1;
        if (v5[v24] == 1)
        {
          v45 = (v15 - 2);
          if ((v45 & 0x80000000) == 0)
          {
            while (v5[v45])
            {
              v46 = v45;
              LOWORD(v45) = v45 - 1;
              if (v46 < 1)
              {
                goto LABEL_70;
              }
            }

            *&box[v15 - 1].var2 = *&box[v45].var2;
            goto LABEL_69;
          }
        }
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_70:
  free(v5);
  return v4;
}

- (int)computeDependentTopAndBottomComponents:(__CCBox *)components finalCharBoxCoordCount:(unint64_t *)count
{
  v4 = 0;
  v5 = 0;
  if (components && count)
  {
    v4 = malloc_type_malloc(0x640uLL, 0x100004000313F17uLL);
    if (v4)
    {
      maxBoxWidth = [(VNCCTextDetector *)self maxBoxWidth];
      memcpy(v4, components, 8 * *count);
      if (*count - 1 >= 2)
      {
        v10 = *count - 2;
        v11 = v4 + 6;
        p_var3 = &components[1].var3;
        v13 = v4 + 6;
        while (1)
        {
          v14 = *v11;
          v15 = *(v11 - 4);
          v17 = v13[4];
          v13 += 4;
          v16 = v17;
          v18 = v11[1] + v14;
          v19 = *(v11 - 3) + v15;
          v20 = v11[5] + v17;
          v21 = v11[2] - (*(v11 - 1) + *(v11 - 2));
          v22 = v17 + 5;
          if (v15 + 5 >= v14 || v22 >= v14)
          {
            break;
          }

          v24 = v19;
          v25 = v20;
          if (v19 + 5 >= v18 || v20 + 5 >= v18)
          {
            break;
          }

          if (v21 < maxBoxWidth)
          {
            goto LABEL_36;
          }

LABEL_38:
          *(p_var3 - 1) = v15;
          *p_var3 = v19 - v15;
LABEL_39:
          p_var3 += 4;
          v11 = v13;
          if (!--v10)
          {
            goto LABEL_40;
          }
        }

        v27 = v15 - 5 <= v14 || v16 - 5 <= v14;
        if (v27 || (v24 = v19, v19 - 5 <= v18))
        {
          v30 = 0;
          v31 = 0;
          v29 = 1;
LABEL_30:
          if (v21 < maxBoxWidth)
          {
            LOWORD(v15) = v30;
            v19 = v31;
          }

          if (v29 && v21 < maxBoxWidth)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        v25 = v20;
        v28 = v20 - 5 <= v18;
        v29 = v28;
        if (v20 - 5 > v18)
        {
          v30 = v15;
        }

        else
        {
          v30 = 0;
        }

        if (v28)
        {
          v31 = 0;
        }

        else
        {
          v31 = v19;
        }

        if (v28 || v21 >= maxBoxWidth)
        {
          goto LABEL_30;
        }

LABEL_36:
        v32 = vcvtmd_s64_f64(vcvtd_n_f64_u32(v16 + v15, 1uLL));
        v33 = llround(vcvtd_n_f64_u32(v25 + v24, 1uLL));
        if (v21 < maxBoxWidth)
        {
          LOWORD(v15) = v32;
          v19 = v33;
        }

        goto LABEL_38;
      }

LABEL_40:
      [(VNCCTextDetector *)self groupEndpoints:components finalCharBoxCoordCount:count];
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  free(v4);
  return v5;
}

- (void)computeIndependentTopAndBottomComponents:(__CCBox *)components finalCharBoxCoordCount:(unint64_t *)count
{
  maxBoxWidth = [(VNCCTextDetector *)self maxBoxWidth];
  if (*count - 1 >= 2)
  {
    v8 = maxBoxWidth;
    v9 = *count - 2;
    p_var2 = &components[1].var2;
    v11 = &components[1].var2;
    while (1)
    {
      v12 = *p_var2;
      v13 = *(p_var2 - 4);
      v15 = v11[4];
      v11 += 4;
      v14 = v15;
      v16 = p_var2[1] + v12;
      v17 = *(p_var2 - 3) + v13;
      v18 = p_var2[5] + v15;
      v19 = p_var2[2] - (*(p_var2 - 1) + *(p_var2 - 2));
      if (v12 > v13 && v12 > v14)
      {
        break;
      }

      v22 = *p_var2 >= v13 || *p_var2 >= v14;
      v23 = !v22;
      if (v22)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(p_var2 - 4);
      }

      if (!v22 && v19 < v8)
      {
        goto LABEL_23;
      }

LABEL_24:
      v25 = (*(p_var2 - 3) + v13);
      if (v25 >= v16 || (p_var2[1] + v12) <= v18)
      {
        goto LABEL_29;
      }

      if (v19 >= v8)
      {
        goto LABEL_42;
      }

LABEL_40:
      v29 = llround(vcvtd_n_f64_u32(v25 + v18, 1uLL));
      v28 = 1;
LABEL_41:
      if (v19 >= v8)
      {
LABEL_42:
        v23 = 1;
        goto LABEL_43;
      }

      if (v23 && !v28)
      {
        *p_var2 = v24;
        v30 = v16 - v24;
        goto LABEL_51;
      }

      if (!v23 && v28)
      {
        v30 = v29 - v12;
        goto LABEL_51;
      }

      LOWORD(v13) = v24;
      v17 = v29;
      if (!v28)
      {
        goto LABEL_52;
      }

LABEL_43:
      if (v23)
      {
        *p_var2 = v13;
        v30 = v17 - v13;
LABEL_51:
        p_var2[1] = v30;
      }

LABEL_52:
      p_var2 = v11;
      if (!--v9)
      {
        goto LABEL_56;
      }
    }

    if (v19 >= v8)
    {
      v25 = (*(p_var2 - 3) + v13);
      v23 = 1;
      if (v25 >= v16)
      {
        v24 = *(p_var2 - 4);
      }

      else
      {
        v24 = *(p_var2 - 4);
        if ((p_var2[1] + v12) > v18)
        {
          goto LABEL_43;
        }
      }

LABEL_29:
      v27 = (p_var2[1] + v12) >= v17 || (p_var2[1] + v12) >= v18;
      v28 = !v27;
      if (v27)
      {
        v29 = 0;
      }

      else
      {
        v29 = *(p_var2 - 3) + v13;
      }

      if (v27 || v19 >= v8)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

LABEL_23:
    v24 = vcvtmd_s64_f64(vcvtd_n_f64_u32(v14 + v13, 1uLL));
    v23 = 1;
    goto LABEL_24;
  }

LABEL_56:

  [(VNCCTextDetector *)self groupEndpoints:components finalCharBoxCoordCount:count];
}

- (void)groupEndpoints:(__CCBox *)endpoints finalCharBoxCoordCount:(unint64_t *)count
{
  *&endpoints->var2 = *&endpoints[1].var2;
  v4 = &endpoints[*count];
  v4[-1].var2 = v4[-2].var2;
  v4[-1].var3 = v4[-2].var3;
}

- (void)_generateCC:(id)c ccBigBoxes:(__CCBigBox *)boxes textOut:(vImage_Buffer *)out countBigBox:(unsigned __int8)box bufferHeight:(unsigned __int16)height
{
  heightCopy = height;
  boxCopy = box;
  v150[5] = *MEMORY[0x1E69E9840];
  cCopy = c;
  selfCopy = self;
  memset(v142, 0, sizeof(v142));
  debugOut = [(VNCCTextDetector *)self debugOut];
  if (debugOut)
  {
    [(VNCCTextDetector *)self _allocateVImageWithWidth:out->width height:out->height rowBytes:4 * out->rowBytes imageOut:v142];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    c = CGBitmapContextCreate(v142[0].i64[0], v142[1].u64[0], v142[0].u64[1], 8uLL, v142[1].u64[1], DeviceRGB, 0x2006u);
    CGContextSetLineWidth(c, 3.0);
    CGColorSpaceRelease(DeviceRGB);
    if (!boxCopy)
    {
      goto LABEL_136;
    }
  }

  else
  {
    c = 0;
    if (!boxCopy)
    {
      goto LABEL_136;
    }
  }

  v10 = 0;
  v114 = boxCopy;
  do
  {
    v122 = v10;
    v11 = &boxes[v10];
    var0 = v11->var0;
    var2 = v11->var2;
    var1 = v11->var1;
    v121 = var1;
    v15 = var1 - var0;
    v16 = v11->var3 - var2;
    v144 = 0;
    v145 = 0uLL;
    v141[0] = 0;
    v141[1] = 0;
    v140 = v141;
    v128 = var0;
    v133 = var2;
    if (((var1 - var0) & 0x80000000) != 0)
    {
      goto LABEL_65;
    }

    v120 = v11;
    v17 = var1 - var0;
    v18 = 0;
    v19 = 0;
    v131 = out->data + out->rowBytes * var0 + var2;
    v20 = v16 + 1;
    v119 = v17;
    v125 = v17 + 1;
    v126 = v16;
    v21 = 1;
    do
    {
      __p = 0;
      v138 = 0;
      v139 = 0;
      LODWORD(v134) = 0;
      DWORD1(v134) = v19;
      *(&v134 + 1) = 0xFFFFFFFFLL;
      if (v16 < 0)
      {
        goto LABEL_22;
      }

      v22 = 0;
      v23 = 0;
      v24 = -1;
      for (i = v131; !*i; ++i)
      {
        if (v24 < 0)
        {
          goto LABEL_18;
        }

        std::vector<CGPoint>::push_back[abi:ne200100](&__p, &v134);
        *(&v134 + 1) = 0xFFFFFFFFLL;
        if (++v23 == v20)
        {
          goto LABEL_22;
        }

        v22 = 0;
        v24 = -1;
LABEL_19:
        ;
      }

      if (v24 == -1)
      {
        DWORD2(v134) = v23;
        v22 = 1;
        v24 = v23;
      }

      else
      {
        ++v22;
      }

      HIDWORD(v134) = v22;
LABEL_18:
      if (++v23 != v20)
      {
        goto LABEL_19;
      }

      if ((v24 & 0x80000000) == 0)
      {
        std::vector<CGPoint>::push_back[abi:ne200100](&__p, &v134);
      }

LABEL_22:
      v26 = v138;
      v27 = __p;
      v28 = __p;
      v129 = __p;
      if (__p != v138)
      {
        do
        {
          v29 = v19;
          v136 = 0;
          v30 = 0;
          if (!v18)
          {
            goto LABEL_35;
          }

          do
          {
            v31 = v28[2];
            v32 = v30[2];
            if (v31 < v30[3] + v32 && v28[3] + v31 > v32)
            {
              v33 = v136;
              v34 = *v30;
              if (v136)
              {
                if (v136 != v34)
                {
                  if (v136 < v34)
                  {
                    v143 = v30;
                    *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v140, *v30) + 8) = v33;
                  }

                  else
                  {
                    v143 = &v136;
                    *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v140, v136) + 8) = v34;
                  }
                }
              }

              else
              {
                v136 = *v30;
                *v28 = v34;
              }
            }

            v30 += 4;
          }

          while (v30 != v18);
          if (v136)
          {
            LODWORD(var2) = v133;
            v19 = v29;
          }

          else
          {
LABEL_35:
            v136 = v21;
            *v28 = v21;
            v143 = &v136;
            LODWORD(var2) = v133;
            v19 = v29;
            *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v140, v136) + 8) = v21++;
          }

          std::vector<CGPoint>::push_back[abi:ne200100](&v144, v28);
          v28 += 4;
        }

        while (v28 != v26);
        v27 = v26;
      }

      v35 = v27 - v129;
      if (v27 != v129)
      {
        if (!((v35 >> 4) >> 60))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(v35 >> 4);
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v16 = v126;
      if (v27 != v129)
      {
        memmove(0, v129, v35);
      }

      if (__p)
      {
        operator delete(__p);
      }

      v18 = (v27 - v129);
      v19 = (v19 + 1);
      v131 += out->rowBytes;
    }

    while (v19 != v125);
    v36 = v140;
    var0 = v128;
    v11 = v120;
    v15 = v119;
    if (v140 != v141)
    {
      do
      {
        v37 = *(v36 + 8);
        v38 = v141[0];
        if (!v141[0])
        {
          goto LABEL_56;
        }

        v39 = v141;
        do
        {
          v40 = v38;
          v41 = v39;
          v42 = *(v38 + 7);
          if (v42 >= v37)
          {
            v39 = v38;
          }

          v38 = v38[v42 < v37];
        }

        while (v38);
        if (v39 == v141)
        {
          goto LABEL_56;
        }

        if (v42 < v37)
        {
          v40 = v41;
        }

        if (v37 >= *(v40 + 7))
        {
          __p = v36 + 4;
          v37 = *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v140, v37) + 8);
          __p = v36 + 28;
          v43 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v140, *(v36 + 7));
        }

        else
        {
LABEL_56:
          __p = v36 + 4;
          v43 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v140, v37);
        }

        *(v43 + 8) = v37;
        v44 = v36[1];
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = v36[2];
            v46 = *v45 == v36;
            v36 = v45;
          }

          while (!v46);
        }

        v36 = v45;
      }

      while (v45 != v141);
    }

LABEL_65:
    v138 = 0;
    v139 = 0;
    __p = &v138;
    v47 = v145.i64[0];
    v48 = v144;
    v130 = v144;
    if (v144 == v145.i64[0])
    {
      if (debugOut)
      {
        *(&v134 + 1) = 0;
        v135 = 0;
        *&v134 = &v134 + 8;
        goto LABEL_104;
      }
    }

    else
    {
      do
      {
        *&v134 = v48;
        v49 = *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v140, *v48) + 8);
        LODWORD(v143) = v49;
        v50 = v138;
        if (!v138)
        {
          goto LABEL_75;
        }

        v51 = &v138;
        do
        {
          v52 = v50;
          v53 = v51;
          v54 = *(v50 + 7);
          if (v54 >= v49)
          {
            v51 = v50;
          }

          v50 = v50[v54 < v49];
        }

        while (v50);
        if (v51 == &v138)
        {
          goto LABEL_75;
        }

        if (v54 < v49)
        {
          v52 = v53;
        }

        if (v49 >= *(v52 + 7))
        {
          *&v134 = &v143;
          v59 = std::__tree<std::__value_type<int,__CCCharBox>,std::__map_value_compare<int,std::__value_type<int,__CCCharBox>,std::less<int>,true>,std::allocator<std::__value_type<int,__CCCharBox>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&__p, v49);
          v60 = v59[17];
          v61 = v48[2];
          if (v61 < v60)
          {
            LOWORD(v60) = v48[2];
          }

          v59[17] = v60;
          v62 = v59[18];
          v63 = v61 + v48[3] - 1;
          if (v63 > v62)
          {
            LOWORD(v62) = v63;
          }

          v59[18] = v62;
          v64 = v59[19];
          v65 = v48[1];
          if (v65 < v64)
          {
            LOWORD(v64) = v48[1];
          }

          v59[19] = v64;
          v66 = v59[20];
          if (v65 > v66)
          {
            LOWORD(v66) = v65;
          }

          v59[20] = v66;
        }

        else
        {
LABEL_75:
          v55 = v48[2];
          v56 = v48[3];
          v57 = v48[1];
          *&v134 = &v143;
          v58 = std::__tree<std::__value_type<int,__CCCharBox>,std::__map_value_compare<int,std::__value_type<int,__CCCharBox>,std::less<int>,true>,std::allocator<std::__value_type<int,__CCCharBox>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&__p, v49);
          *(v58 + 17) = v55;
          *(v58 + 18) = v56 + v55 - 1;
          *(v58 + 19) = v57;
          *(v58 + 20) = v57;
          var0 = v128;
        }

        v48 += 4;
      }

      while (v48 != v47);
      if (debugOut)
      {
        *(&v134 + 1) = 0;
        v135 = 0;
        *&v134 = &v134 + 8;
        if (v130 != v47)
        {
          v67 = 0;
          v68 = v130;
          do
          {
            v143 = v68;
            v69 = *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v140, *v68) + 8);
            v136 = v69;
            v70 = *(&v134 + 1);
            if (!*(&v134 + 1))
            {
              goto LABEL_99;
            }

            v71 = (&v134 + 8);
            do
            {
              v72 = v70;
              v73 = v71;
              v74 = *(v70 + 28);
              if (v74 >= v69)
              {
                v71 = v70;
              }

              v70 = *(v70 + 8 * (v74 < v69));
            }

            while (v70);
            if (v71 == (&v134 + 8))
            {
              goto LABEL_99;
            }

            if (v74 < v69)
            {
              v72 = v73;
            }

            if (v69 < *(v72 + 7))
            {
LABEL_99:
              v143 = &v136;
              *(std::__tree<std::__value_type<int,unsigned char>,std::__map_value_compare<int,std::__value_type<int,unsigned char>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned char>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v134, v69) + 32) = v67++;
              v69 = v136;
            }

            v143 = &v136;
            v75 = std::__tree<std::__value_type<int,unsigned char>,std::__map_value_compare<int,std::__value_type<int,unsigned char>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned char>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v134, v69);
            memset((v142[0].i64[0] + v142[1].i64[1] * (v68[1] + var0) + 4 * (v68[2] + var2)), ~(5 * *(v75 + 32)), 4 * v68[3]);
            v68 += 4;
          }

          while (v68 != v47);
        }

LABEL_104:
        CGContextSetRGBStrokeColor(c, 1.0, 0.0, 0.0, 0.5);
        v151.origin.x = var2;
        v151.origin.y = (v142[0].i64[1] - v121);
        v151.size.width = v16;
        v151.size.height = v15;
        CGContextStrokeRect(c, v151);
        std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(&v134 + 1));
      }
    }

    if (v15 <= 14)
    {
      v76 = 12;
    }

    else
    {
      v76 = 16;
    }

    if (heightCopy == 480)
    {
      v77 = v76;
    }

    else
    {
      v77 = 16;
    }

    string = [MEMORY[0x1E696AD60] string];
    string2 = [MEMORY[0x1E696AD60] string];
    pixelHeightCard = [(VNCCTextDetector *)selfCopy pixelHeightCard];
    pixelWidthCard = [(VNCCTextDetector *)selfCopy pixelWidthCard];
    [(VNCCTextDetector *)selfCopy mmHeightCard];
    v83 = v82;
    [(VNCCTextDetector *)selfCopy mmWidthCard];
    v85 = __p;
    if (__p == &v138)
    {
      goto LABEL_132;
    }

    v86 = v84;
    v87 = 0;
    var4 = v11->var4;
    v88 = pixelWidthCard;
    do
    {
      v89 = v85[18];
      v90 = v85[17];
      v91 = (v89 - v90);
      v92 = v85[20];
      v93 = v85[19];
      v94 = (v92 - v93);
      if (v91 >= 6 && v94 >= v77)
      {
        if (v87 >= 1)
        {
          [string appendString:{@", "}];
          [string2 appendString:{@", "}];
          LOWORD(v90) = v85[17];
          LOWORD(v89) = v85[18];
          LOWORD(v93) = v85[19];
          LOWORD(v92) = v85[20];
        }

        v96 = &var4[v87];
        LOWORD(v99) = v90 + v133;
        v96->var1 = v99;
        v97 = v89 + v133;
        v96->var2 = v89 + v133;
        var3 = v93 + v128;
        v96->var3 = v93 + v128;
        v96->var4 = v92 + v128;
        v99 = v99;
        v96->var0 = (v99 + v97 + 1) >> 1;
        if (debugOut)
        {
          CGContextSetRGBStrokeColor(c, 0.0, 1.0, 0.0, 0.5);
          v100 = v96->var1;
          v152.origin.x = v100;
          v101 = v96->var4;
          v152.origin.y = (v142[0].i64[1] - v101);
          v152.size.width = (v96->var2 - v100);
          v152.size.height = (v101 - v96->var3);
          CGContextStrokeRect(c, v152);
          v99 = v96->var1;
          var3 = v96->var3;
        }

        v102 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%i, %i}, {%i, %i}}", v99, var3, v91, v94];
        [string appendString:v102];

        v103 = v96->var4;
        v104 = v83 * ((pixelHeightCard - v103) / pixelHeightCard);
        if (v104 < 0.0)
        {
          v104 = 0.0;
        }

        v105 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%2.4f, %2.4f}, {%2.4f, %2.4f}}", (v86 * (v96->var1 / v88)), v104, (v86 * ((v96->var2 - v96->var1) / v88)), (v83 * ((v103 - v96->var3) / pixelHeightCard))];
        [string2 appendString:v105];

        if (v87 > 48)
        {
          goto LABEL_133;
        }

        ++v87;
      }

      v106 = *(v85 + 1);
      if (v106)
      {
        do
        {
          v107 = v106;
          v106 = *v106;
        }

        while (v106);
      }

      else
      {
        do
        {
          v107 = *(v85 + 2);
          v46 = *v107 == v85;
          v85 = v107;
        }

        while (!v46);
      }

      v85 = v107;
    }

    while (v107 != &v138);
    if (!v87)
    {
LABEL_132:
      v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{%i, %i}, {%i, %i}}", 1, 1, 1, 1];
      [string appendString:v108];
    }

LABEL_133:
    v149[0] = @"textBox";
    v149[1] = @"textBoxMM";
    v150[0] = &stru_1F1976900;
    v150[1] = &stru_1F1976900;
    v149[2] = @"charBox";
    v149[3] = @"charBoxMM";
    v150[2] = string;
    v150[3] = string2;
    v149[4] = @"charConfidence";
    v150[4] = @"{{1,1},{1,1}}";
    v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v150 forKeys:v149 count:5];
    [cCopy addObject:v109];

    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v138);
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v141[0]);
    if (v130)
    {
      operator delete(v130);
    }

    v10 = v122 + 1;
  }

  while (v122 + 1 != v114);
LABEL_136:
  if (debugOut)
  {
    debugFilename = [(VNCCTextDetector *)selfCopy debugFilename];
    v111 = [debugFilename stringByAppendingPathComponent:@"connectedComponents.png"];

    v112 = v111;
    uTF8String = [v111 UTF8String];
    v148 = 0;
    v147 = 7;
    v145 = vextq_s8(*(v142 + 8), *(v142 + 8), 8uLL);
    v144 = v142[0].i64[0];
    v146 = v142[1].i64[1];
    saveImage(uTF8String, &v144);
    CGContextRelease(c);
  }

  [(VNCCTextDetector *)selfCopy _freeVImage:v142];
}

- (int)_generateBoxes:(id)boxes pulseVector:(unint64_t)vector uImage:(vImage_Buffer *)image countBigBoxOut:(unint64_t *)out bigBoxes:(__CCBigBox *)bigBoxes bigBoxesA:(__CCBigBox *)a useLowLightEnhancement:(unsigned __int8)enhancement
{
  boxesCopy = boxes;
  v14 = boxesCopy;
  v15 = 0;
  v16 = 0;
  if (out && boxesCopy && bigBoxes)
  {
    v17 = 0;
    if (a)
    {
      v17 = malloc_type_calloc(image->width, 1uLL, 0x100004077774924uLL);
      if (v17)
      {
        v15 = malloc_type_calloc(image->width, 2uLL, 0x1000040BDFB0063uLL);
        if (v15)
        {
          v90 = v14;
          v18 = [v14 objectForKeyedSubscript:@"textBoxRevised"];

          if (!v18)
          {
            array = [MEMORY[0x1E695DF70] array];
            [v14 setObject:array forKeyedSubscript:@"textBoxRevised"];
          }

          v20 = [v14 objectForKeyedSubscript:@"textBoxRevisedNormalized"];

          if (!v20)
          {
            array2 = [MEMORY[0x1E695DF70] array];
            [v14 setObject:array2 forKeyedSubscript:@"textBoxRevisedNormalized"];
          }

          v22 = [v14 objectForKeyedSubscript:@"stubBox"];

          if (!v22)
          {
            array3 = [MEMORY[0x1E695DF70] array];
            [v14 setObject:array3 forKeyedSubscript:@"stubBox"];
          }

          v24 = [v14 objectForKeyedSubscript:@"stubBoxNormalized"];

          if (!v24)
          {
            array4 = [MEMORY[0x1E695DF70] array];
            [v14 setObject:array4 forKeyedSubscript:@"stubBoxNormalized"];
          }

          minHeight = [(VNCCTextDetector *)self minHeight];
          maxHeight = [(VNCCTextDetector *)self maxHeight];
          charBoxFlags = [(VNCCCharBoxContext *)self->_charBoxContext charBoxFlags];
          outCopy = out;
          if (image->height < 2)
          {
            v29 = 0;
            goto LABEL_113;
          }

          selfCopy = self;
          v29 = 0;
          v30 = maxHeight;
          v31 = 0;
          v32 = 0;
          v33 = *charBoxFlags;
          v34 = minHeight;
          v35 = 1;
          v91 = v30;
          v92 = v34;
          while (1)
          {
            v36 = [(VNCCCharBoxContext *)selfCopy->_charBoxContext charBoxFlags][8 * v35];
            if ((v33 & vector) != 0 || (v36 & vector) == 0)
            {
              v39 = v32;
            }

            else
            {
              v39 = v35;
            }

            v40 = v39 != 0;
            if ((v36 & vector) == 0 && v40)
            {
              v31 = v35 - 1;
            }

            if (!v31)
            {
              v40 = 0;
            }

            if (enhancement || !v40)
            {
              v57 = !v40;
              if (!enhancement)
              {
                v57 = 1;
              }

              if (v57)
              {
                v32 = v39;
                goto LABEL_105;
              }

              v58 = v31 - v39 + 1;
              if (v58 < v92 || v58 > v91)
              {
LABEL_103:
                v32 = 0;
              }

              else
              {
                v32 = 0;
                width = image->width;
                v61 = &bigBoxes[v29];
                v61->var0 = v39;
                v61->var1 = v31;
                v61->var2 = 16;
                width -= 16;
                v61->var3 = width;
                v62 = &a[v29];
                v62->var0 = v39;
                v62->var1 = v31;
                v62->var2 = 16;
                v62->var3 = width;
                if (v29 == 199)
                {
                  v29 = 199;
                }

                else
                {
                  ++v29;
                }
              }

              v31 = 0;
              goto LABEL_105;
            }

            v41 = v31 - v39 + 1;
            v42 = v41 < v92 || v41 > v91;
            v44 = xmmword_1A6027780;
            v43 = xmmword_1A6027790;
            v46 = xmmword_1A6027760;
            v45 = xmmword_1A6027770;
            if (v42)
            {
              goto LABEL_103;
            }

            if (v31 - v39 != -1)
            {
              bzero(v15, 2 * (v31 - v39) + 2);
              v46 = xmmword_1A6027760;
              v45 = xmmword_1A6027770;
              v44 = xmmword_1A6027780;
              v43 = xmmword_1A6027790;
            }

            v47 = image->width;
            v48 = v47 - v41;
            if (v47 > v47 - v41)
            {
              break;
            }

            if (v47)
            {
              goto LABEL_65;
            }

            v68 = 0;
LABEL_71:
            v69 = 0;
            if (v31 - v39 != -1)
            {
              v70 = v41;
              v71 = v17;
              do
              {
                v72 = *v71++;
                v69 += v72;
                --v70;
              }

              while (v70);
            }

            *&v15[2 * (v41 >> 1)] = v69;
            v73 = v68 - v41;
            if (v68 != v41)
            {
              v74 = &v15[2 * (v41 >> 1) + 2];
              v75 = v17;
              do
              {
                v76 = v75[v41];
                v77 = *v75++;
                v69 += v76 - v77;
                *v74 = v69;
                v74 += 2;
                --v73;
              }

              while (v73);
            }

            if (!v68)
            {
              goto LABEL_103;
            }

            v78 = 0;
            v79 = 0;
            v80 = 0;
            do
            {
              v37.i8[0] = v17[v78];
              *v37.i32 = v37.u32[0];
              if ((v41 / 5.0) < *v37.i32 && (v37.i16[0] = *&v15[2 * v78], *v37.i32 = v37.u32[0], ((v41 * v41) / 12.0) <= *v37.i32))
              {
                if (!v80)
                {
                  v80 = v78;
                }
              }

              else
              {
                if (!v80)
                {
                  goto LABEL_93;
                }

                v79 = v78 - 1;
              }

              if (v39 && v80 && v79 && v31)
              {
                v81 = v79 - 16;
                v82 = v80 + 16;
                if (v81 > v82)
                {
                  v83 = &bigBoxes[v29];
                  v83->var0 = v39;
                  v83->var1 = v31;
                  v83->var2 = v82;
                  v83->var3 = v81;
                  v84 = &a[v29];
                  v84->var0 = v39;
                  v84->var1 = v31;
                  v84->var2 = v82;
                  v84->var3 = v81;
                  ++v29;
                }

                v80 = 0;
                v79 = 0;
                if (v29 == 200)
                {
                  v29 = 199;
                }
              }

LABEL_93:
              ++v78;
            }

            while (v68 != v78);
            v32 = 0;
            if (v39 && v80 && !v79 && v31)
            {
              v85 = v80 + 16;
              if (v80 + 16 < v68)
              {
                v86 = &bigBoxes[v29];
                v86->var0 = v39;
                v86->var1 = v31;
                v86->var2 = v85;
                v86->var3 = v68;
                v87 = &a[v29];
                v87->var0 = v39;
                v87->var1 = v31;
                v87->var2 = v85;
                v87->var3 = v68;
                ++v29;
              }

              v32 = 0;
              v31 = 0;
              if (v29 == 200)
              {
                v29 = 199;
              }
            }

            else
            {
              v31 = 0;
            }

LABEL_105:
            ++v35;
            v33 = v36;
            if (image->height <= v35)
            {
LABEL_113:
              *outCopy = v29;
              v16 = 1;
              v14 = v90;
              goto LABEL_114;
            }
          }

          v49 = 0;
          v50 = v47 - v48;
          v51 = vdupq_n_s64(v50 - 1);
          v52 = &v15[2 * v48 + 8];
          do
          {
            v53 = vdupq_n_s64(v49);
            v54 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, v46)));
            if (vuzp1_s8(vuzp1_s16(v54, *v51.i8), *v51.i8).u8[0])
            {
              *(v52 - 4) = 0;
            }

            if (vuzp1_s8(vuzp1_s16(v54, *&v51), *&v51).i8[1])
            {
              *(v52 - 3) = 0;
            }

            if (vuzp1_s8(vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, v45)))), *&v51).i8[2])
            {
              *(v52 - 2) = 0;
              *(v52 - 1) = 0;
            }

            v55 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, v44)));
            if (vuzp1_s8(*&v51, vuzp1_s16(v55, *&v51)).i32[1])
            {
              *v52 = 0;
            }

            if (vuzp1_s8(*&v51, vuzp1_s16(v55, *&v51)).i8[5])
            {
              *(v52 + 1) = 0;
            }

            v56 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, v43)));
            v37 = vuzp1_s8(*v51.i8, vuzp1_s16(*v51.i8, v56));
            if (v37.i8[6])
            {
              *(v52 + 2) = 0;
            }

            if (vuzp1_s8(*&v51, vuzp1_s16(*&v51, v56)).i8[7])
            {
              *(v52 + 3) = 0;
            }

            v49 += 8;
            v52 += 16;
          }

          while (((v50 + 7) & 0xFFFFFFFFFFFFFFF8) != v49);
LABEL_65:
          v63 = 0;
          do
          {
            if (v39 <= v31)
            {
              v64 = 0;
              rowBytes = image->rowBytes;
              v66 = image->data + v39 * rowBytes;
              v67 = v31 - v39 + 1;
              do
              {
                v64 += v66[v63];
                v66 += rowBytes;
                --v67;
              }

              while (v67);
            }

            else
            {
              v64 = 0;
            }

            v17[v63++] = v64;
            v68 = image->width;
          }

          while (v68 > v63);
          goto LABEL_71;
        }

        v16 = 0;
      }

      else
      {
        v16 = 0;
        v15 = 0;
      }
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_114:
  free(v17);
  free(v15);

  return v16;
}

- (int)_generateSmoothedImage:(vImage_Buffer *)image uImage:(vImage_Buffer *)uImage
{
  height = image->height;
  width = image->width;
  v9 = malloc_type_calloc(4 * width * height + 24, 1uLL, 0x10000400CE834B2uLL);
  if (v9)
  {
    v10 = v9;
    *v9 = width;
    v9[1] = height;
    midRow = [(VNCCTextDetector *)self midRow];
    if (midRow <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = midRow;
    }

    v13 = (v12 - 1);
    v14 = image->height;
    if (v14 > v13)
    {
      data = image->data;
      v16 = v10 + 2;
      v17 = *v10;
      v19 = image->width;
      rowBytes = image->rowBytes;
      v20 = image->data + rowBytes * v13 + 1;
      v21 = v10 + 4 * *v10 * (v13 - 1) + 20;
      v22 = 4 * *v10;
      v23 = v10 + 4 * *v10 * v13 + 20;
      while (1)
      {
        v24 = data[rowBytes * v13];
        v25 = v13 - 1;
        if (v13)
        {
          if (v17)
          {
            break;
          }
        }

        if (v17)
        {
          v26 = v10[1];
          goto LABEL_15;
        }

LABEL_17:
        if (v19 >= 2)
        {
          v28 = 0;
          v29 = v23;
          v30 = v21;
          do
          {
            if (v17 <= v28 || v10[1] <= v13)
            {
              v31 = 0;
            }

            else
            {
              v31 = *(v29 - 1);
            }

            v32 = 0;
            v33 = v28 + 1;
            if (v13 && v17 > v33)
            {
              if (v10[1] <= v25)
              {
                v32 = 0;
              }

              else
              {
                v32 = *v30;
              }
            }

            v34 = v31 + v20[v28] + v32;
            if (v13 && v17 > v28 && v10[1] > v25)
            {
              v34 -= *(v30 - 1);
            }

            if (v17 > v33 && v10[1] > v13)
            {
              *v29 = v34;
            }

            ++v30;
            ++v29;
            ++v28;
          }

          while (v19 - 1 != v33);
        }

        ++v13;
        v20 += rowBytes;
        v21 += v22;
        v23 += v22;
        if (v13 == v14)
        {
          goto LABEL_37;
        }
      }

      v26 = v10[1];
      if (v26 <= v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = *(v16 + v17 * v25);
      }

      v24 += v27;
LABEL_15:
      if (v26 > v13)
      {
        *(v16 + v17 * v13) = v24;
      }

      goto LABEL_17;
    }

LABEL_37:
    if (midRow <= -4)
    {
      v35 = -4;
    }

    else
    {
      v35 = midRow;
    }

    v36 = (v35 + 4);
    if (v14 > v36)
    {
      v37 = v10 + 2;
      v38 = image->width;
      v39 = v36 - 4;
      v40 = v36 - 2;
      do
      {
        if (v38 >= 0x41)
        {
          v41 = 0;
          v42 = v36 - 4;
          v43 = uImage->data + uImage->rowBytes * v40 + 32;
          do
          {
            v44 = *v10;
            if (*v10 <= v41 + 64 || v10[1] <= v36)
            {
              v45 = 0;
            }

            else
            {
              v45 = *(v37 + v41 + v36 * v44 + 64);
            }

            v46 = 0;
            v47 = v41;
            if (v36 >= 4 && v44 > v41)
            {
              if (v10[1] <= v42)
              {
                v46 = 0;
              }

              else
              {
                v46 = *(v37 + v41 + v39 * v44);
              }
            }

            if (v44 <= v41 || v10[1] <= v36)
            {
              v48 = 0;
            }

            else
            {
              v48 = *(v37 + v41 + v36 * v44);
            }

            v49 = 0;
            if (v36 >= 4 && v44 > v41 + 64)
            {
              if (v10[1] <= v42)
              {
                v49 = 0;
              }

              else
              {
                v49 = *(v37 + v41 + v39 * v44 + 64);
              }
            }

            v43[v41] = v46 + v45 - (v48 + v49) > 2;
            v38 = image->width;
            ++v41;
          }

          while (v38 > v47 + 65);
          v14 = image->height;
        }

        ++v36;
        ++v39;
        ++v40;
      }

      while (v14 > v36);
    }

    free(v10);
    if ([(VNCCTextDetector *)self debugOut])
    {
      debugFilename = [(VNCCTextDetector *)self debugFilename];
      v51 = [debugFilename stringByAppendingPathComponent:@"selectedTextOutImageArray.png"];

      uTF8String = [v51 UTF8String];
      v53 = *&image->width;
      v59 = *&image->data;
      v60 = v53;
      saveVImage(uTF8String, &v59, 1280061496);
      debugFilename2 = [(VNCCTextDetector *)self debugFilename];
      v55 = [debugFilename2 stringByAppendingPathComponent:@"uOutImage.png"];

      uTF8String2 = [v55 UTF8String];
      v57 = *&uImage->width;
      v59 = *&uImage->data;
      v60 = v57;
      saveVImage(uTF8String2, &v59, 1280061496);
    }

    LODWORD(v9) = 1;
  }

  return v9;
}

- (int)_generateAdaptiveBinarization:(vImage_Buffer *)binarization adaptImage:(vImage_Buffer *)image useLowLightEnhancement:(unsigned __int8)enhancement
{
  enhancementCopy = enhancement;
  width = binarization->width;
  v10 = malloc_type_calloc((binarization->height + 128) * width, 4uLL, 0x100004052888210uLL);
  if (v10)
  {
    v11 = malloc_type_calloc((binarization->height + 128) * width, 4uLL, 0x100004052888210uLL);
    if (v11 && (v76 = (binarization->width + 63) & 0xFFFFFFFFFFFFFFC0, (v12 = malloc_type_calloc(v76 * (binarization->height + 128), 1uLL, 0x100004077774924uLL)) != 0))
    {
      v73 = width;
      imageCopy = image;
      v14 = 0;
      data = binarization->data;
      v16 = binarization->width;
      v17 = v16;
      v75 = v12;
      v18 = v12;
      v19 = v76;
      do
      {
        if (v17)
        {
          v20 = 0;
          v21 = data + 2;
          do
          {
            v22 = [(VNCCTextDetector *)self ii:v73];
            v23 = *(v21 - 1);
            if (v22 != 1)
            {
              v23 = ~v23;
            }

            v18[v20] = v23;
            if (enhancementCopy)
            {
              v18[v20] = *v21;
            }

            ++v20;
            v16 = binarization->width;
            v21 += 4;
          }

          while (v16 > v20);
          v17 = binarization->width;
          v19 = v76;
        }

        ++v14;
        v18 += v19;
        rowBytes = binarization->rowBytes;
        data += rowBytes;
      }

      while (v14 != 64);
      v26 = binarization->data;
      height = binarization->height;
      if (height)
      {
        v27 = 0;
        v28 = &v75[64 * v19];
        v29 = v16;
        do
        {
          if (v29)
          {
            v30 = 0;
            v31 = v26 + 2;
            do
            {
              v32 = [(VNCCTextDetector *)self ii:v73];
              v33 = *(v31 - 1);
              if (v32 != 1)
              {
                v33 = ~v33;
              }

              v28[v30] = v33;
              if (enhancementCopy)
              {
                v28[v30] = *v31;
              }

              ++v30;
              v16 = binarization->width;
              v31 += 4;
            }

            while (v16 > v30);
            rowBytes = binarization->rowBytes;
            height = binarization->height;
            v29 = binarization->width;
            v19 = v76;
          }

          ++v27;
          v28 += v19;
          v26 += rowBytes;
        }

        while (height > v27);
        v26 = binarization->data;
      }

      v34 = 0;
      v35 = &v26[rowBytes * (height - 66)];
      v36 = &v75[(height + 62) * v19];
      v37 = v16;
      do
      {
        if (v37)
        {
          v38 = 0;
          v39 = v35 + 2;
          do
          {
            v40 = [(VNCCTextDetector *)self ii:v73];
            v41 = *(v39 - 1);
            if (v40 != 1)
            {
              v41 = ~v41;
            }

            v36[v38] = v41;
            if (enhancementCopy)
            {
              v36[v38] = *v39;
            }

            ++v38;
            v16 = binarization->width;
            v39 += 4;
          }

          while (v16 > v38);
          rowBytes = binarization->rowBytes;
          v37 = binarization->width;
          v19 = v76;
        }

        ++v34;
        v36 += v19;
        v35 += rowBytes;
      }

      while (v34 != 64);
      v42 = binarization->height;
      v43 = imageCopy;
      v44 = v73;
      v45 = v75;
      if (v42 == -127)
      {
        goto LABEL_42;
      }

      v46 = 0;
      v47 = 0;
      v13 = v75;
      v48 = v11;
      v49 = v10;
      do
      {
        v50 = &v48[v73];
        v51 = &v49[v73];
        v52 = *v49 + v13[v19];
        *v51 = v52;
        v53 = *v48 + (v13[v19] * v13[v19]);
        *v50 = v53;
        v54 = v19 + 1;
        v55 = v46;
        v56 = v16 - 1;
        if (v16 >= 2)
        {
          do
          {
            v52 = v52 + v13[v54] + *(v10 + v55 + 4) - *(v10 + v55);
            *(&v10[v44 + 1] + v55) = v52;
            v53 = (*(v11 + v55 + 4) + (v53 + (v13[v54] * v13[v54]))) - *(v11 + v55);
            *(&v11[v44 + 1] + v55) = v53;
            v55 += 4;
            ++v54;
            --v56;
          }

          while (v56);
        }

        ++v47;
        v46 += v44 * 4;
        v13 += v19;
        v48 = v50;
        v49 = v51;
      }

      while (v47 != v42 + 127);
      if (v42 != 1)
      {
LABEL_42:
        v57 = 0;
        v58 = 0;
        v59 = imageCopy->data + 17;
        v60 = &v75[65 * v19 + 17];
        do
        {
          if (v16 >= 0x22)
          {
            v61 = 0;
            v62 = v57;
            do
            {
              v13 = *(v10 + v62 + 132);
              v63 = (*(v10 + v62) + *(&v10[129 * v73 + 33] + v62) - (*(&v10[129 * v73] + v62) + v13)) * 0.00023491;
              v64 = *(v11 + v62 + 132);
              v65 = sqrtf(((((*(&v11[129 * v73 + 33] + v62) + *(v11 + v62)) - *(&v11[129 * v73] + v62)) - v64) * 0.00023491) - (v63 * v63));
              LOBYTE(v64) = *(v60 + v61);
              *(v59 + v61) = (v63 + (v65 * 0.2)) < LODWORD(v64);
              v16 = binarization->width;
              v66 = v61 + 34;
              ++v61;
              v62 += 4;
            }

            while (v16 > v66);
            v42 = binarization->height;
          }

          ++v58;
          v60 += v19;
          v59 += imageCopy->rowBytes;
          v57 += v44 * 4;
        }

        while (v42 - 1 > v58);
      }

      if ([(VNCCTextDetector *)self debugOut:v13])
      {
        debugFilename = [(VNCCTextDetector *)self debugFilename];
        v68 = [debugFilename stringByAppendingPathComponent:@"adaptiveOutImage.png"];

        uTF8String = [v68 UTF8String];
        v70 = *&v43->width;
        v77[0] = *&v43->data;
        v77[1] = v70;
        saveVImage(uTF8String, v77, 1280061496);
      }

      v71 = 1;
    }

    else
    {
      v71 = 0;
      v45 = 0;
    }
  }

  else
  {
    v71 = 0;
    v45 = 0;
    v11 = 0;
  }

  free(v10);
  free(v11);
  free(v45);
  return v71;
}

- (int)_generateAndApplyColorProfileForImage:(vImage_Buffer *)image votingImage:(vImage_Buffer *)votingImage textOut:(vImage_Buffer *)out minMaxRGB:(__rgbMinMaxU8 *)b lowHighRGB:(__rgbMinMaxFloat *)gB numCropRows:(unsigned __int16)rows rowStartLocation:(unsigned __int16)location rowStopLocation:(unsigned __int16)self0 sumTextOutFirstPass:(unsigned int *)self1 useLowLightEnhancement:(unsigned __int8)self2
{
  selfCopy = self;
  v13 = 0;
  v14 = 0;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v83 = 0u;
  v81 = 0u;
  memset(v82, 0, sizeof(v82));
  v80 = 0u;
  v79 = 0;
  if (!b || !gB)
  {
    v16 = 0;
    goto LABEL_49;
  }

  v16 = 0;
  if (pass)
  {
    rowsCopy = rows;
    rowsCopy2 = rows;
    v22 = [VNCCTextDetector _allocateVImageWithWidth:"_allocateVImageWithWidth:height:rowBytes:imageOut:" height:? rowBytes:? imageOut:?];
    if (v22 != 1)
    {
      goto LABEL_47;
    }

    bCopy = b;
    v23 = *&image->width;
    v77 = *&image->data;
    v78 = v23;
    v75 = v80;
    v76 = v81;
    if (enhancement)
    {
      [(VNCCTextDetector *)selfCopy createLumaImageAlternative:&v77 lumaImageAlternative:&v75 numCropRows:rowsCopy rowStartLocation:location];
    }

    else
    {
      [(VNCCTextDetector *)selfCopy createLumaImage:&v77 lumaImage:&v75 numCropRows:rowsCopy rowStartLocation:location];
    }

    v77 = v80;
    v78 = v81;
    v22 = [(VNCCTextDetector *)selfCopy computeMainStub:&v77 numCropRows:rowsCopy numCropColsOut:&v79 + 2 maxY:&v79 start:?];
    if (v22 == 1 && (v22 = [VNCCTextDetector allocateColorProfileContext:selfCopy width:"allocateColorProfileContext:width:height:rowBytes:" height:v82 rowBytes:?], v22 == 1))
    {
      v24 = *&votingImage->width;
      v77 = *&votingImage->data;
      v78 = v24;
      [(VNCCTextDetector *)selfCopy getVotingHistogram:&v77 colorProfileContext:v82 startCC:v79 rowStartLocation:location];
      v77 = v80;
      v78 = v81;
      [(VNCCTextDetector *)selfCopy getLumaHistogram:&v77 startCC:v79 colorProfileContext:v82];
      [(VNCCTextDetector *)selfCopy determineColorProfileType:v82];
      v13 = malloc_type_malloc(4 * v89, 0x100004052888210uLL);
      if (v13)
      {
        v25 = malloc_type_malloc(4 * SDWORD1(v89), 0x100004052888210uLL);
        if (v25)
        {
          imageCopy = image;
          outCopy = out;
          v65 = v13;
          gBCopy = gB;
          v67 = selfCopy;
          *&v89 = 0;
          v68 = v25;
          if (rowsCopy)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            rowBytes = image->rowBytes;
            v72 = HIWORD(v79);
            v35 = v83;
            v36 = v85;
            v37 = image->data + 4 * v79 + rowBytes * location + 1;
            v70 = *(&v86 + 1);
            v71 = *(&v84 + 1);
            v38 = -1;
            v39 = v25;
            v40 = v13;
            v41 = -1;
            v42 = -1;
            v43 = -1;
            v44 = -1;
            v45 = -1;
            do
            {
              v46 = v37;
              v47 = v35;
              v48 = v36;
              v49 = v72;
              if (v72)
              {
                do
                {
                  v50 = *v47++;
                  if (v50 == 1)
                  {
                    v51 = *(v46 - 1);
                    if (v51 < v43)
                    {
                      v43 = *(v46 - 1);
                    }

                    v52 = *v46;
                    if (v52 < v44)
                    {
                      v44 = *v46;
                    }

                    v53 = v46[1];
                    if (v53 < v45)
                    {
                      v45 = v46[1];
                    }

                    if (v51 > v30)
                    {
                      v30 = *(v46 - 1);
                    }

                    if (v52 > v31)
                    {
                      v31 = *v46;
                    }

                    if (v53 > v32)
                    {
                      v32 = v46[1];
                    }

                    *v40 = v53;
                    v40[1] = *v46;
                    v40[2] = *(v46 - 1);
                    v40 += 4;
                    v33 = (v33 + 1);
                    LODWORD(v89) = v33;
                  }

                  if (*v48 == 1)
                  {
                    v54 = *(v46 - 1);
                    if (v54 < v38)
                    {
                      v38 = *(v46 - 1);
                    }

                    v55 = *v46;
                    if (v55 < v41)
                    {
                      v41 = *v46;
                    }

                    v56 = v46[1];
                    if (v56 < v42)
                    {
                      v42 = v46[1];
                    }

                    if (v54 > v27)
                    {
                      v27 = *(v46 - 1);
                    }

                    if (v55 > v28)
                    {
                      v28 = *v46;
                    }

                    if (v56 > v29)
                    {
                      v29 = v46[1];
                    }

                    *v39 = v56;
                    v39[1] = *v46;
                    v39[2] = *(v46 - 1);
                    v39 += 4;
                    v34 = (v34 + 1);
                    DWORD1(v89) = v34;
                  }

                  ++v48;
                  v46 += 4;
                  --v49;
                }

                while (v49);
              }

              ++v26;
              v36 += v70;
              v35 += v71;
              v37 += rowBytes;
            }

            while (v26 != rowsCopy2);
          }

          else
          {
            v34 = 0;
            v33 = 0;
            v32 = 0;
            v31 = 0;
            v30 = 0;
            v29 = 0;
            v28 = 0;
            v27 = 0;
            v45 = -1;
            v44 = -1;
            v43 = -1;
            v42 = -1;
            v41 = -1;
            v38 = -1;
          }

          bCopy->var0 = v45;
          bCopy->var1 = v32;
          bCopy->var2 = v44;
          bCopy->var3 = v31;
          bCopy->var4 = v43;
          bCopy->var5 = v30;
          bCopy[1].var0 = v42;
          bCopy[1].var1 = v29;
          bCopy[1].var2 = v41;
          bCopy[1].var3 = v28;
          bCopy[1].var4 = v38;
          bCopy[1].var5 = v27;
          selfCopy = v67;
          v13 = v65;
          v14 = [VNCCTextDetector generateHistogramBounds:v67 rgbVector2Ref:"generateHistogramBounds:rgbVector2Ref:numPixels1:numPixels2:minMaxRGB:lowHighRGB:" numPixels1:v65 numPixels2:v68 minMaxRGB:v33 lowHighRGB:v34];
          if (v14 == 1)
          {
            v59 = [(VNCCTextDetector *)v67 ii];
            v60 = 1;
            if (v59 == 1)
            {
              v60 = 0;
            }

            v61 = *&imageCopy->width;
            v77 = *&imageCopy->data;
            v78 = v61;
            v62 = *&outCopy->width;
            v75 = *&outCopy->data;
            v76 = v62;
            *pass = [(VNCCTextDetector *)v67 _generateBinarizationForImage:&v77 textOut:&v75 firstOrSecondPassIndicator:0 minMaxRGB:&gBCopy[v60]];
          }

          v16 = v68;
          goto LABEL_49;
        }
      }

      v14 = 0;
    }

    else
    {
LABEL_47:
      v14 = v22;
      v13 = 0;
    }

    v16 = 0;
  }

LABEL_49:
  v57 = v16;
  free(v13);
  free(v57);
  [(VNCCTextDetector *)selfCopy freeColorProfileContext:v82];
  [(VNCCTextDetector *)selfCopy _freeVImage:&v80];
  return v14;
}

- (void)freeColorProfileContext:(__CCColorProfileContext *)context
{
  if (context)
  {
    [(VNCCTextDetector *)self _freeVImage:?];
    [(VNCCTextDetector *)self _freeVImage:&context->var1];
    [(VNCCTextDetector *)self _freeVImage:&context->var2];

    [(VNCCTextDetector *)self _freeVImage:&context->var3];
  }
}

- (int)allocateColorProfileContext:(__CCColorProfileContext *)context width:(unsigned __int16)width height:(unsigned __int16)height rowBytes:(unint64_t)bytes
{
  heightCopy = height;
  widthCopy = width;
  [VNError VNAssert:context != 0 log:@"color profile context must not be NULL"];
  *&context->var2.data = 0u;
  *&context->var3.data = 0u;
  *&context->var3.width = 0u;
  *&context->var2.width = 0u;
  *&context->var1.data = 0u;
  *&context->var1.width = 0u;
  *&context->var0.data = 0u;
  *&context->var0.width = 0u;
  result = [(VNCCTextDetector *)self _allocateVImageWithWidth:widthCopy height:heightCopy rowBytes:bytes imageOut:context];
  if (result == 1)
  {
    result = [(VNCCTextDetector *)self _allocateVImageWithWidth:widthCopy height:heightCopy rowBytes:bytes imageOut:&context->var1];
    if (result == 1)
    {
      result = [(VNCCTextDetector *)self _allocateVImageWithWidth:widthCopy height:heightCopy rowBytes:bytes imageOut:&context->var2];
      if (result == 1)
      {
        result = [(VNCCTextDetector *)self _allocateVImageWithWidth:widthCopy height:heightCopy rowBytes:bytes imageOut:&context->var3];
        if (result == 1)
        {
          context->var6 = widthCopy;
          context->var7 = heightCopy;
        }
      }
    }
  }

  return result;
}

- (void)determineColorProfileType:(__CCColorProfileContext *)type
{
  if (type->var7)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    data = type->var0.data;
    var6 = type->var6;
    v11 = var6 & 0xFFF0;
    v12 = type->var2.data;
    v13 = type->var3.data;
    v14 = type->var1.data;
    v15.i64[0] = 0x101010101010101;
    v15.i64[1] = 0x101010101010101;
    do
    {
      if ((var6 & 0xFFF0) != 0)
      {
        v16 = 0;
        do
        {
          v17 = *&v14[v16];
          v18 = *&v12[v16];
          v19 = *&v13[v16];
          v20 = vceqq_s8(*&data[v16], v15);
          v21 = vandq_s8(v19, vceqq_s8(v17, v15));
          v22 = vandq_s8(v19, vceqq_s8(v18, v15));
          v21.i16[0] = vaddlvq_u8(v21);
          v6 += v21.i32[0];
          v22.i16[0] = vaddlvq_u8(v22);
          v7 += v22.i32[0];
          v4 += vaddvq_s8(vandq_s8(v17, v20));
          v5 += vaddvq_s8(vandq_s8(v18, v20));
          v16 += 16;
        }

        while (v16 < v11);
        v23 = &v14[v16];
        v24 = &v12[v16];
        v25 = &data[v16];
        v26 = &v13[v16];
        v27 = ((v11 - 1) & 0xFFFFFFF0) + 16;
      }

      else
      {
        v27 = 0;
        v26 = v13;
        v25 = data;
        v24 = v12;
        v23 = v14;
      }

      v28 = var6 >= v27;
      v29 = var6 - v27;
      if (v29 != 0 && v28)
      {
        do
        {
          v31 = *v23++;
          v30 = v31;
          v33 = *v25++;
          v32 = v33;
          v4 += v33 * v30;
          v35 = *v24++;
          v34 = v35;
          v5 += v35 * v32;
          v36 = *v26++;
          v6 += v36 * v30;
          v7 += v36 * v34;
          --v29;
        }

        while (v29);
      }

      ++v8;
      v14 += type->var1.rowBytes;
      v12 += type->var2.rowBytes;
      data += type->var0.rowBytes;
      v13 += type->var3.rowBytes;
    }

    while (v8 < type->var7);
    v37 = v6;
    v38 = v7;
    v39 = v4;
    v40 = v5;
  }

  else
  {
    v38 = 0.0;
    v37 = 0.0;
    v40 = 0.0;
    v39 = 0.0;
  }

  var4 = type->var4;
  v42 = v37 / var4;
  var5 = type->var5;
  v44 = v39 / var4;
  v45 = v40 / var5;
  v46 = v38 / var5;
  if ((v39 / var4) <= (v40 / var5) || v42 <= v46)
  {
    [(VNCCTextDetector *)self setIi:2];
    if (v44 < v45)
    {
      if (v42 <= 115.0 || v46 >= 40.0)
      {
        selfCopy2 = self;
        v48 = 0;
      }

      else
      {
        selfCopy2 = self;
        v48 = 1;
      }

      [(VNCCTextDetector *)selfCopy2 setProfileNormal:v48];
    }
  }

  else
  {

    [(VNCCTextDetector *)self setIi:1];
  }
}

- (int)computeMainStub:(vImage_Buffer *)stub numCropRows:(unsigned __int16)rows numCropColsOut:(unsigned __int16 *)out maxY:(float)y start:(unsigned __int16 *)start
{
  v7 = 0;
  v8 = 0;
  if (out)
  {
    v9 = 0;
    if (start)
    {
      rowsCopy = rows;
      *out = 0;
      v9 = malloc_type_calloc(stub->width, 4uLL, 0x100004052888210uLL);
      if (v9)
      {
        v15 = malloc_type_calloc(stub->width, 4uLL, 0x100004052888210uLL);
        v7 = v15;
        if (v15)
        {
          v16 = 1.0 / ((rowsCopy * 5.0) * y);
          v17 = v16 / y;
          data = stub->data;
          if (rowsCopy)
          {
            v19 = 0;
            rowBytes = stub->rowBytes;
            v21 = 0.0;
            v22 = stub->data;
            do
            {
              v23 = 0;
              v24 = v22;
              do
              {
                v25 = *v24++;
                v21 = v21 + v25;
                v26 = v23++ >= 4;
              }

              while (!v26);
              ++v19;
              v22 += rowBytes;
            }

            while (rowsCopy > v19);
            v27 = 0;
            v9[2] = v16 * v21;
            v28 = 0.0;
            v29 = data;
            do
            {
              v30 = 0;
              v31 = v29;
              do
              {
                v32 = *v31++;
                v28 = v28 + ((v32 - (v16 * v21)) * (v32 - (v16 * v21)));
                v26 = v30++ >= 4;
              }

              while (!v26);
              ++v27;
              v29 += rowBytes;
            }

            while (rowsCopy > v27);
          }

          else
          {
            v21 = 0.0;
            v9[2] = v16 * 0.0;
            v28 = 0.0;
          }

          v33 = v17 * v28;
          *(v15 + 2) = v33;
          v34 = stub->width - 2;
          if (v34 >= 4)
          {
            v35 = 3;
            v36 = data;
            do
            {
              if (rowsCopy)
              {
                v37 = 0;
                v38 = v36;
                do
                {
                  LOBYTE(v33) = v38[5];
                  *&v39 = LODWORD(v33);
                  v40 = v21 + *&v39;
                  LOBYTE(v39) = *v38;
                  v33 = v39;
                  v21 = v40 - v33;
                  ++v37;
                  v38 += stub->rowBytes;
                }

                while (rowsCopy > v37);
              }

              v33 = v16 * v21;
              v9[v35++] = v16 * v21;
              ++v36;
            }

            while (v35 != v34);
            for (i = 3; i != v34; ++i)
            {
              if (rowsCopy)
              {
                v42 = 0;
                v43 = i + 2;
                v44 = 0.0;
                v45 = data;
                do
                {
                  if (v43 >= (i - 2))
                  {
                    v46 = i - 2;
                    do
                    {
                      LOBYTE(v33) = v45[v46];
                      v33 = LODWORD(v33) + (-v9[i] * y);
                      v44 = v44 + (v33 * v33);
                      ++v46;
                    }

                    while (v43 >= v46);
                  }

                  ++v42;
                  v45 += stub->rowBytes;
                }

                while (rowsCopy > v42);
              }

              else
              {
                v44 = 0.0;
              }

              *(v15 + i) = v17 * v44;
            }
          }

          *out = [VNCCTextDetector computeNumCropCols:"computeNumCropCols:width:start:" width:v15 start:?];
          v8 = 1;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
        v7 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  free(v9);
  free(v7);
  return v8;
}

- (unsigned)computeNumCropCols:(float *)cols width:(unint64_t)width start:(unsigned __int16 *)start
{
  if (width)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = cols[v5];
      if (v10 >= 0.0025)
      {
        ++v8;
      }

      else
      {
        v8 = 0;
      }

      if (v10 < 0.0025)
      {
        ++v7;
      }

      else
      {
        v7 = 0;
      }

      v11 = v6 - 25;
      if ((v6 - 25) >= 5u)
      {
        v12 = v6 - 25;
      }

      else
      {
        v12 = 50;
      }

      if (v8 <= 0x19u)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (v6 > 0xAFu)
      {
        v13 = 50;
      }

      if (!v9)
      {
        v9 = v13;
      }

      if (v9 && v7 > 0x19u)
      {
        break;
      }

      v5 = ++v6;
      if (v6 >= width)
      {
        if (v9)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    widthCopy2 = width;
    v15 = (width * 0.75);
    if (v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_23:
    v9 = 50;
LABEL_24:
    widthCopy2 = width;
    v15 = (width * 0.75);
  }

  v11 = v15;
LABEL_26:
  if (v11 - v9 >= (widthCopy2 * 0.15))
  {
    LOWORD(v15) = v11;
  }

  else
  {
    v9 = 50;
  }

  *start = v9;
  return v15 - v9 + 1;
}

- (void)getLumaHistogram:(vImage_Buffer *)histogram startCC:(unsigned __int16)c colorProfileContext:(__CCColorProfileContext *)context
{
  cCopy = c;
  v33 = *MEMORY[0x1E69E9840];
  var7 = context->var7;
  var6 = context->var6;
  bzero(v32, 0x400uLL);
  data = histogram->data;
  if (var7)
  {
    v11 = 0;
    rowBytes = histogram->rowBytes;
    v13 = histogram->data;
    do
    {
      if (var6)
      {
        v14 = 0;
        v15 = cCopy;
        do
        {
          ++v32[v13[v15]];
          ++v14;
          ++v15;
        }

        while (var6 > v14);
      }

      ++v11;
      v13 += rowBytes;
    }

    while (var7 > v11);
  }

  v16 = 0;
  v17 = (var7 * 0.2 * var6);
  v18 = 255;
  while (1)
  {
    v16 += v32[v18];
    if (v16 >= v17)
    {
      break;
    }

    v19 = v18-- != 0;
    if (v18 == 0 || !v19)
    {
      v18 = 0;
      break;
    }
  }

  v20 = 0;
  v21 = 0;
  do
  {
    v21 += v32[v20];
    if (v21 >= v17)
    {
      break;
    }

    ++v20;
  }

  while (v20 != 256);
  if (var7)
  {
    v22 = 0;
    v23 = context->var3.data;
    v24 = context->var2.data;
    v25 = context->var1.data;
    do
    {
      if (var6)
      {
        v26 = 0;
        v27 = &data[cCopy];
        v28 = v23;
        v29 = v24;
        v30 = v25;
        do
        {
          v31 = *v27++;
          *v30++ = v18 <= v31;
          *v29++ = v20 >= v31;
          *v28++ = v31;
          ++v26;
          var6 = context->var6;
        }

        while (var6 > v26);
        LOWORD(var7) = context->var7;
      }

      else
      {
        LOWORD(var6) = 0;
      }

      ++v22;
      v25 += context->var1.rowBytes;
      v24 += context->var2.rowBytes;
      v23 += context->var3.rowBytes;
      data += histogram->rowBytes;
    }

    while (v22 < var7);
  }

  context->var4 = v16;
  context->var5 = v21;
}

- (void)getVotingHistogram:(vImage_Buffer *)histogram colorProfileContext:(__CCColorProfileContext *)context startCC:(unsigned __int16)c rowStartLocation:(unsigned __int16)location
{
  v29 = *MEMORY[0x1E69E9840];
  rowBytes = histogram->rowBytes;
  var7 = context->var7;
  var6 = context->var6;
  v11 = (histogram->data + rowBytes * location + c);
  bzero(v28, 0x400uLL);
  if (var7)
  {
    v12 = 0;
    v13 = v11;
    do
    {
      if (var6)
      {
        v14 = 0;
        do
        {
          ++v28[v13->u8[v14++]];
        }

        while (var6 > v14);
      }

      ++v12;
      v13 = (v13 + rowBytes);
    }

    while (var7 > v12);
  }

  v15 = 0;
  v16 = 255;
  while (1)
  {
    v15 += v28[v16];
    if (v15 > (var7 * 0.2 * var6))
    {
      break;
    }

    v17 = v16-- != 0;
    if (v16 == 0 || !v17)
    {
      v16 = 0;
      break;
    }
  }

  if (var7)
  {
    v18 = 0;
    v19 = vdupq_n_s8(v16);
    data = context->var0.data;
    v21.i64[0] = 0x101010101010101;
    v21.i64[1] = 0x101010101010101;
    do
    {
      v22 = var6;
      if (var6 < 0x10u)
      {
        v23 = 0;
        v25 = v11;
        v24 = data;
      }

      else
      {
        v23 = 0;
        v24 = data;
        v25 = v11;
        do
        {
          v26 = *v25++;
          *v24++ = vandq_s8(vcgeq_u8(v26, v19), v21);
          v23 += 16;
          v22 = context->var6;
        }

        while (v23 < (v22 - 15));
        LOWORD(var6) = context->var6;
      }

      if (v23 < v22)
      {
        do
        {
          v27 = v25->u8[0];
          v25 = (v25 + 1);
          v24->i8[0] = v16 <= v27;
          v24 = (v24 + 1);
          ++v23;
          var6 = context->var6;
        }

        while (v23 < var6);
      }

      ++v18;
      v11 = (v11 + histogram->rowBytes);
      data = (data + context->var0.rowBytes);
    }

    while (v18 < context->var7);
  }
}

- (float)createLumaImageAlternative:(vImage_Buffer *)alternative lumaImageAlternative:(vImage_Buffer *)imageAlternative numCropRows:(unsigned __int16)rows rowStartLocation:(unsigned __int16)location
{
  if (!rows)
  {
    return 0.0;
  }

  v6 = 0;
  data = imageAlternative->data;
  width = alternative->width;
  rowBytes = alternative->rowBytes;
  v10 = alternative->data + rowBytes * location;
  result = 0.0;
  do
  {
    if (width)
    {
      v12 = 0;
      v13 = (v10 + 2);
      do
      {
        v15 = *v13;
        v13 += 4;
        v14 = v15;
        v16 = v15;
        if (result < v15)
        {
          result = v16;
        }

        data[v12++] = v14;
        width = alternative->width;
      }

      while (width > v12);
      rowBytes = alternative->rowBytes;
    }

    ++v6;
    v10 += rowBytes;
    data += imageAlternative->rowBytes;
  }

  while (v6 < rows);
  return result;
}

- (float)createLumaImage:(vImage_Buffer *)image lumaImage:(vImage_Buffer *)lumaImage numCropRows:(unsigned __int16)rows rowStartLocation:(unsigned __int16)location
{
  if (rows)
  {
    v6 = 0;
    data = lumaImage->data;
    width = image->width;
    result = 0.0;
    v10.i64[0] = 0x1D1D1D1D1D1D1D1DLL;
    v10.i64[1] = 0x1D1D1D1D1D1D1D1DLL;
    v11 = image->data + image->rowBytes * location;
    v12.i64[0] = 0x9696969696969696;
    v12.i64[1] = 0x9696969696969696;
    v13.i64[0] = 0x4A4A4A4A4A4A4A4ALL;
    v13.i64[1] = 0x4A4A4A4A4A4A4A4ALL;
    while (1)
    {
      if (width == 15)
      {
        v14 = 0;
        v15 = v11;
        v16 = data;
      }

      else
      {
        v17 = 0;
        v15 = v11;
        do
        {
          v24 = vld4q_s8(v15);
          v15 += 64;
          v18.i64[0] = 0x80008000800080;
          v18.i64[1] = 0x80008000800080;
          v19.i64[0] = 0x80008000800080;
          v19.i64[1] = 0x80008000800080;
          v20 = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmlal_u8(vmlal_u8(v18, *v24.val[0].i8, 0x1D1D1D1D1D1D1D1DLL), *v24.val[1].i8, 0x9696969696969696), *v24.val[2].i8, 0x4A4A4A4A4A4A4A4ALL), 0), vmlal_high_u8(vmlal_high_u8(vmlal_high_u8(v19, v24.val[0], v10), v24.val[1], v12), v24.val[2], v13), 0);
          v24.val[1].i8[0] = vmaxvq_u8(v20);
          v21 = v24.val[1].u32[0];
          if (result < v21)
          {
            result = v21;
          }

          *&data[v17] = v20;
          v17 += 16;
          width = image->width;
        }

        while (width - 15 > v17);
        v14 = v17 & 0xFFFFFFF0;
        if (width <= v14)
        {
          goto LABEL_15;
        }

        v16 = &data[v17];
      }

      v22 = (v15 + 2);
      do
      {
        v23 = (301 * *(v22 - 1) + 153 * *v22 + 58 * *(v22 - 2) + 256) >> 9;
        if (result < v23)
        {
          result = v23;
        }

        *v16++ = v23;
        ++v14;
        width = image->width;
        v22 += 4;
      }

      while (width > v14);
LABEL_15:
      ++v6;
      v11 += image->rowBytes;
      data += lumaImage->rowBytes;
      if (v6 >= rows)
      {
        return result;
      }
    }
  }

  return 0.0;
}

- (unsigned)_generateBinarizationForImage:(vImage_Buffer *)image textOut:(vImage_Buffer *)out firstOrSecondPassIndicator:(unsigned __int8)indicator minMaxRGB:(__rgbMinMaxFloat *)b
{
  width = image->width;
  if (width >= 0x1000)
  {
    __assert_rtn("[VNCCTextDetector _generateBinarizationForImage:textOut:firstOrSecondPassIndicator:minMaxRGB:]", "VNCCTextDetector.mm", 2534, "image.width < 4096");
  }

  indicatorCopy = indicator;
  if (image->height)
  {
    v17 = 0;
    v18 = 0;
    v19 = vcvtms_s32_f32(b->var0);
    v20 = vcvtps_s32_f32(b->var1);
    v21 = vcvtms_s32_f32(b->var2);
    v22 = vcvtps_s32_f32(b->var3);
    v23 = vcvtms_s32_f32(b->var4);
    v24 = vcvtps_s32_f32(b->var5);
    v6 = vdupq_n_s8(v19);
    v7 = vdupq_n_s8(v20);
    v8 = vdupq_n_s8(v21);
    v9 = vdupq_n_s8(v22);
    v10 = vdupq_n_s8(v23);
    v11 = vdupq_n_s8(v24);
    data = image->data;
    v26 = out->data;
    v12.i16[0] = 257;
    v12.i8[2] = 1;
    v12.i8[3] = 1;
    v12.i8[4] = 1;
    v12.i8[5] = 1;
    v12.i8[6] = 1;
    v12.i8[7] = 1;
    v12.i8[8] = 1;
    v12.i8[9] = 1;
    v12.i8[10] = 1;
    v12.i8[11] = 1;
    v12.i8[12] = 1;
    v12.i8[13] = 1;
    v12.i8[14] = 1;
    v12.i8[15] = 1;
    do
    {
      if (width >= 0x10)
      {
        v30 = 0;
        v29 = data;
        do
        {
          v45 = vld4q_s8(v29);
          v29 += 64;
          v31 = vandq_s8(vandq_s8(vandq_s8(vcgtq_u8(v9, v45.val[1]), vcgtq_u8(v7, v45.val[2])), vandq_s8(vcgtq_u8(v45.val[1], v8), vcgtq_u8(v45.val[2], v6))), vandq_s8(vandq_s8(vcgtq_u8(v45.val[0], v10), vcgtq_u8(v11, v45.val[0])), v12));
          *&v26[v30] = v31;
          v18 += vaddvq_s8(v31);
          v30 += 16;
          width = image->width;
        }

        while ((width & 0xFFFFFFFFFFFFFFF0) > v30);
        v28 = &v26[v30];
        v27 = v30 & 0xFFFFFFF0;
      }

      else
      {
        v27 = 0;
        v28 = v26;
        v29 = data;
      }

      if (width > v27)
      {
        v32 = (v29 + 2);
        do
        {
          v33 = *(v32 - 2);
          v34 = v33 <= v23 || v33 >= v24;
          if (v34 || ((v35 = *(v32 - 1), v35 > v21) ? (v36 = v35 >= v22) : (v36 = 1), v36 || ((v37 = *v32, v37 > v19) ? (v38 = v37 >= v20) : (v38 = 1), v38)))
          {
            *v28 = 0;
          }

          else
          {
            *v28 = 1;
            ++v18;
          }

          ++v27;
          ++v28;
          width = image->width;
          v32 += 4;
        }

        while (width > v27);
      }

      ++v17;
      v26 += out->rowBytes;
      data += image->rowBytes;
    }

    while (image->height > v17);
  }

  else
  {
    v18 = 0;
  }

  if ([(VNCCTextDetector *)self debugOut:*v6.i64])
  {
    debugFilename = [(VNCCTextDetector *)self debugFilename];
    if (indicatorCopy)
    {
      [debugFilename stringByAppendingPathComponent:@"textOutSecondPassImage.png"];
    }

    else
    {
      [debugFilename stringByAppendingPathComponent:@"textOutFirstPassImage.png"];
    }
    v40 = ;

    uTF8String = [v40 UTF8String];
    v42 = *&out->width;
    v44[0] = *&out->data;
    v44[1] = v42;
    saveVImage(uTF8String, v44, 1280061496);
  }

  return v18;
}

- (int)generateHistogramBounds:(__rgbaColor *)bounds rgbVector2Ref:(__rgbaColor *)ref numPixels1:(unsigned int)pixels1 numPixels2:(unsigned int)pixels2 minMaxRGB:(__rgbMinMaxU8 *)b lowHighRGB:(__rgbMinMaxFloat *)gB
{
  v8 = 0;
  LODWORD(v9) = 0;
  if (bounds && ref && b && gB)
  {
    v12 = malloc_type_calloc(0x99uLL, 1uLL, 0x100004077774924uLL);
    v8 = v12;
    if (v12)
    {
      selfCopy = self;
      refCopy = ref;
      v9 = 0;
      v13 = v12 + 51;
      v14 = v12 + 102;
      v15 = 1;
      v16 = &unk_1A6038000;
      while (1)
      {
        v17 = v15;
        v18 = &b[v9];
        *(v8 + 137) = 0u;
        v8[7] = 0u;
        v8[8] = 0u;
        v8[5] = 0u;
        v8[6] = 0u;
        v8[3] = 0u;
        v8[4] = 0u;
        v8[1] = 0u;
        v8[2] = 0u;
        *v8 = 0u;
        var0 = v18->var0;
        var1 = v18->var1;
        var2 = v18->var2;
        var3 = v18->var3;
        var4 = v18->var4;
        var5 = v18->var5;
        v25 = (var1 - var0) / 50.0;
        v26 = (var3 - var2) / 50.0;
        if (v17)
        {
          pixels2Copy = pixels1;
        }

        else
        {
          pixels2Copy = pixels2;
        }

        v28 = (var5 - var4) / 50.0;
        if (pixels2Copy)
        {
          boundsCopy = refCopy;
          if (v17)
          {
            boundsCopy = bounds;
          }

          p_var2 = &boundsCopy->var2;
          v31 = pixels2Copy;
          do
          {
            v32 = v16[243];
            v33 = ((*(p_var2 - 2) - var0) / v25) + v32;
            v34 = ((*(p_var2 - 1) - var2) / v26) + v32;
            v35 = *p_var2;
            p_var2 += 4;
            *&v34 = v34;
            *&v32 = ((v35 - var4) / v28) + v32;
            v36 = vcvtms_s32_f32(*&v34);
            v37 = vcvtms_s32_f32(v33);
            v38 = vcvtms_s32_f32(*&v32);
            if (v37 >= 0x32)
            {
              v37 = 50;
            }

            if (v36 >= 0x32)
            {
              v36 = 50;
            }

            v39 = v13[v36];
            ++*(v8 + v37);
            if (v38 >= 0x32)
            {
              v40 = 50;
            }

            else
            {
              v40 = v38;
            }

            v41 = v14[v40];
            v13[v36] = v39 + 1;
            v14[v40] = v41 + 1;
            --v31;
          }

          while (v31);
        }

        v42 = 0;
        v43 = 0.5;
        v44 = v25 * 0.5;
        v45 = v26 * 0.5;
        v46 = v28 * 0.5;
        v47 = var1;
        v48 = var5;
        v49 = (pixels2Copy / 50.0) * 0.5;
        v94 = var0;
        while (1)
        {
          LOBYTE(v43) = *(v8 + v42);
          v43 = LODWORD(v43);
          if (v49 < v43)
          {
            break;
          }

          if (++v42 == 51)
          {
            v89 = var0;
            goto LABEL_29;
          }
        }

        v43 = (var0 + (v42 * v25)) - v44;
        if (!v42)
        {
          v43 = var0;
        }

        v89 = v43;
LABEL_29:
        v50 = 0;
        v93 = var2;
        while (1)
        {
          LOBYTE(v43) = *(v8 + v50 + 51);
          v43 = LODWORD(v43);
          if (v49 < v43)
          {
            break;
          }

          if (++v50 == 51)
          {
            v90 = var2;
            goto LABEL_36;
          }
        }

        v43 = (var2 + (v50 * v26)) - v45;
        if (!v50)
        {
          v43 = var2;
        }

        v90 = v43;
LABEL_36:
        v51 = 0;
        while (1)
        {
          LOBYTE(v43) = *(v8 + v51 + 102);
          v43 = LODWORD(v43);
          if (v49 < v43)
          {
            break;
          }

          if (++v51 == 51)
          {
            v91 = var4;
            goto LABEL_43;
          }
        }

        v43 = (var4 + (v51 * v28)) - v46;
        if (!v51)
        {
          v43 = var4;
        }

        v91 = v43;
LABEL_43:
        v52 = 50;
        while (1)
        {
          LOBYTE(v43) = *(v8 + v52);
          v43 = LODWORD(v43);
          if (v49 < v43)
          {
            break;
          }

          if (v52-- <= 1)
          {
            v54 = var1;
            goto LABEL_49;
          }
        }

        v54 = var1;
        if (v52 != 50)
        {
          v25 = v47 - ((50 - v52) * v25);
          v54 = v44 + v25;
        }

LABEL_49:
        v55 = 101;
        while (1)
        {
          v56 = v55 - 51;
          LOBYTE(v25) = *(v8 + v55);
          v25 = LODWORD(v25);
          if (v49 < v25)
          {
            break;
          }

          --v55;
          if (v56 <= 1)
          {
            v57 = var3;
            goto LABEL_55;
          }
        }

        v57 = var3;
        if (v55 != 101)
        {
          v26 = var3 - ((101 - v55) * v26);
          v57 = v45 + v26;
        }

LABEL_55:
        v58 = 152;
        v86 = v45;
        v92 = var4;
        while (1)
        {
          v59 = v58 - 102;
          LOBYTE(v26) = *(v8 + v58);
          v26 = LODWORD(v26);
          if (v49 < v26)
          {
            break;
          }

          --v58;
          if (v59 <= 1)
          {
            v60 = var3;
            v61 = v9;
            v62 = var5;
            goto LABEL_61;
          }
        }

        v60 = var3;
        v61 = v9;
        v62 = var5;
        if (v58 != 152)
        {
          v62 = v46 + (v48 - ((152 - v58) * v28));
        }

LABEL_61:
        v63 = v28 * 0.5;
        if ([(VNCCTextDetector *)selfCopy ii]== 1)
        {
          v47 = v54;
          v64 = v89;
          if ((v54 - v89) >= 75.0)
          {
            v16 = &unk_1A6038000;
            v66 = v90;
            v67 = v91;
          }

          else
          {
            v65 = v89 + v89 * -0.2;
            if (v65 >= 0.0)
            {
              v64 = v89 + v89 * -0.2;
            }

            else
            {
              v64 = 0.0;
            }

            v47 = v54 + v54 * 0.1;
            v16 = &unk_1A6038000;
            v66 = v90;
            v67 = v91;
            if (v47 > 255.0)
            {
              v47 = 255.0;
            }
          }

          if ((v57 - v66) < 75.0)
          {
            v72 = v66 + v66 * -0.2;
            v66 = v72 >= 0.0 ? v66 + v66 * -0.2 : 0.0;
            v57 = v57 + v57 * 0.1;
            if (v57 > 255.0)
            {
              v57 = 255.0;
            }
          }

          if ((v62 - v67) < 75.0)
          {
            v73 = v67 + v67 * -0.2;
            if (v73 >= 0.0)
            {
              v67 = v67 + v67 * -0.2;
            }

            else
            {
              v67 = 0.0;
            }

            v48 = v62 + v62 * 0.1;
            *&v74 = 255.0;
            if (v48 <= 255.0)
            {
              goto LABEL_125;
            }

            goto LABEL_124;
          }

          v48 = v62;
        }

        else
        {
          if ([(VNCCTextDetector *)selfCopy ii]== 2)
          {
            profileNormal = [(VNCCTextDetector *)selfCopy profileNormal];
            v66 = v93;
            v64 = v94;
            if (profileNormal)
            {
              v16 = &unk_1A6038000;
              v67 = v92;
              if (var1 > 0x4A)
              {
                v71 = v86;
              }

              else
              {
                v69 = (v44 + v94) + (v44 + v94) * -0.3;
                if (v69 >= 0.0)
                {
                  v64 = (v44 + v94) + (v44 + v94) * -0.3;
                }

                else
                {
                  v64 = 0.0;
                }

                v70 = (v47 - v44) + (v47 - v44) * 0.3;
                if (v70 >= 30.0)
                {
                  v47 = (v47 - v44) + (v47 - v44) * 0.3;
                }

                else
                {
                  v47 = 30.0;
                }

                v71 = v86;
                if (v47 > 75.0)
                {
                  v47 = 75.0;
                }
              }

              if (var3 > 0x4A)
              {
                v57 = v60;
              }

              else
              {
                v75 = (v71 + v93) + (v71 + v93) * -0.3;
                if (v75 >= 0.0)
                {
                  v66 = (v71 + v93) + (v71 + v93) * -0.3;
                }

                else
                {
                  v66 = 0.0;
                }

                v76 = (v60 - v71) + (v60 - v71) * 0.3;
                if (v76 >= 30.0)
                {
                  v57 = (v60 - v71) + (v60 - v71) * 0.3;
                }

                else
                {
                  v57 = 30.0;
                }

                if (v57 > 75.0)
                {
                  v57 = 75.0;
                }
              }

              if (var5 > 0x4A)
              {
                goto LABEL_125;
              }

              v77 = (v63 + v92) + (v63 + v92) * -0.3;
              v67 = v77 >= 0.0 ? (v63 + v92) + (v63 + v92) * -0.3 : 0.0;
              v78 = (v48 - v63) + (v48 - v63) * 0.3;
              v48 = v78 >= 30.0 ? (v48 - v63) + (v48 - v63) * 0.3 : 30.0;
              if (v48 <= 75.0)
              {
                goto LABEL_125;
              }

              *&v74 = 75.0;
LABEL_124:
              v48 = *&v74;
              goto LABEL_125;
            }

            if (var1 <= 0xF5)
            {
              v47 = (var1 + 10);
            }

            else
            {
              v47 = 255.0;
            }

            if (var3 <= 0xF5)
            {
              v57 = (var3 + 10);
            }

            else
            {
              v57 = 255.0;
            }

            if (var5 <= 0xF5)
            {
              v48 = (var5 + 10);
            }

            else
            {
              v48 = 255.0;
            }
          }

          else
          {
            v57 = v60;
            v66 = v93;
            v64 = v94;
          }

          v16 = &unk_1A6038000;
          v67 = v92;
        }

LABEL_125:
        v15 = 0;
        v79 = &gB[v61];
        v79->var0 = v64;
        v79->var1 = v47;
        v79->var2 = v66;
        v79->var3 = v57;
        v79->var4 = v67;
        v79->var5 = v48;
        v9 = 1;
        if ((v17 & 1) == 0)
        {
          goto LABEL_128;
        }
      }
    }

    LODWORD(v9) = 0;
  }

LABEL_128:
  free(v8);
  return v9;
}

- (void)generateDominantPulse:(unint64_t)pulse rowLocationsRef:(unsigned __int16 *)ref debugOut:(unsigned __int8)out bufferHeight:(unsigned __int16)height bufferWidth:(unsigned __int16)width
{
  heightCopy = height;
  if (height)
  {
    if ([(VNCCCharBoxContext *)self->_charBoxContext checkFlag:pulse atIndex:0, out, height, width])
    {
      v11 = 1;
    }

    else
    {
      v12 = 1;
      while (heightCopy != v12)
      {
        v13 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:pulse atIndex:v12];
        v12 = (v12 + 1);
        if (v13)
        {
          v14 = v12 - 1;
          goto LABEL_10;
        }
      }

      v14 = heightCopy;
LABEL_10:
      v11 = v14 < heightCopy;
    }
  }

  else
  {
    v11 = 0;
  }

  minHeight = [(VNCCTextDetector *)self minHeight];
  maxHeight = [(VNCCTextDetector *)self maxHeight];
  if (!v11)
  {
    v28 = 0;
    v29 = 0;
    v18 = 0;
    LOWORD(v19) = 0;
    goto LABEL_126;
  }

  v17 = maxHeight;
  if (heightCopy != 480)
  {
    if (heightCopy >= 0x191)
    {
      LOWORD(v19) = 0;
      v18 = 0;
      v30 = 400;
      v31 = 400 - maxHeight;
      do
      {
        v32 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:pulse atIndex:v30];
        if (v32)
        {
          v33 = v19 == 0;
        }

        else
        {
          v33 = 0;
        }

        if (v33)
        {
          LOWORD(v19) = v30;
        }

        if (v19)
        {
          v34 = v32 == 0;
        }

        else
        {
          v34 = 0;
        }

        if (v34)
        {
          v18 = v30 - 1;
        }

        if (v19)
        {
          v35 = v18 == 0;
        }

        else
        {
          v35 = 1;
        }

        if (!v35)
        {
          if (v19 <= 0x191u)
          {
            if (v17 <= 0x190)
            {
              v38 = 400;
              while ([(VNCCCharBoxContext *)self->_charBoxContext checkFlag:pulse atIndex:v38])
              {
                v38 = (v38 - 1);
                if (v38 < v31)
                {
                  goto LABEL_66;
                }
              }

              v19 = v38 + 1;
              if ((v19 & 0x10000) == 0)
              {
                goto LABEL_105;
              }
            }
          }

          else
          {
            v36 = v18 - v19;
            if (v36 >= minHeight && v36 <= v17)
            {
              goto LABEL_105;
            }
          }

LABEL_66:
          v18 = 0;
          LOWORD(v19) = 0;
        }

        v30 = (v30 + 1);
      }

      while (v30 != heightCopy);
    }

    v18 = 0;
    LOWORD(v19) = 0;
    goto LABEL_105;
  }

  v18 = 0;
  LOWORD(v19) = 0;
  v20 = 290;
  while (1)
  {
    v21 = v20 - 1;
    v22 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:pulse atIndex:(v20 - 1)];
    if (v22)
    {
      v23 = v18 == 0;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v18 = v20 - 1;
    }

    if (v18)
    {
      v24 = v22 == 0;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      LOWORD(v19) = v20;
    }

    if (v18)
    {
      v25 = v19 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      goto LABEL_35;
    }

    if (v18 >= 0x121u)
    {
      break;
    }

    v26 = v18 - v19;
    if (v26 >= minHeight && v26 <= v17)
    {
      goto LABEL_105;
    }

    v18 = 0;
LABEL_35:
    --v20;
    if (v21 <= 0xF0)
    {
      goto LABEL_77;
    }
  }

  if (v17 > 0xFFFFFEDE)
  {
    goto LABEL_77;
  }

  v39 = 289;
  while ([(VNCCCharBoxContext *)self->_charBoxContext checkFlag:pulse atIndex:v39])
  {
    v39 = (v39 + 1);
    if (v39 - v17 == 290)
    {
      goto LABEL_77;
    }
  }

  v18 = v39 - 1;
  if (v39 == 1 || (v40 = (v39 - 1) - v19, v40 < minHeight) || v40 > v17)
  {
LABEL_77:
    LOWORD(v19) = 0;
    v41 = 0;
    v42 = 289;
    while (1)
    {
      v43 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:pulse atIndex:v42];
      if (v43)
      {
        v44 = v19 == 0;
      }

      else
      {
        v44 = 0;
      }

      if (v44)
      {
        LOWORD(v19) = v42;
      }

      if (v43)
      {
        v45 = 1;
      }

      else
      {
        v45 = v19 == 0;
      }

      if (!v45)
      {
        v41 = v42 - 1;
        if (v42 == 1)
        {
          v41 = 0;
        }

        else
        {
          v46 = (v42 - 1) - v19;
          if (v46 >= minHeight && v46 <= v17)
          {
LABEL_96:
            if (v19)
            {
              v18 = v41;
            }

            else
            {
              v18 = 0;
            }

            if (v41)
            {
              v48 = v19 == 0;
            }

            else
            {
              v48 = 1;
            }

            if (v48)
            {
              LOWORD(v19) = 0;
            }

            break;
          }

          LOWORD(v19) = 0;
        }
      }

      v42 = (v42 + 1);
      if (v42 == 480)
      {
        goto LABEL_96;
      }
    }
  }

LABEL_105:
  v49 = 0;
  v50 = v18 - 1;
  while (v50 + 2 < heightCopy)
  {
    v51 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:pulse atIndex:(v50 + 2)];
    if (v49)
    {
      v52 = 1;
    }

    else
    {
      v52 = v51 == 0;
    }

    if (!v52)
    {
      v49 = v50 + 2;
    }

    ++v50;
    if (v51)
    {
      v53 = 1;
    }

    else
    {
      v53 = v49 == 0;
    }

    if (!v53)
    {
      goto LABEL_118;
    }
  }

  LOWORD(v50) = 0;
LABEL_118:
  v54 = v50 == 0;
  if (!v49)
  {
    v54 = 1;
  }

  v55 = !v54;
  if (v54)
  {
    v28 = v18;
  }

  else
  {
    v28 = v50;
  }

  if (v55)
  {
    v29 = v49;
  }

  else
  {
    v29 = v19;
  }

LABEL_126:
  *ref = v19;
  ref[1] = v18;
  ref[2] = v29;
  ref[3] = v28;
}

- (void)_generatePulseAggregateSmallStubs:(unint64_t)stubs pulseVectorResult:(unint64_t)result bufferHeight:(unsigned __int16)height bufferWidth:(unsigned __int16)width
{
  if (height)
  {
    heightCopy = height;
    v10 = 0;
    do
    {
      [(VNCCCharBoxContext *)self->_charBoxContext clearFlag:result atIndex:v10];
      v10 = (v10 + 1);
    }

    while (heightCopy != v10);
    if (heightCopy == 480)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 1;
      stubsCopy = stubs;
LABEL_6:
      while (2)
      {
        LODWORD(v33) = v12;
        HIDWORD(v33) = v12 + 57;
        while (1)
        {
          v17 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:stubsCopy atIndex:v16, v33];
          v18 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:stubsCopy atIndex:(v16 - 1)];
          if (v18)
          {
            v19 = 1;
          }

          else
          {
            v19 = v17 == 0;
          }

          if (v19)
          {
            v20 = v14;
          }

          else
          {
            v20 = v16;
          }

          v21 = v20;
          if (v17)
          {
            v22 = 1;
          }

          else
          {
            v22 = v18 == 0;
          }

          if (v22 || v20 == 0)
          {
            v24 = v13;
          }

          else
          {
            v24 = v16 - 1;
          }

          if (v20)
          {
            v25 = v24 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            goto LABEL_38;
          }

          if (v24 - v20 >= 19)
          {
            break;
          }

          if (!v11)
          {
            v13 = 0;
            v14 = 0;
            v16 = (v16 + 1);
            v11 = 1;
            v12 = v20;
            v15 = v24;
            if (v16 != 480)
            {
              goto LABEL_6;
            }

            goto LABEL_56;
          }

          if (v20 - v15 >= 11)
          {
            if (v20 <= v24)
            {
              v27 = v24 + 1;
              do
              {
                [(VNCCCharBoxContext *)self->_charBoxContext setFlag:result atIndex:v21];
                v21 = (v21 + 1);
              }

              while (v27 != v21);
            }

            v28 = v33;
            if (v33 <= v15)
            {
              do
              {
                [(VNCCCharBoxContext *)self->_charBoxContext setFlag:result atIndex:v28];
                v28 = (v28 + 1);
              }

              while (v15 + 1 != v28);
            }

LABEL_49:
            v15 = 0;
            v20 = 0;
            v24 = 0;
            v12 = 0;
            v11 = 0;
            goto LABEL_50;
          }

          v13 = 0;
          v14 = 0;
          if (v24 < SHIDWORD(v33))
          {
            v15 = v24;
          }

          v16 = (v16 + 1);
          v11 = 1;
          if (v16 == 480)
          {
            LOWORD(v24) = v15;
            LOWORD(v20) = v33;
LABEL_56:
            v31 = v20;
            if (v20 <= v24)
            {
              v32 = v24 + 1;
              do
              {
                [(VNCCCharBoxContext *)self->_charBoxContext setFlag:result atIndex:v31];
                v31 = (v31 + 1);
              }

              while (v32 != v31);
            }

            return;
          }
        }

        if (v20 <= v24)
        {
          v26 = v24 + 1;
          do
          {
            [(VNCCCharBoxContext *)self->_charBoxContext setFlag:result atIndex:v21];
            v21 = (v21 + 1);
          }

          while (v26 != v21);
        }

        if (v11)
        {
          v29 = v33;
          if (v33 <= v15)
          {
            do
            {
              [(VNCCCharBoxContext *)self->_charBoxContext setFlag:result atIndex:v29];
              v29 = (v29 + 1);
            }

            while (v15 + 1 != v29);
          }

          goto LABEL_49;
        }

        v20 = 0;
        v24 = 0;
LABEL_38:
        v12 = v33;
LABEL_50:
        v16 = (v16 + 1);
        v13 = v24;
        v14 = v20;
        if (v16 != 480)
        {
          continue;
        }

        break;
      }

      LOWORD(v24) = v15;
      LOWORD(v20) = v12;
      if (v11)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v30 = 0;
      do
      {
        [(VNCCCharBoxContext *)self->_charBoxContext copyFlagValue:stubs toTarget:result atIndex:v30];
        v30 = (v30 + 1);
      }

      while (heightCopy != v30);
    }
  }
}

- (void)_generatePulseAggregate:(unint64_t)aggregate pulseVectorMain:(unint64_t)main pulseVectorResult:(unint64_t)result metricSelection:(unsigned __int8)selection bufferHeight:(unsigned __int16)height bufferWidth:(unsigned __int16)width
{
  if (height == 480)
  {
    v12 = 0;
    do
    {
      [(VNCCCharBoxContext *)self->_charBoxContext copyFlagValue:aggregate toTarget:0x80000 atIndex:v12, selection];
      v12 = (v12 + 1);
    }

    while (v12 != 480);
    v13 = 0;
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:main atIndex:v15];
      v17 = [(VNCCCharBoxContext *)self->_charBoxContext checkFlag:main atIndex:(v15 - 1)];
      if (v17)
      {
        v18 = 1;
      }

      else
      {
        v18 = v16 == 0;
      }

      if (!v18)
      {
        v13 = v15;
      }

      if (v16)
      {
        v19 = 1;
      }

      else
      {
        v19 = v17 == 0;
      }

      if (!v19 && v13 != 0)
      {
        v14 = v15 - 1;
      }

      if (v13)
      {
        v21 = v14 == 0;
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        if (v13 > v14)
        {
          goto LABEL_26;
        }

        v22 = v13;
        do
        {
          [(VNCCCharBoxContext *)self->_charBoxContext clearFlag:0x80000 atIndex:v22];
          v22 = (v22 + 1);
        }

        while (v14 + 1 != v22);
        if (v13 > 1u)
        {
LABEL_26:
          v23 = v13 + 1;
          do
          {
            if (![(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x80000 atIndex:(v23 - 2)])
            {
              break;
            }

            [(VNCCCharBoxContext *)self->_charBoxContext clearFlag:0x80000 atIndex:(v23 - 2)];
            --v23;
          }

          while (v23 > 2);
        }

        if (v14 <= 0x1DEu)
        {
          v24 = v14 + 1;
          do
          {
            if (![(VNCCCharBoxContext *)self->_charBoxContext checkFlag:0x80000 atIndex:v24])
            {
              break;
            }

            [(VNCCCharBoxContext *)self->_charBoxContext clearFlag:0x80000 atIndex:v24];
            v24 = (v24 + 1);
          }

          while (v24 != 480);
        }

        v14 = 0;
        v13 = 0;
      }

      v15 = (v15 + 1);
    }

    while (v15 != 480);
    v25 = 0;
    do
    {
      [(VNCCCharBoxContext *)self->_charBoxContext copyFlagValue:main | 0x80000 toTarget:result atIndex:v25];
      v25 = (v25 + 1);
    }

    while (v25 != 480);
  }

  else
  {
    heightCopy = height;
    if (selection)
    {
      if (selection == 1 && height)
      {
        v27 = 0;
        do
        {
          [(VNCCCharBoxContext *)self->_charBoxContext copyFlagValue:main toTarget:result atIndex:v27];
          v27 = (v27 + 1);
        }

        while (heightCopy != v27);
      }
    }

    else if (height)
    {
      v28 = 0;
      do
      {
        [(VNCCCharBoxContext *)self->_charBoxContext copyFlagValue:main | aggregate toTarget:result atIndex:v28];
        v28 = (v28 + 1);
      }

      while (heightCopy != v28);
    }
  }
}

- (int)_getFilterResultOut:(float *)out defaultRows:(unsigned __int16)rows bufferHeight:(unsigned __int16)height minHeight:(unsigned __int8)minHeight maxHeight:(unsigned __int8)maxHeight startRange:(unsigned __int16)range stopRange:(unsigned __int16)stopRange startMaxFind:(unsigned int)self0 stopMaxFind:(unsigned int)self1 bytesPerRow:(unsigned __int16)self2 thresholdSet:(ThresholdSet_t)self3 sampleImageAddressRef:(char *)self4 sampleImageFloatAddressRef:(float *)self5 pulseVectorFlag:(unint64_t)self6
{
  addressRefCopy = addressRef;
  if (ref)
  {
    v17 = addressRef == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || (var2 = set.var2, var1 = set.var1, var0 = set.var0, v21 = range, v22 = maxHeight, v23 = minHeight, v24 = height, v25 = rows, (v28 = malloc_type_calloc(3 * height, 4uLL, 0x100004052888210uLL)) == 0))
  {
    v31 = 0;
    v38 = 0;
  }

  else
  {
    v76 = v25;
    outCopy = out;
    selfCopy = self;
    findCopy = find;
    v30 = v24;
    v31 = v28;
    v77 = &v28[v24];
    __dst = &v77[v24];
    if (v24)
    {
      v32 = 0;
      v33 = stopRange - v21;
      v34 = 0.0;
      do
      {
        __C[0] = 0.0;
        vDSP_sve(addressRefCopy, 1, __C, v33);
        v35 = __C[0];
        v31[v32] = __C[0];
        if (v35 > v34 && v32 >= find - 1 && v32 <= maxFind - 1)
        {
          v34 = v35;
        }

        ++v32;
        addressRefCopy += row;
      }

      while (v24 != v32);
    }

    else
    {
      v34 = 0.0;
    }

    v82 = 1.0 / v34;
    v39 = v77;
    MEMORY[0x1AC5587B0](v31, 1, &v82, v77, 1, v24);
    __n = 4 * v24;
    memcpy(__dst, v77, __n);
    if (v24 == v76)
    {
      v41 = 0.0;
      if (find < maxFind)
      {
        v43 = &v31[find + __n / 4];
        v44 = 0.0;
        do
        {
          v45 = *v43++;
          v46 = v45;
          if (v45 > v44)
          {
            v44 = v46;
          }

          ++findCopy;
        }

        while (findCopy < maxFind);
        v41 = v44;
      }

      if (v24)
      {
        v42 = 0.0;
        v47 = -501;
        v48 = v77;
        v49 = v24;
        v50 = 0.0;
        v51 = 0.0;
        v52 = 0.0;
        v53 = 0.0;
        while (v47 + 401 > 0x64)
        {
          if (v47 + 300 > 0x63)
          {
            if (v47 + 200 > 0x63)
            {
              if (v47 < 0xFFFFFF9C)
              {
                if (v47 > 0x63 || *v48 <= *&v42)
                {
                  goto LABEL_44;
                }

                v54 = v53;
                *&v42 = *v48;
              }

              else
              {
                if (*v48 <= v50)
                {
                  goto LABEL_44;
                }

                v54 = v53;
                v50 = *v48;
              }
            }

            else
            {
              if (*v48 <= v51)
              {
                goto LABEL_44;
              }

              v54 = v53;
              v51 = *v48;
            }
          }

          else
          {
            if (*v48 <= v52)
            {
              goto LABEL_44;
            }

            v54 = v53;
            v52 = *v48;
          }

LABEL_45:
          ++v48;
          ++v47;
          v53 = v54;
          if (!--v49)
          {
            goto LABEL_48;
          }
        }

        v54 = *v48;
        if (*v48 > v53)
        {
          goto LABEL_45;
        }

LABEL_44:
        v54 = v53;
        goto LABEL_45;
      }

      v54 = 0.0;
      v52 = 0.0;
      v51 = 0.0;
      v50 = 0.0;
      v42 = 0.0;
LABEL_48:
      v55 = 0;
      HIDWORD(v40) = 1070805811;
      if (v52 < 0.3 && v51 < 0.3)
      {
        v55 = v50 < 0.3;
      }

      v57 = v52 > v51 && v54 > v52;
      v59 = v52 < v51 && v54 < v52;
      v60 = v59 && v51 < v50;
      if (v50 >= *&v42)
      {
        v60 = 0;
      }

      v61 = v57 && v51 > v50;
      if (v50 <= *&v42)
      {
        v61 = 0;
      }

      if (v41 < 0.3 || v55 || v60 || v61)
      {
        v62 = 0.9 / v41;
        if (v62 >= 1.0)
        {
          v63 = v62;
        }

        else
        {
          v63 = 1.0;
        }

        if (v24)
        {
          v41 = 0.0;
          v64 = -501;
          v65 = v77;
          v66 = v24;
          v42 = 0.0;
          v67 = 0.0;
          v68 = 0.0;
          v69 = 0.0;
          do
          {
            v70 = v63 * *v65;
            *v65 = v70;
            if (v64 + 401 > 0x64)
            {
              if (v64 + 300 > 0x63)
              {
                if (v64 + 200 > 0x63)
                {
                  if (v64 < 0xFFFFFF9C)
                  {
                    if (v70 > *&v41 && v64 < 0x64)
                    {
                      *&v41 = v70;
                    }
                  }

                  else if (v70 > *&v42)
                  {
                    *&v42 = v70;
                  }
                }

                else if (v70 > v67)
                {
                  v67 = v70;
                }
              }

              else if (v70 > v68)
              {
                v68 = v70;
              }
            }

            else if (v70 > v69)
            {
              v69 = v70;
            }

            ++v64;
            ++v65;
            --v66;
          }

          while (v66);
        }

        else
        {
          v69 = 0.0;
          v68 = 0.0;
          v67 = 0.0;
          v42 = 0.0;
          v41 = 0.0;
        }

        if (v69 < v68 && v68 < v67 && v67 < *&v42 && *&v42 < *&v41 && v69 < 0.3 || v69 > v68 && v68 > v67 && v67 > *&v42 && *&v42 > *&v41 && (v41 = *&v41, v41 < 0.3))
        {
          v81 = 1077936128;
          MEMORY[0x1AC5587B0](v77, 1, &v81, v77, 1, v24);
        }

        if (v24)
        {
          v72 = &v77[v24];
          do
          {
            v73 = *v39++;
            *v72++ = fminf(v73, 1.0);
            --v30;
          }

          while (v30);
        }
      }
    }

    if (outCopy)
    {
      memcpy(outCopy, __dst, __n);
    }

    *&v40 = var0;
    *&v41 = var1;
    *&v42 = var2;
    v38 = [(VNCCTextDetector *)selfCopy generatePulses:v24 minHeight:v23 maxHeight:v22 thresholdSet:__dst prodBoostNormalized:flag pulseVectorFlag:v40, v41, v42, __n];
  }

  free(v31);
  return v38;
}

- (int)_getFilterResultOutBothSumDeriv:(unsigned __int8)deriv floatVectorResult:(float *)result bufferHeight:(unsigned __int16)height minHeight:(unsigned __int8)minHeight maxHeight:(unsigned __int8)maxHeight config:(__CCFilterSumDerivConfig *)config bytesPerRow:(unsigned __int16)row thresholdSet:(ThresholdSet_t)self0 sampleImageAddressRef:(char *)self1
{
  var0 = set.var0;
  v14 = 0;
  v74[0] = 0;
  *__src = 0u;
  v73 = 0u;
  v71 = 0u;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  if (!height)
  {
    goto LABEL_57;
  }

  if (!config)
  {
    goto LABEL_57;
  }

  refCopy = ref;
  if (!ref)
  {
    goto LABEL_57;
  }

  maxHeightCopy = maxHeight;
  minHeightCopy = minHeight;
  heightCopy = height;
  var2 = set.var2;
  var1 = set.var1;
  derivCopy = deriv;
  v23 = [(VNCCTextDetector *)self _allocateSumDerivVectors:&v71 size:height];
  if (v23 != 1)
  {
    goto LABEL_56;
  }

  var3 = config->var3;
  if (var3)
  {
    v23 = [(VNCCTextDetector *)self _allocateSumDerivVectors:&v67 size:heightCopy];
    if (v23 == 1)
    {
      LOBYTE(var3) = config->var3;
      goto LABEL_8;
    }

LABEL_56:
    v14 = v23;
    goto LABEL_57;
  }

LABEL_8:
  v64 = maxHeightCopy;
  v25 = 0;
  do
  {
    v74[0] = 0;
    if (!var3)
    {
      [(VNCCTextDetector *)self _computeColumnSumsOverRange:config sampleImageAddress:refCopy rowSumOut:v74 rowDerivOut:v74 + 4];
      v30 = v74[0];
      goto LABEL_26;
    }

    v66 = 0;
    v70 = 0;
    v65 = 0;
    v26 = config->var1.var0;
    if (v25 == 196)
    {
      v31 = config->var1.var1;
      v26 -= 250;
      v32 = config->var0.var0;
      if (v26 <= v32)
      {
        LOWORD(v26) = config->var0.var0;
      }

      config->var1.var0 = v26;
      v29 = v31 - 250;
      if (v29 <= v32)
      {
        LOWORD(v29) = v32;
      }
    }

    else
    {
      if (v25)
      {
        goto LABEL_22;
      }

      v27 = config->var1.var1;
      v26 += 250;
      v28 = config->var0.var1 - 1;
      if (v26 >= v28)
      {
        LOWORD(v26) = config->var0.var1 - 1;
      }

      config->var1.var0 = v26;
      v29 = v27 + 250;
      if (v29 >= v28)
      {
        LOWORD(v29) = v28;
      }
    }

    config->var1.var1 = v29;
LABEL_22:
    if (v26 && config->var0.var0 != v26)
    {
      WORD2(v66) = config->var0.var0;
      HIWORD(v66) = v26 - 1;
      [(VNCCTextDetector *)self _computeColumnSumsOverRange:&v66 + 4 sampleImageAddress:refCopy rowSumOut:&v66 rowDerivOut:&v65];
      LODWORD(v74[0]) += v66;
      HIDWORD(v74[0]) += v65;
    }

    [(VNCCTextDetector *)self _computeColumnSumsOverRange:&config->var1 sampleImageAddress:refCopy rowSumOut:&v66 rowDerivOut:&v65];
    LODWORD(v74[0]) += v66;
    HIDWORD(v74[0]) += v65;
    LODWORD(v70) = v70 + v66;
    HIDWORD(v70) += v65;
    WORD2(v66) = config->var1.var1 + 1;
    HIWORD(v66) = config->var0.var1;
    [(VNCCTextDetector *)self _computeColumnSumsOverRange:&v66 + 4 sampleImageAddress:refCopy rowSumOut:&v66 rowDerivOut:&v65];
    v30 = LODWORD(v74[0]) + v66;
    LODWORD(v74[0]) += v66;
    HIDWORD(v74[0]) += v65;
LABEL_26:
    *(v71 + 4 * v25) = v30;
    if (*(&v73 + 2) < v30)
    {
      *(&v73 + 2) = v30;
    }

    v33 = SHIDWORD(v74[0]);
    *(*(&v71 + 1) + 4 * v25) = SHIDWORD(v74[0]);
    if (*(&v73 + 3) < v33)
    {
      *(&v73 + 3) = v33;
    }

    var3 = config->var3;
    if (var3)
    {
      v34 = v70;
      *(v67 + 4 * v25) = v70;
      if (*(&v69 + 2) < v34)
      {
        *(&v69 + 2) = v34;
      }

      v35 = SHIDWORD(v70);
      *(*(&v67 + 1) + 4 * v25) = SHIDWORD(v70);
      if (*(&v69 + 3) < v35)
      {
        *(&v69 + 3) = v35;
      }
    }

    refCopy += row;
    ++v25;
  }

  while (heightCopy != v25);
  *(&v66 + 1) = 1.0 / *(&v73 + 2);
  MEMORY[0x1AC5587B0]();
  *&v66 = 1.0 / *(&v73 + 3);
  MEMORY[0x1AC5587B0](*(&v71 + 1), 1, &v66, __src[1], 1, heightCopy);
  if (result)
  {
    memcpy(result, __src[0], 4 * heightCopy);
  }

  if (config->var3)
  {
    *(&v66 + 1) = 1.0 / *(&v73 + 2);
    MEMORY[0x1AC5587B0](v67, 1, &v66 + 4, v68, 1, heightCopy);
    *&v66 = 1.0 / *(&v73 + 3);
    MEMORY[0x1AC5587B0](*(&v67 + 1), 1, &v66, *(&v68 + 1), 1, heightCopy);
  }

  [(VNCCTextDetector *)self _computeProdBoostNormalizedResult:&v71 size:heightCopy binOverride:derivCopy];
  if (config->var3)
  {
    [(VNCCTextDetector *)self _computeProdBoostNormalizedResult:&v67 size:heightCopy binOverride:derivCopy];
  }

  *&v36 = var0;
  *&v37 = var1;
  *&v38 = var2;
  v23 = [(VNCCTextDetector *)self generatePulses:heightCopy minHeight:minHeightCopy maxHeight:maxHeightCopy thresholdSet:v73 prodBoostNormalized:config->var4 pulseVectorFlag:v36, v37, v38];
  if (v23 != 1)
  {
    goto LABEL_56;
  }

  if (config->var3)
  {
    *&v39 = var0;
    *&v40 = var1;
    *&v41 = var2;
    v23 = [(VNCCTextDetector *)self generatePulses:heightCopy minHeight:minHeightCopy maxHeight:maxHeightCopy thresholdSet:v69 prodBoostNormalized:config->var5 pulseVectorFlag:v39, v40, v41];
    if (v23 != 1)
    {
      goto LABEL_56;
    }
  }

  if (config->var2)
  {
    v42 = malloc_type_calloc(heightCopy, 4uLL, 0x100004052888210uLL);
    v46 = v42;
    if (v42)
    {
      v47 = 4 * config->var4;
      v48 = (heightCopy - 3);
      if (heightCopy >= 7)
      {
        v49 = v42 + 3;
        v50 = v48 - 3;
        v51 = (v73 + 12);
        v52 = (v73 + 12);
        do
        {
          v53 = v52[1];
          ++v52;
          *v49++ = ((((*(v51 - 2) + *(v51 - 1)) + *v51) + v53) + v51[2]) / 5.0;
          v51 = v52;
          --v50;
        }

        while (v50);
      }

      *&v43 = var0;
      *&v44 = var1;
      *&v45 = var2;
      v14 = [(VNCCTextDetector *)self generatePulses:heightCopy minHeight:minHeightCopy maxHeight:v64 thresholdSet:v42 prodBoostNormalized:v47 pulseVectorFlag:v43, v44, v45];
      if (v14 == 1)
      {
        if (config->var3)
        {
          v57 = 4 * config->var5;
          if (heightCopy >= 7)
          {
            v58 = v46 + 3;
            v59 = v48 - 3;
            v60 = (v69 + 12);
            v61 = (v69 + 12);
            do
            {
              v62 = v61[1];
              ++v61;
              *v58++ = ((((*(v60 - 2) + *(v60 - 1)) + *v60) + v62) + v60[2]) / 5.0;
              v60 = v61;
              --v59;
            }

            while (v59);
          }

          *&v54 = var0;
          *&v55 = var1;
          *&v56 = var2;
          v14 = [(VNCCTextDetector *)self generatePulses:heightCopy minHeight:minHeightCopy maxHeight:v64 thresholdSet:v46 prodBoostNormalized:v57 pulseVectorFlag:v54, v55, v56];
        }

        else
        {
          v14 = 1;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    free(v46);
  }

  else
  {
    v14 = 1;
  }

LABEL_57:
  [(VNCCTextDetector *)self _freeSumDerivVectors:&v71, result];
  if (config->var3)
  {
    [(VNCCTextDetector *)self _freeSumDerivVectors:&v67];
  }

  return v14;
}

- (void)_computeProdBoostNormalizedResult:(__CCSumDerivVectors *)result size:(int)size binOverride:(unsigned __int8)override
{
  if (override)
  {
    memcpy(result->var4, result->var2, 4 * size);
  }

  else
  {
    MEMORY[0x1AC558750](result->var2, 1, result->var3, 1, result->var4, 1, size);
  }

  if (size == 480)
  {
    midRow = [(VNCCTextDetector *)self midRow];
    if (midRow >= 460)
    {
      var4 = result->var4;
      v12 = 0.0;
    }

    else
    {
      var4 = result->var4;
      v10 = midRow + 10;
      v11 = 0.0;
      do
      {
        if (var4[v10] > v11)
        {
          v11 = var4[v10];
        }

        ++v10;
      }

      while (v10 != 470);
      v12 = v11;
    }

    v13 = 0;
    v14 = 0.9 / v12;
    if (v14 < 1.0)
    {
      v14 = 1.0;
    }

    __asm { FMOV            V1.4S, #1.0 }

    do
    {
      v20 = *&var4[v13];
      v21 = vmulq_n_f32(v20, v14);
      *&var4[v13] = vaddq_f32(v21, vbslq_s8(vcgtq_f32(_Q1, v21), v21, v20));
      v13 += 4;
    }

    while (v13 != 480);
  }
}

- (void)_freeSumDerivVectors:(__CCSumDerivVectors *)vectors
{
  if (vectors)
  {
    free(vectors->var0);
    vectors->var0 = 0;
  }
}

- (int)_allocateSumDerivVectors:(__CCSumDerivVectors *)vectors size:(int)size
{
  if (vectors)
  {
    v6 = malloc_type_calloc(5 * size, 4uLL, 0x100004052888210uLL);
    vectors->var0 = v6;
    if (v6)
    {
      v7 = &v6[size];
      v8 = &v7[size];
      vectors->var1 = v7;
      vectors->var2 = v8;
      v9 = &v8[size];
      vectors->var3 = v9;
      vectors->var4 = &v9[size];
      *&vectors->var5 = 0;
      *&vectors->var7 = 0;
      LODWORD(v6) = 1;
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  return v6;
}

- (void)_computeColumnSumsOverRange:(__CCRange *)range sampleImageAddress:(char *)address rowSumOut:(int *)out rowDerivOut:(int *)derivOut
{
  var0 = range->var0;
  v7 = &address[var0];
  var1 = range->var1;
  if ((&address[var0] & 0xF) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = v7 + 1;
    do
    {
      if (var0 > var1 - 2)
      {
        break;
      }

      v12 = *v7;
      v9 += v12;
      v13 = v7[2] - v12;
      if (v13 < 0)
      {
        v13 = -v13;
      }

      v10 += v13;
      ++v7;
      LODWORD(var0) = var0 + 1;
    }

    while ((v11++ & 0xF) != 0);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v15 = (var1 - var0 + 1) >> 5;
  if (v15 >= 129)
  {
    __assert_rtn("[VNCCTextDetector _computeColumnSumsOverRange:sampleImageAddress:rowSumOut:rowDerivOut:]", "VNCCTextDetector.mm", 1220, "numNeonIter < 128");
  }

  if (v15 < 2)
  {
    v18 = 0uLL;
    v20 = 0uLL;
    if (v15 == 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = (v7 + 32);
    v17 = *v7;
    v18 = 0uLL;
    v19 = v15 - 1;
    v20 = 0uLL;
    do
    {
      v21 = v16[-1];
      v22 = *v16;
      v18 = vaddw_u8(vaddw_high_u8(vaddq_s16(vaddw_high_u8(vmovl_u8(*v17.i8), v17), v18), v21), *v21.i8);
      v23 = vextq_s8(v17, v21, 2uLL);
      v24 = vextq_s8(v21, *v16, 2uLL);
      v20 = vabal_high_u8(vabal_high_u8(vabal_u8(vabal_u8(v20, *v23.i8, *v17.i8), *v24.i8, *v21.i8), v23, v17), v24, v21);
      v16 += 2;
      v17 = v22;
      --v19;
    }

    while (v19);
    v7 += 32 * (v15 - 2) + 32;
  }

  v9 += vaddvq_s16(v18);
  v10 += vaddvq_s16(v20);
LABEL_17:
  v25 = var0 + 32 * (v15 - 1);
  if (v25 <= var1 - 2)
  {
    v26 = var0 + 32 * v15 - 33;
    do
    {
      v27 = *v7;
      v9 += v27;
      v28 = v7[2] - v27;
      if (v28 < 0)
      {
        v28 = -v28;
      }

      v10 += v28;
      ++v7;
      ++v26;
    }

    while (v26 < var1 - 2);
    v25 = var1 - 1;
  }

  else if (v25 > var1)
  {
    goto LABEL_27;
  }

  v29 = var1 - v25 + 1;
  do
  {
    v30 = *v7++;
    v9 += v30;
    --v29;
  }

  while (v29);
LABEL_27:
  *out = v9;
  *derivOut = v10;
}

- (int)generatePulses:(unsigned __int16)pulses minHeight:(unsigned __int8)height maxHeight:(unsigned __int8)maxHeight thresholdSet:(ThresholdSet_t)set prodBoostNormalized:(float *)normalized pulseVectorFlag:(unint64_t)flag
{
  v8 = 0;
  v9 = 0;
  v49 = 0x5C00000000;
  if (pulses && normalized)
  {
    var2 = set.var2;
    var1 = set.var1;
    var0 = set.var0;
    maxHeightCopy = maxHeight;
    heightCopy = height;
    pulsesCopy = pulses;
    v19 = malloc_type_calloc((11 * pulses), 4uLL, 0x100004052888210uLL);
    v8 = v19;
    if (v19)
    {
      v48 = v19;
      WORD1(v49) = 11 * pulsesCopy - 1;
      do
      {
        *&v20 = var0;
        *&v21 = var1;
        *&v22 = var2;
        [(VNCCTextDetector *)self examinePulseWindow:pulsesCopy prodBoostNormalized:normalized pwContext:&v48 minHeight:heightCopy maxHeight:maxHeightCopy thresholdSet:v20, v21, v22];
        WORD2(v49) -= 10;
      }

      while (SWORD2(v49) > 1);
      BYTE6(v49) = 1;
      WORD1(v49) = pulsesCopy;
      WORD2(v49) = 2;
      do
      {
        *&v20 = var0;
        *&v21 = var1;
        *&v22 = var2;
        [(VNCCTextDetector *)self examinePulseWindow:pulsesCopy prodBoostNormalized:normalized pwContext:&v48 minHeight:heightCopy maxHeight:maxHeightCopy thresholdSet:v20, v21, v22];
        --WORD2(v49);
      }

      while (SWORD2(v49) > 0);
      v23 = v49;
      if (v49)
      {
        v24 = 0;
        v25 = pulsesCopy - 3;
        do
        {
          v26 = &v8[4 * v24];
          v27 = *v26;
          v28 = *(v26 + 1);
          if (v27 >= 4 && v25 > v28)
          {
            v30 = &normalized[*v26];
            v31 = *(v30 - 1);
            if ((*v30 - v31) > var2 || (v32 = v30[1], (v32 - *v30) > var2) || (v30[2] - v32) > var2)
            {
              v33 = &normalized[v28];
              v34 = *(v33 - 1);
              if ((*(v33 - 2) - v34) > var2 || (v34 - *v33) > var2 || (*v33 - v33[1]) > var2)
              {
                v35 = fmaxf(*(v30 - 2), 0.0);
                if (v31 <= v35)
                {
                  v31 = v35;
                }

                if (v33[1] > v31)
                {
                  v31 = v33[1];
                }

                v36 = (v28 - v27);
                if (v33[2] > v31)
                {
                  v31 = v33[2];
                }

                v37 = v36 * 0.6;
                v38 = roundf((v36 - roundf(v37)) * 0.5);
                if (v38 < 3.0)
                {
                  v38 = 3.0;
                }

                v39 = vcvtms_s32_f32(v38 + v27);
                LODWORD(v36) = vcvtps_s32_f32(v28 - v38);
                v40 = 1.0;
                if (v39 <= v36)
                {
                  v41 = v36 - v39 + 1;
                  v42 = &normalized[v39];
                  do
                  {
                    v43 = *v42++;
                    v44 = v43;
                    if (v43 < v40)
                    {
                      v40 = v44;
                    }

                    --v41;
                  }

                  while (v41);
                }

                v45 = v27 + 1;
                if ((v40 - v31) > var1 && v45 < v28)
                {
                  do
                  {
                    [(VNCCCharBoxContext *)self->_charBoxContext setFlag:flag atIndex:v45, v48];
                    v45 = (v45 + 1);
                  }

                  while (v28 != v45);
                  v23 = v49;
                }
              }
            }
          }

          ++v24;
        }

        while (v24 < v23);
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  free(v8);
  return v9;
}

- (void)examinePulseWindow:(unsigned __int16)window prodBoostNormalized:(float *)normalized pwContext:(__CCPulseWindowContext *)context minHeight:(unsigned __int8)height maxHeight:(unsigned __int8)maxHeight thresholdSet:(ThresholdSet_t)set
{
  v8 = 0.0125000002;
  if (!context->var4)
  {
    v8 = 0.0500000007;
  }

  v9 = context->var3 / 100.0;
  v10 = v9 - v8;
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  if (window >= 3u)
  {
    v11 = 0;
    v12 = 0;
    v13 = v8 + v9;
    v14 = (window - 1);
    v15 = &normalized[height + 1];
    v16 = 1;
    heightCopy = height;
    do
    {
      v18 = &normalized[v16];
      v19 = *v18;
      if (*v18 >= v10)
      {
        v21 = v19 == v13;
        v20 = v19 >= v13;
      }

      else
      {
        v20 = 1;
        v21 = 0;
      }

      if (!v21 && v20)
      {
        if (v11 >= 1)
        {
          v22 = v16 + maxHeight;
          if (v16 + maxHeight >= v14)
          {
            v22 = window - 2;
          }

          if (v16 + height > v22)
          {
            goto LABEL_26;
          }

          v23 = 0.0;
          v24 = v15;
          v25 = heightCopy;
          do
          {
            if ((v24[1] - *(v24 - 1)) < -0.001)
            {
              v23 = (v25 + 1);
              if (*v24 <= normalized[v11])
              {
                break;
              }
            }

            ++v25;
            ++v24;
          }

          while (v25 < v22);
          if (v23 == 0.0)
          {
LABEL_26:
            v12 = 0;
            v11 = 0;
          }

          else
          {
            v12 = v23;
          }
        }
      }

      else if (v18[1] <= *(v18 - 1))
      {
        if (v11)
        {
          v12 = v16;
        }
      }

      else
      {
        v11 = v16;
      }

      if (v12 - v11 >= height && v12 - v11 <= maxHeight)
      {
        v26 = 0.0;
        if (v12 >= v11)
        {
          v27 = v12 - v11 + 1;
          v28 = &normalized[v11];
          do
          {
            v29 = *v28++;
            v30 = v29;
            if (v29 > v26)
            {
              v26 = v30;
            }

            --v27;
          }

          while (v27);
        }

        if ((v26 - normalized[v11]) <= set.var0 || (v26 - normalized[v12]) <= set.var0 || (var0 = context->var0, var0->var0 = v11, var0->var1 = v12, var1 = context->var1, var1 >= context->var2))
        {
          v12 = 0;
          v11 = 0;
        }

        else
        {
          v12 = 0;
          v11 = 0;
          context->var1 = var1 + 1;
          context->var0 = var0 + 1;
        }
      }

      ++heightCopy;
      ++v16;
      ++v15;
    }

    while (v16 != v14);
  }
}

- (int)_generateVotingImage:(vImage_Buffer *)image votingImage:(vImage_Buffer *)votingImage useLowLightEnhancement:(char *)enhancement
{
  v9 = (image->height - 81) / 0x50;
  if (v9 <= 0xAuLL)
  {
    v10 = v9;
  }

  else
  {
    v10 = 10;
  }

  if ((((image->width - 81) / 0x50) & 0xFFF0) != 0)
  {
    v11 = 15;
  }

  else
  {
    v11 = (image->width - 81) / 0x50;
  }

  v12 = v11;
  v13 = v10;
  v14 = malloc_type_calloc(v11 * v10, 4uLL, 0x100004052888210uLL);
  v16 = v14;
  if (v14)
  {
    if (v13)
    {
      v17 = 0;
      rowBytes = image->rowBytes;
      v19 = image->data + 79 * rowBytes;
      v20 = 80 * rowBytes;
      v21 = 0.0;
      v22 = v14;
      v23 = 0.0;
      v24 = 0.0;
      do
      {
        if (v12)
        {
          v25 = v12;
          v26 = 316;
          do
          {
            v22[2] = v19[v26];
            v22[1] = v19[v26 + 1];
            *v22 = v19[v26 + 2];
            v22[3] = v19[v26 + 3];
            LOBYTE(v15) = v19[v26 + 2];
            *&v27 = LODWORD(v15);
            *&v21 = *&v21 + *&v27;
            LOBYTE(v27) = v19[v26 + 1];
            *&v28 = v27;
            *&v23 = *&v23 + *&v28;
            LOBYTE(v28) = v19[v26];
            v15 = v28;
            v24 = v24 + v15;
            v22 += 4;
            v26 += 320;
            --v25;
          }

          while (v25);
        }

        v19 += v20;
        ++v17;
      }

      while (v17 != v13);
      v29 = (v12 * v13);
    }

    else
    {
      v29 = 0.0;
      v24 = 0.0;
      v23 = 0.0;
      v21 = 0.0;
    }

    v30 = v24 / v29;
    if (v30 < 100.0 && ((*&v23 = *&v23 / v29, v31 = ((*&v21 / v29) * 3.0) < v30, LODWORD(v21) = 1117782016, v31) ? (v31 = *&v23 < 80.0) : (v31 = 0), v31))
    {
      v32 = 1;
      *enhancement = 1;
      v60 = [(VNCCTextDetector *)self midRow:v21];
      height = image->height;
      if (height > v60)
      {
        v62 = v60;
        v63 = votingImage->data + votingImage->rowBytes * v60;
        width = image->width;
        v65 = image->rowBytes;
        v66 = image->data + v65 * v60;
        do
        {
          if (width)
          {
            v67 = 0;
            v68 = v66 + 2;
            do
            {
              v69 = *v68;
              v68 += 4;
              v63[v67++] = v69;
              width = image->width;
            }

            while (width > v67);
            v63 += v67;
            v65 = image->rowBytes;
            height = image->height;
          }

          v66 += v65;
          ++v62;
        }

        while (height > v62);
        v32 = 1;
      }
    }

    else
    {
      v32 = 0;
    }

    if ([(VNCCTextDetector *)self debugOut:v21])
    {
      debugFilename = [(VNCCTextDetector *)self debugFilename];
      v34 = [debugFilename stringByAppendingPathComponent:@"creditCardSubsampleImage.png"];

      uTF8String = [v34 UTF8String];
      v36.i64[0] = v12;
      v36.i64[1] = v13;
      v74 = 0;
      v73 = 2;
      v71 = v36;
      v70 = v16;
      v72 = 4 * v12;
      saveImage(uTF8String, &v70);
    }

    if ((v32 & 1) == 0)
    {
      midRow = [(VNCCTextDetector *)self midRow];
      v39 = image->width;
      v38 = image->rowBytes;
      data = votingImage->data;
      v41 = votingImage->rowBytes;
      v42 = image->height - midRow;
      VNMetalInterface = self->_VNMetalInterface;
      v70 = image->data + v38 * midRow;
      v71.i64[0] = v42;
      v71.i64[1] = v39;
      v72 = v38;
      v44 = [VNMetalInterface textureWithPixelData:&v70 format:73];
      v45 = [self->_VNMetalInterface textureWithWidth:votingImage->width height:votingImage->height - midRow format:13 usage:2];
      [self->_VNMetalInterface performVotingImage:v44 outputTex:v45 subBuffer:v16];
      v70 = 0;
      v71 = 0uLL;
      v46 = votingImage->height - midRow;
      v47 = votingImage->rowBytes;
      v72 = votingImage->width;
      v73 = v46;
      v74 = 1;
      [v45 getBytes:&data[v41 * midRow] bytesPerRow:v47 fromRegion:&v70 mipmapLevel:0];
      if ([(VNCCTextDetector *)self debugOut])
      {
        debugFilename2 = [(VNCCTextDetector *)self debugFilename];
        v49 = [debugFilename2 stringByAppendingPathComponent:@"inverseVotingImage.png"];

        uTF8String2 = [v49 UTF8String];
        v51 = votingImage->data;
        v52 = *&votingImage->height;
        v53 = votingImage->rowBytes;
        v74 = 0;
        v73 = 1;
        v71 = vextq_s8(v52, v52, 8uLL);
        v70 = v51;
        v72 = v53;
        saveY(uTF8String2, &v70);
      }
    }

    if ([(VNCCTextDetector *)self debugOut])
    {
      v54 = [@"/var/mobile/Media/DCIM/ccOutDebug/" stringByAppendingPathComponent:@"inverseVotingImage.png"];
      uTF8String3 = [v54 UTF8String];
      v56 = votingImage->data;
      v57 = *&votingImage->height;
      v58 = votingImage->rowBytes;
      v74 = 0;
      v73 = 1;
      v71 = vextq_s8(v57, v57, 8uLL);
      v70 = v56;
      v72 = v58;
      saveY(uTF8String3, &v70);
    }
  }

  free(v16);
  return v16 != 0;
}

- (void)_freeVImage:(vImage_Buffer *)image
{
  if (image)
  {
    free(image->data);
    *&image->data = 0u;
    *&image->width = 0u;
  }
}

- (int)_allocateVImageWithWidth:(unint64_t)width height:(unint64_t)height rowBytes:(unint64_t)bytes imageOut:(vImage_Buffer *)out
{
  if (out)
  {
    v8 = bytes * height;
    if (bytes * height)
    {
      v8 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
      out->data = v8;
      if (v8)
      {
        out->height = height;
        out->width = width;
        LODWORD(v8) = 1;
        out->rowBytes = bytes;
      }

      else
      {
        out->height = 0;
        out->width = 0;
        out->rowBytes = 0;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  return v8;
}

- (void)initializeForImage:(vImage_Buffer *)image
{
  [(VNCCTextDetector *)self setComputeZCVectorHighProbability:1];
  if (image->height == 480)
  {
    v5 = 1;
  }

  else
  {
    v5 = 370;
  }

  if (image->height == 480)
  {
    v6 = 57;
  }

  else
  {
    v6 = 45;
  }

  if (image->height == 480)
  {
    v7 = 10;
  }

  else
  {
    v7 = 1;
  }

  if (image->height == 480)
  {
    v8 = 600;
  }

  else
  {
    v8 = 480;
  }

  if (image->height == 480)
  {
    v9 = 54.05;
  }

  else
  {
    v9 = 85.685;
  }

  if (image->height == 480)
  {
    v10 = 85.685;
  }

  else
  {
    v10 = 54.05;
  }

  if (image->height == 480)
  {
    v11 = 480;
  }

  else
  {
    v11 = 767;
  }

  if (image->height == 480)
  {
    v12 = 767;
  }

  else
  {
    v12 = 480;
  }

  if (image->height == 480)
  {
    v13 = 40;
  }

  else
  {
    v13 = 30;
  }

  if (image->height == 480)
  {
    v14 = 767;
  }

  else
  {
    v14 = 479;
  }

  if (image->height == 480)
  {
    v15 = 25;
  }

  else
  {
    v15 = 0;
  }

  if (image->height == 480)
  {
    v16 = 499;
  }

  else
  {
    v16 = 329;
  }

  [(VNCCTextDetector *)self setMidRow:v5];
  [(VNCCTextDetector *)self setMinHeight:11];
  [(VNCCTextDetector *)self setMaxHeight:v6];
  [(VNCCTextDetector *)self setStartMaxFind:v7];
  [(VNCCTextDetector *)self setStopMaxFind:v8];
  *&v17 = v9;
  [(VNCCTextDetector *)self setMmHeightCard:v17];
  *&v18 = v10;
  [(VNCCTextDetector *)self setMmWidthCard:v18];
  [(VNCCTextDetector *)self setPixelHeightCard:v11];
  [(VNCCTextDetector *)self setPixelWidthCard:v12];
  [(VNCCTextDetector *)self setMinBoxWidth:7];
  [(VNCCTextDetector *)self setMaxBoxWidth:v13];
  [(VNCCTextDetector *)self setStartNormal:0];
  [(VNCCTextDetector *)self setStopNormal:v14];
  [(VNCCTextDetector *)self setStartSensitized:v15];

  [(VNCCTextDetector *)self setStopSensitized:v16];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VNCCTextDetector;
  [(VNCCTextDetector *)&v2 dealloc];
}

- (VNCCTextDetector)initWithOptions:(id)options
{
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = VNCCTextDetector;
  v5 = [(VNCCTextDetector *)&v15 init];
  if (v5)
  {
    v6 = [optionsCopy objectForKeyedSubscript:@"VNCCTextDetector_EnableDebug"];
    if ([v6 BOOLValue])
    {
      v7 = [optionsCopy objectForKeyedSubscript:@"VNCCTextDetector_DebugPathname"];
      if ([v7 length])
      {
        [v5 setDebugOut:1];
        [v5 setDebugFilename:v7];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v14 = 0;
        if ((![defaultManager fileExistsAtPath:v7 isDirectory:&v14] || (v14 & 1) == 0) && (objc_msgSend(defaultManager, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v7, 1, 0, 0) & 1) == 0)
        {
          [v5 setDebugOut:0];
          [v5 setDebugFilename:0];
        }
      }
    }

    v9 = objc_alloc_init(VNCCCharBoxContext);
    v10 = *(v5 + 12);
    *(v5 + 12) = v9;

    *(v5 + 25) = 257;
    *(v5 + 2) = 0;
    v11 = objc_alloc_init(VNMetalInterface);
    v12 = *(v5 + 2);
    *(v5 + 2) = v11;
  }

  return v5;
}

+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error
{
  v8[2] = *MEMORY[0x1E69E9840];
  v4 = [[VNSupportedImageSize alloc] initWithIdealFormat:1111970369 width:768 height:480 orientation:1 aspectRatioHandling:0 orientationAgnostic:0];
  v5 = [[VNSupportedImageSize alloc] initWithIdealFormat:1111970369 width:480 height:768 orientation:1 aspectRatioHandling:0 orientationAgnostic:0];
  v8[0] = v4;
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  return v6;
}

@end