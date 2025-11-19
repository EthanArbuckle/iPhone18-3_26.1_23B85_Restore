@interface PHImageResourceChooserIntermediatePolicyHandler
+ (unint64_t)qualifyResourceInfo:(id)a3 againstPolicy:(int64_t)a4 requestInfo:(id)a5 reversed:(BOOL)a6 tooLargeForPolicy:(BOOL *)a7 disqualificationReason:(id *)a8;
@end

@implementation PHImageResourceChooserIntermediatePolicyHandler

+ (unint64_t)qualifyResourceInfo:(id)a3 againstPolicy:(int64_t)a4 requestInfo:(id)a5 reversed:(BOOL)a6 tooLargeForPolicy:(BOOL *)a7 disqualificationReason:(id *)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a5;
  v36.receiver = a1;
  v36.super_class = &OBJC_METACLASS___PHImageResourceChooserIntermediatePolicyHandler;
  v16 = objc_msgSendSuper2(&v36, sel_qualifyResourceInfo_againstPolicy_requestInfo_reversed_tooLargeForPolicy_disqualificationReason_, v14, a4, v15, v10, a7, a8);
  v17 = [v14 dataStoreKey];

  v18 = [v14 store];
  v19 = [objc_opt_class() storeClassID];

  if (!v16)
  {
    goto LABEL_9;
  }

  if ([v14 isDerivative])
  {
    v20 = @"not local";
    if (v19 == 1)
    {
      v20 = @"table thumb";
    }

    else if (v17)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = @"not derivative";
  }

  v16 = 0;
  *a8 = v20;
LABEL_9:
  v21 = [v14 recipeID];
  [v15 fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable];
  if (v22 <= 0.0)
  {
    [v15 requestedScale];
    v24 = v25 * 0.85;
  }

  else
  {
    [v15 fallbackRequestedScaleIfPreferredResourceNotLocallyAvailable];
    v24 = v23 * 0.850000024;
  }

  v26 = v21 & 0xFFFF0000;
  if (PLResourceRecipeIsFullSizeDeferredProcessingPreview())
  {
    *a7 = 0;
  }

  else
  {
    [v14 resourceScale];
    v31 = v30;
    [v15 requestedScale];
    v33 = v31 >= v32;
    if (v31 < v32 && v26 != 0x40000)
    {
      [v14 resourceScale];
      v33 = v34 >= v24;
    }

    *a7 = v33;
    if (v16 && v33)
    {
      v16 = 0;
      *a8 = @"too large for int";
      goto LABEL_24;
    }
  }

  if (v16)
  {
    if (v26 == 0x40000)
    {
      [v14 resourceScale];
      v28 = v27;
      [v15 requestedScale];
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