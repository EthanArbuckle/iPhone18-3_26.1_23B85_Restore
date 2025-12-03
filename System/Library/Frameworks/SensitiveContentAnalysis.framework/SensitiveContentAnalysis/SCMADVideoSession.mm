@interface SCMADVideoSession
+ (BOOL)ttrFrameCollectionEnabled;
- (BOOL)processPixelBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest resultHandler:(id)handler;
- (SCMADVideoSession)initWithError:(id *)error;
- (void)requestTTRNotificationWithVideoFrames:(id)frames streamID:(id)d startDate:(id)date completionHandler:(id)handler;
@end

@implementation SCMADVideoSession

- (SCMADVideoSession)initWithError:(id *)error
{
  v11.receiver = self;
  v11.super_class = SCMADVideoSession;
  v4 = [(SCMADVideoSession *)&v11 init];
  if (v4)
  {
    session = [getMADVideoSessionClass() session];
    session = v4->_session;
    v4->_session = session;

    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v7 = getMADVideoSessionSafetyRequestClass_softClass;
    v16 = getMADVideoSessionSafetyRequestClass_softClass;
    if (!getMADVideoSessionSafetyRequestClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getMADVideoSessionSafetyRequestClass_block_invoke;
      v12[3] = &unk_1E7A43950;
      v12[4] = &v13;
      __getMADVideoSessionSafetyRequestClass_block_invoke(v12);
      v7 = v14[3];
    }

    v8 = v7;
    _Block_object_dispose(&v13, 8);
    v9 = objc_alloc_init(v7);
    if (([(MADVideoSession *)v4->_session addRequest:v9 error:error]& 1) == 0)
    {

      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)processPixelBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest resultHandler:(id)handler
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v11 = *&orientation;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__SCMADVideoSession_processPixelBuffer_timestamp_orientation_regionOfInterest_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7A43BB8;
  v16 = handlerCopy;
  v27 = v16;
  v17 = _Block_copy(aBlock);
  session = [(SCMADVideoSession *)self session];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  MADVideoSessionFramePropertiesClass = getMADVideoSessionFramePropertiesClass();

  if (!MADVideoSessionFramePropertiesClass)
  {
LABEL_5:
    session2 = [(SCMADVideoSession *)self session];
    v24 = *&timestamp->var0;
    var3 = timestamp->var3;
    v22 = [session2 processPixelBuffer:buffer timestamp:&v24 orientation:v11 resultHandler:v17];
    goto LABEL_6;
  }

  session2 = objc_alloc_init(getMADVideoSessionFramePropertiesClass());
  [session2 setOrientation:v11];
  v24 = *&timestamp->var0;
  var3 = timestamp->var3;
  [session2 setTimestamp:&v24];
  [session2 setRegionOfInterest:{x, y, width, height}];
  session3 = [(SCMADVideoSession *)self session];
  v22 = [session3 processPixelBuffer:buffer frameProperties:session2 resultHandler:v17];

LABEL_6:
  return v22;
}

void __93__SCMADVideoSession_processPixelBuffer_timestamp_orientation_regionOfInterest_resultHandler___block_invoke(uint64_t a1, void *a2, __int128 *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v23 = a4;
  if (v7)
  {
    v21 = a1;
    v22 = a3;
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v8)
    {
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v34 = 0;
          v35 = &v34;
          v36 = 0x2050000000;
          v12 = getMADVideoSessionSafetyResultClass_softClass;
          v37 = getMADVideoSessionSafetyResultClass_softClass;
          if (!getMADVideoSessionSafetyResultClass_softClass)
          {
            *&v30 = MEMORY[0x1E69E9820];
            *(&v30 + 1) = 3221225472;
            v31 = __getMADVideoSessionSafetyResultClass_block_invoke;
            v32 = &unk_1E7A43950;
            v33 = &v34;
            __getMADVideoSessionSafetyResultClass_block_invoke(&v30);
            v12 = v35[3];
          }

          v13 = v12;
          _Block_object_dispose(&v34, 8);
          if (objc_opt_isKindOfClass())
          {
            v14 = v11;
            if (objc_opt_respondsToSelector())
            {
              v15 = [v14 confidenceTypeN];
            }

            else
            {
              v15 = 0;
            }

            v16 = [SCMADVideoSessionResult alloc];
            v17 = [v14 analysisResult];
            v18 = [(SCMADVideoSessionResult *)v16 initWithAnalysis:v17 confidenceScore:v15];

            [v24 addObject:v18];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v8);
    }

    v19 = *(*(v21 + 32) + 16);
    v30 = *v22;
    v31 = *(v22 + 2);
    v19();
  }

  else
  {
    v20 = *(*(a1 + 32) + 16);
    v30 = *a3;
    v31 = *(a3 + 2);
    v20();
  }
}

+ (BOOL)ttrFrameCollectionEnabled
{
  if (os_variant_has_internal_content() && getMADVideoSessionTTRFrameClass() && getMADVideoSessionTTROptionsClass())
  {
    v2 = objc_alloc(getMADVideoSessionClass());
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)requestTTRNotificationWithVideoFrames:(id)frames streamID:(id)d startDate:(id)date completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  framesCopy = frames;
  dCopy = d;
  dateCopy = date;
  handlerCopy = handler;
  v14 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = framesCopy;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        frame = [*(*(&v27 + 1) + 8 * v19) frame];
        [v14 addObject:frame];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = objc_alloc_init(getMADVideoSessionTTROptionsClass());
  [v21 setStreamID:dCopy];
  [v21 setStartDate:dateCopy];
  date = [MEMORY[0x1E695DF00] date];
  [v21 setEventDate:date];

  session = [(SCMADVideoSession *)self session];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __101__SCMADVideoSession_TTR__requestTTRNotificationWithVideoFrames_streamID_startDate_completionHandler___block_invoke;
  v25[3] = &unk_1E7A43BE0;
  v26 = handlerCopy;
  v24 = handlerCopy;
  [session requestTTRNotificationWithVideoFrames:v14 options:v21 completionHandler:v25];
}

@end