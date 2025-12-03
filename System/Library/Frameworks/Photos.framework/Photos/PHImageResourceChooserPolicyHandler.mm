@interface PHImageResourceChooserPolicyHandler
+ (BOOL)_passesSquareTableThumbnailTestWithKey:(id)key pixelSize:(CGSize)size storeClassID:(unsigned __int16)d loadingOptions:(unint64_t)options;
+ (unint64_t)qualifyResourceInfo:(id)info againstPolicy:(int64_t)policy requestInfo:(id)requestInfo reversed:(BOOL)reversed tooLargeForPolicy:(BOOL *)forPolicy disqualificationReason:(id *)reason;
@end

@implementation PHImageResourceChooserPolicyHandler

+ (unint64_t)qualifyResourceInfo:(id)info againstPolicy:(int64_t)policy requestInfo:(id)requestInfo reversed:(BOOL)reversed tooLargeForPolicy:(BOOL *)forPolicy disqualificationReason:(id *)reason
{
  infoCopy = info;
  requestInfoCopy = requestInfo;
  if (requestInfoCopy)
  {
    if (forPolicy)
    {
      goto LABEL_3;
    }

LABEL_30:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHImageResourceChooserPolicyHandler.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"tooLargeForPolicy"}];

    if (reason)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHImageResourceChooserPolicyHandler.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"requestInfo"}];

  if (!forPolicy)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (reason)
  {
    goto LABEL_4;
  }

LABEL_31:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHImageResourceChooserPolicyHandler.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"outDisqualificationReason"}];

LABEL_4:
  store = [infoCopy store];
  storeClassID = [objc_opt_class() storeClassID];

  allowedResourceVersions = [requestInfoCopy allowedResourceVersions];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(infoCopy, "version")}];
  v20 = [allowedResourceVersions containsObject:v19];

  if (!v20)
  {
    v28 = @"version mismatch";
LABEL_22:
    v33 = 0;
    *reason = v28;
    goto LABEL_23;
  }

  dataStoreKey = [infoCopy dataStoreKey];
  [requestInfoCopy desiredSize];
  v23 = v22;
  v25 = v24;
  behaviorSpec = [requestInfoCopy behaviorSpec];
  behaviorSpec2 = [self _passesSquareTableThumbnailTestWithKey:dataStoreKey pixelSize:storeClassID storeClassID:objc_msgSend(behaviorSpec loadingOptions:{"loadingOptions"), v23, v25}];

  if (!behaviorSpec2)
  {
    v28 = @"failed square thumb test";
    goto LABEL_22;
  }

  if (policy == 4)
  {
    if ([requestInfoCopy isCloudShared])
    {
      goto LABEL_19;
    }
  }

  else
  {
    behaviorSpec2 = [requestInfoCopy behaviorSpec];
    if ([behaviorSpec2 version] != 2 || (objc_msgSend(requestInfoCopy, "isCloudShared") & 1) != 0)
    {

      goto LABEL_19;
    }
  }

  asset = [requestInfoCopy asset];
  mediaType = [asset mediaType];

  if (policy != 4)
  {
  }

  if (mediaType != 2 && ([infoCopy isDerivative] & 1) != 0)
  {
    v28 = @"failed derivative test";
    goto LABEL_22;
  }

LABEL_19:
  behaviorSpec3 = [requestInfoCopy behaviorSpec];
  useLimitedLibraryMode = [behaviorSpec3 useLimitedLibraryMode];

  if (useLimitedLibraryMode && storeClassID == 1)
  {
    v28 = @"failed limited library test";
    goto LABEL_22;
  }

  behaviorSpec4 = [requestInfoCopy behaviorSpec];
  useLowMemoryMode = [behaviorSpec4 useLowMemoryMode];

  v33 = 2;
  if (useLowMemoryMode && storeClassID != 1)
  {
    asset2 = [requestInfoCopy asset];
    [infoCopy approximateSizeFromAsset:asset2];
    v39 = v38;
    v41 = v40;

    isPrimaryFormat = [infoCopy isPrimaryFormat];
    v28 = @"failed low-memory mode test";
    if (isPrimaryFormat && v39 * v41 <= 25000000.0)
    {
      v33 = 2;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_23:

  return v33;
}

+ (BOOL)_passesSquareTableThumbnailTestWithKey:(id)key pixelSize:(CGSize)size storeClassID:(unsigned __int16)d loadingOptions:(unint64_t)options
{
  dCopy = d;
  height = size.height;
  width = size.width;
  keyCopy = key;
  v10 = keyCopy;
  v11 = dCopy != 1 || width == height && width > 0.0 || ([keyCopy representsSquareResource] & 1) == 0;

  return v11;
}

@end