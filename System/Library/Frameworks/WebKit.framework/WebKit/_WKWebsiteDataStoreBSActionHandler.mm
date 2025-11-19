@interface _WKWebsiteDataStoreBSActionHandler
+ (id)shared;
- (BOOL)handleNotificationResponse:(id)a3;
- (id)_respondToApplicationActions:(id)a3 fromTransitionContext:(id)a4;
- (void)setWebPushActionHandler:(id)a3;
@end

@implementation _WKWebsiteDataStoreBSActionHandler

+ (id)shared
{
  if (byte_1EB01D2FB == 1)
  {
    return qword_1EB01D330;
  }

  result = objc_alloc_init(_WKWebsiteDataStoreBSActionHandler);
  qword_1EB01D330 = result;
  byte_1EB01D2FB = 1;
  return result;
}

- (void)setWebPushActionHandler:(id)a3
{
  if (a3)
  {
    v4 = _Block_copy(a3);
    _Block_release(self->_webPushActionHandler.m_block);
    self->_webPushActionHandler.m_block = v4;

    _Block_release(0);
  }

  else
  {
    __break(0xC471u);
  }
}

- (BOOL)handleNotificationResponse:(id)a3
{
  v3 = [_WKWebPushAction _webPushActionWithNotificationResponse:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = __65___WKWebsiteDataStoreBSActionHandler_handleNotificationResponse___block_invoke;
    block[3] = &__block_descriptor_40_e8_32c40_ZTSN3WTF9RetainPtrI16_WKWebPushActionEE_e5_v8__0l;
    v10 = v4;
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  return v4 != 0;
}

- (id)_respondToApplicationActions:(id)a3 fromTransitionContext:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = +[_WKWebPushAction webPushActionWithDictionary:](_WKWebPushAction, "webPushActionWithDictionary:", [objc_msgSend(v10 "info")]);
        if (v11)
        {
          v12 = (*(self->_webPushActionHandler.m_block + 2))();
          if (v12)
          {
            [v12 _handleWebPushAction:v11];
            if ([v10 canSendResponse])
            {
              [v10 sendResponse:{objc_msgSend(MEMORY[0x1E698E600], "response")}];
            }
          }

          else
          {
            v13 = qword_1ED6410A8;
            if (os_log_type_enabled(qword_1ED6410A8, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unable to handle a _WKWebPushAction: Client did not return a valid WKWebsiteDataStore", buf, 2u);
            }

            if ([v10 canSendResponse])
            {
              v14 = MEMORY[0x1E698E600];
              v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:0];
              [v10 sendResponse:{objc_msgSend(v14, "responseForError:", v15)}];
              if (v15)
              {
              }
            }
          }
        }

        else
        {
          [v6 addObject:v10];
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  if (v6)
  {
    v16 = v6;
  }

  return v6;
}

@end