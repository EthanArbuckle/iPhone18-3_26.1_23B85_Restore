@interface PHFaceClusteringProperties
+ (id)propertiesToFetch;
- (PHFaceClusteringProperties)initWithFetchDictionary:(id)a3 face:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHFaceClusteringProperties

- (PHFaceClusteringProperties)initWithFetchDictionary:(id)a3 face:(id)a4 prefetched:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = PHFaceClusteringProperties;
  v9 = [(PHFaceClusteringProperties *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->super._face, v8);
    if (v7)
    {
      v11 = [v7 objectForKeyedSubscript:@"groupingIdentifier"];
      groupingIdentifier = v10->_groupingIdentifier;
      v10->_groupingIdentifier = v11;

      v13 = [v7 objectForKeyedSubscript:@"faceprint.data"];
      v14 = [v7 objectForKeyedSubscript:@"faceprint.faceprintVersion"];
      v15 = v14;
      if (v13 && v14)
      {
        v16 = -[PHFaceprint initWithFaceprintData:faceprintVersion:]([PHFaceprint alloc], "initWithFaceprintData:faceprintVersion:", v13, [v14 integerValue]);
        faceprint = v10->_faceprint;
        v10->_faceprint = v16;
      }
    }
  }

  return v10;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_24_33917;

  return v2;
}

void __47__PHFaceClusteringProperties_propertiesToFetch__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"groupingIdentifier";
  v3[1] = @"faceprint.data";
  v3[2] = @"faceprint.faceprintVersion";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_24_33917;
  propertiesToFetch_pl_once_object_24_33917 = v1;
}

@end