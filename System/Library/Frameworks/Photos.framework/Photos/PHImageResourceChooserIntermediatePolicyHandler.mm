@interface PHImageResourceChooserIntermediatePolicyHandler
+ (unint64_t)qualifyResourceInfo:(id)info againstPolicy:(int64_t)policy requestInfo:(id)requestInfo reversed:(BOOL)reversed tooLargeForPolicy:(BOOL *)forPolicy disqualificationReason:(id *)reason;
@end

@implementation PHImageResourceChooserIntermediatePolicyHandler

+ (unint64_t)qualifyResourceInfo:(id)info againstPolicy:(int64_t)policy requestInfo:(id)requestInfo reversed:(BOOL)reversed tooLargeForPolicy:(BOOL *)forPolicy disqualificationReason:(id *)reason
{
  reversedCopy = reversed;
  infoCopy = info;
  requestInfoCopy = requestInfo;
  v36.receiver = self;
  v36.super_class = &OBJC_METACLASS___PHImageResourceChooserIntermediatePolicyHandler;
  v16 = objc_msgSendSuper2(&v36, sel_qualifyResourceInfo_againstPolicy_requestInfo_reversed_tooLargeForPolicy_disqualificationReason_, infoCopy, policy, requestInfoCopy, reversedCopy, forPolicy, reason);
  dataStoreKey = [infoCopy dataStoreKey];

  store = [infoCopy store];
  storeClassID = [objc_opt_class() storeClassID];

  if (!v16)
  {
    goto LABEL_9;
  }

  if ([infoCopy isDerivative])
  {
    v20 = @"not local";
    if (storeClassID == 1)
    {
      v20 = @"table thumb";
    }

    else if (dataStoreKey)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = @"not derivative";
  }

  v16 = 0;
  *reason = v20;
LABEL_9:
  recipeID = [infoCopy recipeID];
  [requestInfoCopy fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable];
  if (v22 <= 0.0)
  {
    [requestInfoCopy requestedScale];
    v24 = v25 * 0.85;
  }

  else
  {
    [requestInfoCopy fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable];
    v24 = v23 * 0.850000024;
  }

  v26 = recipeID & 0xFFFF0000;
  if (PLResourceRecipeIsFullSizeDeferredProcessingPreview())
  {
    *forPolicy = 0;
  }

  else
  {
    [infoCopy resourceScale];
    v31 = v30;
    [requestInfoCopy requestedScale];
    v33 = v31 >= v32;
    if (v31 < v32 && v26 != 0x40000)
    {
      [infoCopy resourceScale];
      v33 = v34 >= v24;
    }

    *forPolicy = v33;
    if (v16 && v33)
    {
      v16 = 0;
      *reason = @"too large for int";
      goto LABEL_24;
    }
  }

  if (v16)
  {
    if (v26 == 0x40000)
    {
      [infoCopy resourceScale];
      v28 = v27;
      [requestInfoCopy requestedScale];
      if (v28 <= v29)
      {
        v16 = 1;
      }
    }
  }

LABEL_24:

  return v16;
}

@end