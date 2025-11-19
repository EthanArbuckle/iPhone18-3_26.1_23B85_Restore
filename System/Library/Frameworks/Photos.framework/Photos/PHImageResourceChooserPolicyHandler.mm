@interface PHImageResourceChooserPolicyHandler
+ (BOOL)_passesSquareTableThumbnailTestWithKey:(id)a3 pixelSize:(CGSize)a4 storeClassID:(unsigned __int16)a5 loadingOptions:(unint64_t)a6;
+ (unint64_t)qualifyResourceInfo:(id)a3 againstPolicy:(int64_t)a4 requestInfo:(id)a5 reversed:(BOOL)a6 tooLargeForPolicy:(BOOL *)a7 disqualificationReason:(id *)a8;
@end

@implementation PHImageResourceChooserPolicyHandler

+ (unint64_t)qualifyResourceInfo:(id)a3 againstPolicy:(int64_t)a4 requestInfo:(id)a5 reversed:(BOOL)a6 tooLargeForPolicy:(BOOL *)a7 disqualificationReason:(id *)a8
{
  v14 = a3;
  v15 = a5;
  if (v15)
  {
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_30:
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:a1 file:@"PHImageResourceChooserPolicyHandler.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"tooLargeForPolicy"}];

    if (a8)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v43 = [MEMORY[0x1E696AAA8] currentHandler];
  [v43 handleFailureInMethod:a2 object:a1 file:@"PHImageResourceChooserPolicyHandler.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"requestInfo"}];

  if (!a7)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (a8)
  {
    goto LABEL_4;
  }

LABEL_31:
  v45 = [MEMORY[0x1E696AAA8] currentHandler];
  [v45 handleFailureInMethod:a2 object:a1 file:@"PHImageResourceChooserPolicyHandler.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"outDisqualificationReason"}];

LABEL_4:
  v16 = [v14 store];
  v17 = [objc_opt_class() storeClassID];

  v18 = [v15 allowedResourceVersions];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v14, "version")}];
  v20 = [v18 containsObject:v19];

  if (!v20)
  {
    v28 = @"version mismatch";
LABEL_22:
    v33 = 0;
    *a8 = v28;
    goto LABEL_23;
  }

  v21 = [v14 dataStoreKey];
  [v15 desiredSize];
  v23 = v22;
  v25 = v24;
  v26 = [v15 behaviorSpec];
  v27 = [a1 _passesSquareTableThumbnailTestWithKey:v21 pixelSize:v17 storeClassID:objc_msgSend(v26 loadingOptions:{"loadingOptions"), v23, v25}];

  if (!v27)
  {
    v28 = @"failed square thumb test";
    goto LABEL_22;
  }

  if (a4 == 4)
  {
    if ([v15 isCloudShared])
    {
      goto LABEL_19;
    }
  }

  else
  {
    v27 = [v15 behaviorSpec];
    if ([v27 version] != 2 || (objc_msgSend(v15, "isCloudShared") & 1) != 0)
    {

      goto LABEL_19;
    }
  }

  v29 = [v15 asset];
  v30 = [v29 mediaType];

  if (a4 != 4)
  {
  }

  if (v30 != 2 && ([v14 isDerivative] & 1) != 0)
  {
    v28 = @"failed derivative test";
    goto LABEL_22;
  }

LABEL_19:
  v31 = [v15 behaviorSpec];
  v32 = [v31 useLimitedLibraryMode];

  if (v32 && v17 == 1)
  {
    v28 = @"failed limited library test";
    goto LABEL_22;
  }

  v35 = [v15 behaviorSpec];
  v36 = [v35 useLowMemoryMode];

  v33 = 2;
  if (v36 && v17 != 1)
  {
    v37 = [v15 asset];
    [v14 approximateSizeFromAsset:v37];
    v39 = v38;
    v41 = v40;

    v42 = [v14 isPrimaryFormat];
    v28 = @"failed low-memory mode test";
    if (v42 && v39 * v41 <= 25000000.0)
    {
      v33 = 2;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_23:

  return v33;
}

+ (BOOL)_passesSquareTableThumbnailTestWithKey:(id)a3 pixelSize:(CGSize)a4 storeClassID:(unsigned __int16)a5 loadingOptions:(unint64_t)a6
{
  v6 = a5;
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = v9;
  v11 = v6 != 1 || width == height && width > 0.0 || ([v9 representsSquareResource] & 1) == 0;

  return v11;
}

@end