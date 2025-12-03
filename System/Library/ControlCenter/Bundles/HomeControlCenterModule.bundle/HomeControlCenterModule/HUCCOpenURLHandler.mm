@interface HUCCOpenURLHandler
- (HUCCOpenURLHandler)initWithCCModuleContext:(id)context;
- (id)openURL:(id)l;
@end

@implementation HUCCOpenURLHandler

- (HUCCOpenURLHandler)initWithCCModuleContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HUCCOpenURLHandler;
  v6 = [(HUCCOpenURLHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (id)openURL:(id)l
{
  lCopy = l;
  v5 = MEMORY[0x29EDC5E50];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C99748C;
  v10[3] = &unk_29F33A948;
  v10[4] = self;
  v11 = lCopy;
  v6 = lCopy;
  v8 = objc_msgSend_futureWithErrorOnlyHandlerAdapterBlock_(v5, v7, v10);

  return v8;
}

@end