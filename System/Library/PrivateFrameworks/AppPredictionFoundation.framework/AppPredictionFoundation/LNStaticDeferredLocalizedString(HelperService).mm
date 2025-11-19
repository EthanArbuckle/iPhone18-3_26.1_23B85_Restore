@interface LNStaticDeferredLocalizedString(HelperService)
- (id)atx_efficientLocalizedString;
@end

@implementation LNStaticDeferredLocalizedString(HelperService)

- (id)atx_efficientLocalizedString
{
  if (shouldDenyConnectionForCurrentProcess())
  {
    v2 = [a1 localizedStringForLocaleIdentifier:0];
  }

  else
  {
    v3 = prepareXPCConnection();
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__1;
    v12 = __Block_byref_object_dispose__1;
    v13 = &stru_28397E650;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__LNStaticDeferredLocalizedString_HelperService__atx_efficientLocalizedString__block_invoke;
    v7[3] = &unk_27858FDB8;
    v7[4] = a1;
    v7[5] = &v8;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __78__LNStaticDeferredLocalizedString_HelperService__atx_efficientLocalizedString__block_invoke_32;
    v6[3] = &unk_27858FDE0;
    v6[4] = a1;
    v6[5] = &v8;
    [v4 localizedStringForLinkString:a1 withReply:v6];

    [v3 invalidate];
    v2 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  return v2;
}

@end