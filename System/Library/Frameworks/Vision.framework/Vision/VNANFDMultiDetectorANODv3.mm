@interface VNANFDMultiDetectorANODv3
+ (NSArray)knownFoodAndDrinkIdentifiers;
+ (NSDictionary)recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName;
+ (id)detectedObjectClassToRequestKey;
+ (id)detectedObjectRequestKeyToRequestInfo;
- (BOOL)processDetectedObject:(id)object originatingRequestSpecifier:(id)specifier objectBoundingBox:(CGRect)box objectGroupId:(id)id imageBuffer:(id)buffer qosClass:(unsigned int)class session:(id)session warningRecorder:(id)self0 detectedObjectResults:(id)self1 error:(id *)self2;
- (id)splitDetectedClassResultsIntoSubclasses:(id)subclasses;
@end

@implementation VNANFDMultiDetectorANODv3

+ (NSArray)knownFoodAndDrinkIdentifiers
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VNANFDMultiDetectorANODv3_knownFoodAndDrinkIdentifiers__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNANFDMultiDetectorANODv3 knownFoodAndDrinkIdentifiers]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv3 knownFoodAndDrinkIdentifiers]::onceToken, block);
  }

  v2 = +[VNANFDMultiDetectorANODv3 knownFoodAndDrinkIdentifiers]::knownFoodAndDrinkIdentifiers;

  return v2;
}

void __57__VNANFDMultiDetectorANODv3_knownFoodAndDrinkIdentifiers__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName];
  v1 = [v4 allValues];
  v2 = [v1 copy];
  v3 = +[VNANFDMultiDetectorANODv3 knownFoodAndDrinkIdentifiers]::knownFoodAndDrinkIdentifiers;
  +[VNANFDMultiDetectorANODv3 knownFoodAndDrinkIdentifiers]::knownFoodAndDrinkIdentifiers = v2;
}

+ (NSDictionary)recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName
{
  if (+[VNANFDMultiDetectorANODv3 recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv3 recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName]::onceToken, &__block_literal_global_11905);
  }

  v3 = +[VNANFDMultiDetectorANODv3 recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName]::recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName;

  return v3;
}

void __88__VNANFDMultiDetectorANODv3_recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F19C1408;
  v2[1] = &unk_1F19C1420;
  v3[0] = @"Food";
  v3[1] = @"Drink";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = +[VNANFDMultiDetectorANODv3 recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName]::recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName;
  +[VNANFDMultiDetectorANODv3 recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName]::recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName = v0;
}

+ (id)detectedObjectRequestKeyToRequestInfo
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VNANFDMultiDetectorANODv3_detectedObjectRequestKeyToRequestInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNANFDMultiDetectorANODv3 detectedObjectRequestKeyToRequestInfo]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv3 detectedObjectRequestKeyToRequestInfo]::onceToken, block);
  }

  v2 = +[VNANFDMultiDetectorANODv3 detectedObjectRequestKeyToRequestInfo]::detectedObjectRequestKeyToRequestInfo;

  return v2;
}

void __66__VNANFDMultiDetectorANODv3_detectedObjectRequestKeyToRequestInfo__block_invoke(uint64_t a1)
{
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___VNANFDMultiDetectorANODv3;
  v1 = objc_msgSendSuper2(&v8, sel_detectedObjectRequestKeyToRequestInfo);
  v2 = [v1 mutableCopy];

  v3 = [(VNMultiDetectorOriginalRequestInfo *)[VNANFDMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNANFDMultiDetectorProcessingOption_FoodAndDrinkRecognitionOriginatingRequestSpecifier" originalRequestResultsIndex:4];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 setObject:v3 forKey:v5];

  v6 = [v2 copy];
  v7 = +[VNANFDMultiDetectorANODv3 detectedObjectRequestKeyToRequestInfo]::detectedObjectRequestKeyToRequestInfo;
  +[VNANFDMultiDetectorANODv3 detectedObjectRequestKeyToRequestInfo]::detectedObjectRequestKeyToRequestInfo = v6;
}

+ (id)detectedObjectClassToRequestKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VNANFDMultiDetectorANODv3_detectedObjectClassToRequestKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNANFDMultiDetectorANODv3 detectedObjectClassToRequestKey]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv3 detectedObjectClassToRequestKey]::onceToken, block);
  }

  v2 = +[VNANFDMultiDetectorANODv3 detectedObjectClassToRequestKey]::detectedObjectClassToRequestKey;

  return v2;
}

