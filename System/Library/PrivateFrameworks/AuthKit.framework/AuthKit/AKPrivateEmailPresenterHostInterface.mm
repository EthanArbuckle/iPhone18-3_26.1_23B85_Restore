@interface AKPrivateEmailPresenterHostInterface
+ (id)XPCInterface;
@end

@implementation AKPrivateEmailPresenterHostInterface

+ (id)XPCInterface
{
  v17[2] = self;
  v17[1] = a2;
  v19 = &XPCInterface_onceToken_8;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_27);
  if (*v19 != -1)
  {
    dispatch_once(v19, location);
  }

  v14 = 0;
  objc_storeStrong(&location, 0);
  v12 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v2 = [v12 setWithObjects:{v11, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v15 = v17;
  v17[0] = v2;
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  [XPCInterface_interface_7 setClasses:v2 forSelector:sel_privateEmailFetchCompletedWith_error_completion_ argumentIndex:0 ofReply:0];
  v16 = MEMORY[0x1E69E5928](p_info[75]);
  objc_storeStrong(v15, v14);
  v3 = v16;

  return v3;
}

uint64_t __52__AKPrivateEmailPresenterHostInterface_XPCInterface__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:{&unk_1F07DCE08, a1, a1}];
  v2 = XPCInterface_interface_7;
  XPCInterface_interface_7 = v1;
  return MEMORY[0x1E69E5920](v2);
}

@end