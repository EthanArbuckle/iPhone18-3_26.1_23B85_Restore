@interface AKAppleIDAuthenticationClientInterface
+ (id)XPCInterface;
@end

@implementation AKAppleIDAuthenticationClientInterface

+ (id)XPCInterface
{
  v5 = &XPCInterface_onceToken_4;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_15);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = XPCInterface_interface_4;

  return v2;
}

uint64_t __54__AKAppleIDAuthenticationClientInterface_XPCInterface__block_invoke(uint64_t a1)
{
  v19 = a1;
  v18 = a1;
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07BA8F0];
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  v2 = XPCInterface_interface_4;
  XPCInterface_interface_4 = v1;
  MEMORY[0x1E69E5920](v2);
  v16 = XPCInterface_interface_4;
  v5 = 0x1E695D000uLL;
  v15 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v17 = [v15 setWithObjects:{v14, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  [v16 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  return MEMORY[0x1E69E5920](v17);
}

@end