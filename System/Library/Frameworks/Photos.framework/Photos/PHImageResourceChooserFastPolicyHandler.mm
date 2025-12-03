@interface PHImageResourceChooserFastPolicyHandler
+ (unint64_t)qualifyResourceInfo:(id)info againstPolicy:(int64_t)policy requestInfo:(id)requestInfo reversed:(BOOL)reversed tooLargeForPolicy:(BOOL *)forPolicy disqualificationReason:(id *)reason;
@end

@implementation PHImageResourceChooserFastPolicyHandler

+ (unint64_t)qualifyResourceInfo:(id)info againstPolicy:(int64_t)policy requestInfo:(id)requestInfo reversed:(BOOL)reversed tooLargeForPolicy:(BOOL *)forPolicy disqualificationReason:(id *)reason
{
  reversedCopy = reversed;
  infoCopy = info;
  requestInfoCopy = requestInfo;
  v34.receiver = self;
  v34.super_class = &OBJC_METACLASS___PHImageResourceChooserFastPolicyHandler;
  v16 = objc_msgSendSuper2(&v34, sel_qualifyResourceInfo_againstPolicy_requestInfo_reversed_tooLargeForPolicy_disqualificationReason_, infoCopy, policy, requestInfoCopy, reversedCopy, forPolicy, reason);
  store = [infoCopy store];
  storeClassID = [objc_opt_class() storeClassID];

  if (v16)
  {
    if (storeClassID == 1 || !policy && ([requestInfoCopy behaviorSpec], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isNetworkAccessAllowed"), v20, (v21 & 1) != 0))
    {
      v19 = 1;
    }

    else
    {
      v19 = 0;
      *reason = @"not fast";
      *forPolicy = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  asset = [requestInfoCopy asset];
  [infoCopy approximateSizeFromAsset:asset];
  v24 = v23;
  v26 = v25;

  if (!v19)
  {
    v32 = 0;
    goto LABEL_17;
  }

  behaviorSpec = [requestInfoCopy behaviorSpec];
  [behaviorSpec minimumTableThumbnailLongSide];
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

  behaviorSpec2 = [requestInfoCopy behaviorSpec];
  [behaviorSpec2 minimumTableThumbnailLongSide];
  v31 = v30;

  if (v26 >= v31)
  {
    goto LABEL_16;
  }

  v32 = 0;
  *reason = @"failed minimumTableThumbnailLongSide test";
LABEL_17:

  return v32;
}

@end