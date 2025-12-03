@interface VNANFDMultiDetectorANODv5
+ (NSArray)knownAnimalFaceIdentifiers;
+ (NSDictionary)recognizedAnimalFaceObjectClassToAnimalFaceCategoryName;
+ (id)detectedObjectClassToRequestKey;
+ (id)detectedObjectRequestKeyToRequestInfo;
- (BOOL)processDetectedObject:(id)object originatingRequestSpecifier:(id)specifier objectBoundingBox:(CGRect)box objectGroupId:(id)id imageBuffer:(id)buffer qosClass:(unsigned int)class session:(id)session warningRecorder:(id)self0 detectedObjectResults:(id)self1 error:(id *)self2;
- (id)splitDetectedClassResultsIntoSubclasses:(id)subclasses;
@end

@implementation VNANFDMultiDetectorANODv5

+ (NSArray)knownAnimalFaceIdentifiers
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VNANFDMultiDetectorANODv5_knownAnimalFaceIdentifiers__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNANFDMultiDetectorANODv5 knownAnimalFaceIdentifiers]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv5 knownAnimalFaceIdentifiers]::onceToken, block);
  }

  v2 = +[VNANFDMultiDetectorANODv5 knownAnimalFaceIdentifiers]::knownAnimalFaceIdentifiers;

  return v2;
}

void __55__VNANFDMultiDetectorANODv5_knownAnimalFaceIdentifiers__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) recognizedAnimalFaceObjectClassToAnimalFaceCategoryName];
  v1 = [v4 allValues];
  v2 = [v1 copy];
  v3 = +[VNANFDMultiDetectorANODv5 knownAnimalFaceIdentifiers]::knownAnimalFaceIdentifiers;
  +[VNANFDMultiDetectorANODv5 knownAnimalFaceIdentifiers]::knownAnimalFaceIdentifiers = v2;
}

+ (NSDictionary)recognizedAnimalFaceObjectClassToAnimalFaceCategoryName
{
  if (+[VNANFDMultiDetectorANODv5 recognizedAnimalFaceObjectClassToAnimalFaceCategoryName]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv5 recognizedAnimalFaceObjectClassToAnimalFaceCategoryName]::onceToken, &__block_literal_global_36894);
  }

  v3 = +[VNANFDMultiDetectorANODv5 recognizedAnimalFaceObjectClassToAnimalFaceCategoryName]::recognizedAnimalFaceObjectClassToAnimalFaceCategoryName;

  return v3;
}

void __84__VNANFDMultiDetectorANODv5_recognizedAnimalFaceObjectClassToAnimalFaceCategoryName__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F19C1DE0;
  v2[1] = &unk_1F19C1DF8;
  v3[0] = @"CatFace";
  v3[1] = @"DogFace";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = +[VNANFDMultiDetectorANODv5 recognizedAnimalFaceObjectClassToAnimalFaceCategoryName]::recognizedAnimalFaceObjectClassToAnimalFaceCategoryName;
  +[VNANFDMultiDetectorANODv5 recognizedAnimalFaceObjectClassToAnimalFaceCategoryName]::recognizedAnimalFaceObjectClassToAnimalFaceCategoryName = v0;
}

+ (id)detectedObjectRequestKeyToRequestInfo
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VNANFDMultiDetectorANODv5_detectedObjectRequestKeyToRequestInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNANFDMultiDetectorANODv5 detectedObjectRequestKeyToRequestInfo]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv5 detectedObjectRequestKeyToRequestInfo]::onceToken, block);
  }

  v2 = +[VNANFDMultiDetectorANODv5 detectedObjectRequestKeyToRequestInfo]::detectedObjectRequestKeyToRequestInfo;

  return v2;
}