void __60__VNANFDMultiDetectorANODv3_detectedObjectClassToRequestKey__block_invoke(uint64_t a1)
{
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___VNANFDMultiDetectorANODv3;
  v1 = objc_msgSendSuper2(&v9, sel_detectedObjectClassToRequestKey);
  v2 = [v1 mutableCopy];

  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v2 setObject:v4 forKey:&unk_1F19C1408];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 setObject:v6 forKey:&unk_1F19C1420];

  v7 = [v2 copy];
  v8 = +[VNANFDMultiDetectorANODv3 detectedObjectClassToRequestKey]::detectedObjectClassToRequestKey;
  +[VNANFDMultiDetectorANODv3 detectedObjectClassToRequestKey]::detectedObjectClassToRequestKey = v7;
}

- (id)splitDetectedClassResultsIntoSubclasses:(id)subclasses
{
  v25 = *MEMORY[0x1E69E9840];
  subclassesCopy = subclasses;
  if ([subclassesCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = subclassesCopy;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = subclassesCopy;
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
          v12 = [(VNANFDMultiDetector *)self isDetectedObject:v11 ofAGivenObjectSubClass:@"Food"];
          v13 = v5;
          if (!v12)
          {
            v14 = [(VNANFDMultiDetector *)self isDetectedObject:v11 ofAGivenObjectSubClass:@"Drink"];
            v13 = v6;
            if (!v14)
            {
              v18.receiver = self;
              v18.super_class = VNANFDMultiDetectorANODv3;
              v15 = [(VNANFDMultiDetector *)&v18 splitDetectedClassResultsIntoSubclasses:v7];

              subclassesCopy = v17;
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

    subclassesCopy = v17;
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v5, v6, 0}];
LABEL_14:
  }

  else
  {
    v23.receiver = self;
    v23.super_class = VNANFDMultiDetectorANODv3;
    v15 = [(VNANFDMultiDetector *)&v23 splitDetectedClassResultsIntoSubclasses:subclassesCopy];
  }

  return v15;
}

- (BOOL)processDetectedObject:(id)object originatingRequestSpecifier:(id)specifier objectBoundingBox:(CGRect)box objectGroupId:(id)id imageBuffer:(id)buffer qosClass:(unsigned int)class session:(id)session warningRecorder:(id)self0 detectedObjectResults:(id)self1 error:(id *)self2
{
  v13 = *&class;
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  objectCopy = object;
  specifierCopy = specifier;
  idCopy = id;
  bufferCopy = buffer;
  sessionCopy = session;
  recorderCopy = recorder;
  resultsCopy = results;
  recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName = [objc_opt_class() recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName];
  if ([objectCopy labelKey] - 7 >= 2)
  {
    v36.receiver = self;
    v36.super_class = VNANFDMultiDetectorANODv3;
    error = [(VNANFDMultiDetector *)&v36 processDetectedObject:objectCopy originatingRequestSpecifier:specifierCopy objectBoundingBox:idCopy objectGroupId:bufferCopy imageBuffer:v13 qosClass:sessionCopy session:x warningRecorder:y detectedObjectResults:width error:height, recorderCopy, resultsCopy, error];
  }

  else
  {
    v29 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objectCopy, "labelKey")}];
    v30 = [recognizedFoodAndDrinkObjectClassToFoodAndDrinkCategoryName objectForKey:v29];

    [objectCopy confidence];
    LODWORD(v32) = v31;
    [(VNANFDMultiDetector *)self processRecognizedObjectWithIdentifier:v30 originatingRequestSpecifier:specifierCopy objectBoundingBox:idCopy objectGroupId:resultsCopy objectConfidence:x detectedObjectResults:y, width, height, v32];

    error = 1;
  }

  return error;
}

@end