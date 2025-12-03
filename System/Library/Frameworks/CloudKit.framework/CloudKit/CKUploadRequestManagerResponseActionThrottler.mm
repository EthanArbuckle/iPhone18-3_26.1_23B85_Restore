@interface CKUploadRequestManagerResponseActionThrottler
- (CKUploadRequestManagerResponseActionThrottler)init;
- (double)throttleTimeForCount:(int64_t)count isRetry:(BOOL)retry;
- (unint64_t)totalThrottleCountForAction:(int64_t)action;
- (void)gateResponseAction:(int64_t)action isRetry:(BOOL)retry;
@end

@implementation CKUploadRequestManagerResponseActionThrottler

- (CKUploadRequestManagerResponseActionThrottler)init
{
  v8.receiver = self;
  v8.super_class = CKUploadRequestManagerResponseActionThrottler;
  v4 = [(CKUploadRequestManagerResponseActionThrottler *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3);
    v6 = *(v4 + 7);
    *(v4 + 7) = v5;

    *(v4 + 1) = 0x4014000000000000;
    *(v4 + 2) = 15;
    *(v4 + 24) = xmmword_1886FE820;
    *(v4 + 5) = 0x4014000000000000;
  }

  return v4;
}

- (void)gateResponseAction:(int64_t)action isRetry:(BOOL)retry
{
  v6 = objc_opt_class();
  objc_msgSend_currentTime(v6, v7, v8);

  MEMORY[0x1EEE66B58](self, sel_gateResponseAction_isRetry_currentTime_, action);
}

- (double)throttleTimeForCount:(int64_t)count isRetry:(BOOL)retry
{
  retryCopy = retry;
  v8 = count - objc_msgSend_minimumThrottleCount(self, a2, count);
  if (v8 < 0)
  {
    v17 = 0.0;
  }

  else
  {
    objc_msgSend_minimumThrottleTime(self, v6, v7);
    v10 = v9;
    objc_msgSend_maximumThrottleTime(self, v11, v12);
    v14 = v13;
    v15 = vcvtpd_s64_f64(log2(v13 / v10));
    if (v8 < v15)
    {
      v15 = v8;
    }

    v16 = v10 * exp2(v15);
    if (v16 >= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }
  }

  result = v17;
  if (retryCopy)
  {
    objc_msgSend_minimumRetryTime(self, v6, v7, v17);
  }

  if (v17 >= result)
  {
    return v17;
  }

  return result;
}

- (unint64_t)totalThrottleCountForAction:(int64_t)action
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_responseActionToMetadata(selfCopy, v5, v6);
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, action);
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v10, v9);
  v14 = objc_msgSend_totalThrottleCount(v11, v12, v13);

  objc_sync_exit(selfCopy);
  return v14;
}

@end