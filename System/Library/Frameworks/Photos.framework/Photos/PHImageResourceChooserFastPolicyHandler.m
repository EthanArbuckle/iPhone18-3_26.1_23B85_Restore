@interface PHImageResourceChooserFastPolicyHandler
+ (unint64_t)qualifyResourceInfo:(id)a3 againstPolicy:(int64_t)a4 requestInfo:(id)a5 reversed:(BOOL)a6 tooLargeForPolicy:(BOOL *)a7 disqualificationReason:(id *)a8;
@end

@implementation PHImageResourceChooserFastPolicyHandler

+ (unint64_t)qualifyResourceInfo:(id)a3 againstPolicy:(int64_t)a4 requestInfo:(id)a5 reversed:(BOOL)a6 tooLargeForPolicy:(BOOL *)a7 disqualificationReason:(id *)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a5;
  v34.receiver = a1;
  v34.super_class = &OBJC_METACLASS___PHImageResourceChooserFastPolicyHandler;
  v16 = objc_msgSendSuper2(&v34, sel_qualifyResourceInfo_againstPolicy_requestInfo_reversed_tooLargeForPolicy_disqualificationReason_, v14, a4, v15, v10, a7, a8);
  v17 = [v14 store];
  v18 = [objc_opt_class() storeClassID];

  if (v16)
  {
    if (v18 == 1 || !a4 && ([v15 behaviorSpec], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isNetworkAccessAllowed"), v20, (v21 & 1) != 0))
    {
      v19 = 1;
    }

    else
    {
      v19 = 0;
      *a8 = @"not fast";
      *a7 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  v22 = [v15 asset];
  [v14 approximateSizeFromAsset:v22];
  v24 = v23;
  v26 = v25;

  if (!v19)
  {
    v32 = 0;
    goto LABEL_17;
  }

  v27 = [v15 behaviorSpec];
  [v27 minimumTableThumbnailLongSide];
  if (v28 <= 0.0)
  {

LABEL_16:
    v32 = 2;
    goto LABEL_17;
  }

  if (v24 >= v26)
  {
    v26 = v24;
  }

  v29 = [v15 behaviorSpec];
  [v29 minimumTableThumbnailLongSide];
  v31 = v30;

  if (v26 >= v31)
  {
    goto LABEL_16;
  }

  v32 = 0;
  *a8 = @"failed minimumTableThumbnailLongSide test";
LABEL_17:

  return v32;
}

@end