void __66__VNANFDMultiDetectorANODv5_detectedObjectRequestKeyToRequestInfo__block_invoke(uint64_t a1)
{
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___VNANFDMultiDetectorANODv5;
  v1 = objc_msgSendSuper2(&v8, sel_detectedObjectRequestKeyToRequestInfo);
  v2 = [v1 mutableCopy];

  v3 = [(VNMultiDetectorOriginalRequestInfo *)[VNANFDMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNANFDMultiDetectorProcessingOption_AnimalFacesRecognitionOriginatingRequestSpecifier" originalRequestResultsIndex:8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 setObject:v3 forKey:v5];

  v6 = [v2 copy];
  v7 = +[VNANFDMultiDetectorANODv5 detectedObjectRequestKeyToRequestInfo]::detectedObjectRequestKeyToRequestInfo;
  +[VNANFDMultiDetectorANODv5 detectedObjectRequestKeyToRequestInfo]::detectedObjectRequestKeyToRequestInfo = v6;
}

+ (id)detectedObjectClassToRequestKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VNANFDMultiDetectorANODv5_detectedObjectClassToRequestKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNANFDMultiDetectorANODv5 detectedObjectClassToRequestKey]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANODv5 detectedObjectClassToRequestKey]::onceToken, block);
  }

  v2 = +[VNANFDMultiDetectorANODv5 detectedObjectClassToRequestKey]::detectedObjectClassToRequestKey;

  return v2;
}

void __60__VNANFDMultiDetectorANODv5_detectedObjectClassToRequestKey__block_invoke(uint64_t a1)
{
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___VNANFDMultiDetectorANODv5;
  v1 = objc_msgSendSuper2(&v9, sel_detectedObjectClassToRequestKey);
  v2 = [v1 mutableCopy];

  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v2 setObject:v4 forKey:&unk_1F19C1DE0];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 setObject:v6 forKey:&unk_1F19C1DF8];

  v7 = [v2 copy];
  v8 = +[VNANFDMultiDetectorANODv5 detectedObjectClassToRequestKey]::detectedObjectClassToRequestKey;
  +[VNANFDMultiDetectorANODv5 detectedObjectClassToRequestKey]::detectedObjectClassToRequestKey = v7;
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
          v12 = [(VNANFDMultiDetector *)self isDetectedObject:v11 ofAGivenObjectSubClass:@"DogFace"];
          v13 = v5;
          if (!v12)
          {
            v14 = [(VNANFDMultiDetector *)self isDetectedObject:v11 ofAGivenObjectSubClass:@"CatFace"];
            v13 = v6;
            if (!v14)
            {
              v18.receiver = self;
              v18.super_class = VNANFDMultiDetectorANODv5;
              v15 = [(VNANFDMultiDetectorANODv4 *)&v18 splitDetectedClassResultsIntoSubclasses:v7];

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
    v23.super_class = VNANFDMultiDetectorANODv5;
    v15 = [(VNANFDMultiDetectorANODv4 *)&v23 splitDetectedClassResultsIntoSubclasses:subclassesCopy];
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
  recognizedAnimalFaceObjectClassToAnimalFaceCategoryName = [objc_opt_class() recognizedAnimalFaceObjectClassToAnimalFaceCategoryName];
  if ([objectCopy labelKey] - 13 >= 2)
  {
    v36.receiver = self;
    v36.super_class = VNANFDMultiDetectorANODv5;
    error = [(VNANFDMultiDetectorANODv4 *)&v36 processDetectedObject:objectCopy originatingRequestSpecifier:specifierCopy objectBoundingBox:idCopy objectGroupId:bufferCopy imageBuffer:v13 qosClass:sessionCopy session:x warningRecorder:y detectedObjectResults:width error:height, recorderCopy, resultsCopy, error];
  }

  else
  {
    v29 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objectCopy, "labelKey")}];
    v30 = [recognizedAnimalFaceObjectClassToAnimalFaceCategoryName objectForKey:v29];

    [objectCopy confidence];
    LODWORD(v32) = v31;
    [(VNANFDMultiDetector *)self processRecognizedObjectWithIdentifier:v30 originatingRequestSpecifier:specifierCopy objectBoundingBox:idCopy objectGroupId:resultsCopy objectConfidence:x detectedObjectResults:y, width, height, v32];

    error = 1;
  }

  return error;
}

@end