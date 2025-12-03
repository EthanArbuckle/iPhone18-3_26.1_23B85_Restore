@interface AKPasswordResetPresenterHostInterface
+ (id)XPCInterface;
@end

@implementation AKPasswordResetPresenterHostInterface

+ (id)XPCInterface
{
  selfCopy = self;
  v14 = a2;
  v17 = &XPCInterface_onceToken_0;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_2);
  if (*v17 != -1)
  {
    dispatch_once(v17, location);
  }

  objc_storeStrong(&location, 0);
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  v11 = XPCInterface_interface_0;
  v10 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v12 = [v10 setWithObjects:{v9, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  [v11 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v12);
  v2 = p_info[68];

  return v2;
}

uint64_t __53__AKPasswordResetPresenterHostInterface_XPCInterface__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:{&unk_1F07DCB68, a1, a1}];
  v2 = XPCInterface_interface_0;
  XPCInterface_interface_0 = v1;
  return MEMORY[0x1E69E5920](v2);
}

@end