@interface _FPProviderDomainChangesHandlerWrapper
+ (id)wrapperWithHandler:(id)a3;
- (void)callHandlerWithProvidersByID:(id)a3 error:(id)a4;
- (void)setUnregistered:(BOOL)a3;
@end

@implementation _FPProviderDomainChangesHandlerWrapper

+ (id)wrapperWithHandler:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = _Block_copy(v3);

  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)callHandlerWithProvidersByID:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  handler = v7->_handler;
  if (handler)
  {
    v9 = v10;
    if (v6)
    {
      v9 = 0;
    }

    handler[2](handler, v9, v6);
  }

  objc_sync_exit(v7);
}

- (void)setUnregistered:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (!a3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:obj file:@"FPProviderDomainChangesReceiver.m" lineNumber:63 description:@"trying to re-register an handler"];
  }

  handler = obj->_handler;
  obj->_handler = 0;

  objc_sync_exit(obj);
}

@end