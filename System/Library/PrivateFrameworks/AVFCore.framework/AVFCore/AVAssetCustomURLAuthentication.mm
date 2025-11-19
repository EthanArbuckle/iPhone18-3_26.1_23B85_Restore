@interface AVAssetCustomURLAuthentication
- (AVAssetCustomURLAuthentication)initWithFigAsset:(OpaqueFigAsset *)a3;
- (int)_handleAuthChallenge:(__CFDictionary *)a3 requestID:(unint64_t)a4 canHandleRequestOut:(char *)a5;
- (void)dealloc;
@end

@implementation AVAssetCustomURLAuthentication

- (AVAssetCustomURLAuthentication)initWithFigAsset:(OpaqueFigAsset *)a3
{
  v14.receiver = self;
  v14.super_class = AVAssetCustomURLAuthentication;
  cf = 0;
  v4 = [(AVAssetCustomURLAuthentication *)&v14 init];
  if (v4)
  {
    if (!a3)
    {
      goto LABEL_11;
    }

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4->_callbackQueue = dispatch_queue_create("com.apple.avfoundation.authkeychain.callback", v5);
    CMBaseObject = FigAssetGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = v7(CMBaseObject, *MEMORY[0x1E6971200], *MEMORY[0x1E695E480], &cf);
    v9 = cf;
    if (v8)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_11;
    }

    callbackQueue = v4->_callbackQueue;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    v12 = v11 && v11(v9, 800, "com.apple.avfoundation.authkeychain", v4, callbackQueue, &initWithFigAsset__sAVAssetCustomURLAuthenticationCallbacks, 0, &v4->_handler) == 0;
    if (cf)
    {
      CFRelease(cf);
    }

    if (!v12)
    {
LABEL_11:

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  callbackQueue = self->_callbackQueue;
  if (callbackQueue)
  {
    dispatch_release(callbackQueue);
  }

  handler = self->_handler;
  if (handler)
  {
    CFRelease(handler);
  }

  v5.receiver = self;
  v5.super_class = AVAssetCustomURLAuthentication;
  [(AVAssetCustomURLAuthentication *)&v5 dealloc];
}

- (int)_handleAuthChallenge:(__CFDictionary *)a3 requestID:(unint64_t)a4 canHandleRequestOut:(char *)a5
{
  v18 = 0;
  v19 = 0;
  *a5 = 0;
  v9 = FigCustomURLRequestInfoCopyNSURLAuthenticationChallenge();
  if (v9)
  {
    if (v9 == -17360)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v12 = 0;
  }

  else
  {
    *a5 = 1;
    v10 = FigCustomURLRequestInfoCopyURL();
    if (v10 || (v11 = [AVAssetCustomURLAuthentication copyKeychainCredentialForUrl:v18]) == 0)
    {
      [(AVAssetCustomURLAuthentication *)a3 _handleAuthChallenge:v16 requestID:a4 canHandleRequestOut:?];
      v12 = 0;
    }

    else
    {
      v12 = v11;
      if (a3)
      {
        CFRetain(a3);
      }

      v13 = v12;
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85__AVAssetCustomURLAuthentication__handleAuthChallenge_requestID_canHandleRequestOut___block_invoke;
      block[3] = &unk_1E7462CF8;
      block[6] = a3;
      block[7] = a4;
      block[4] = v12;
      block[5] = self;
      dispatch_async(callbackQueue, block);
      v10 = 0;
    }
  }

  return v10;
}

void __85__AVAssetCustomURLAuthentication__handleAuthChallenge_requestID_canHandleRequestOut___block_invoke(uint64_t a1)
{
  [AVAssetCustomURLAuthentication sendAuthResponse:*(a1 + 48) requestID:*(a1 + 56) disposition:0 credential:*(a1 + 32) authHandler:*(*(a1 + 40) + 8)];

  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __85__AVAssetCustomURLAuthentication__handleAuthChallenge_requestID_canHandleRequestOut___block_invoke_2(void *a1)
{
  [AVAssetCustomURLAuthentication sendAuthResponse:a1[5] requestID:a1[6] disposition:3 credential:0 authHandler:*(a1[4] + 8)];
  v2 = a1[5];
  if (v2)
  {

    CFRelease(v2);
  }
}

@end