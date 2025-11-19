@interface LSDIconClient
@end

@implementation LSDIconClient

id __58___LSDIconClient_getAlternateIconNameForIdentifier_reply___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) XPCConnection];
  v2 = [v1 _xpcConnection];
  v3 = _LSCopyBundleIdentifierForXPCConnection(v2, 0);

  return v3;
}

void __78___LSDIconClient_setAlternateIconNameForCurrentApplication_completionHandler___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v2 = *(a1 + 64);
  v16[0] = *(a1 + 48);
  v16[1] = v2;
  v3 = [LSBundleRecord bundleRecordForAuditToken:v16 error:&v17];
  v4 = v17;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      v6 = [v5 identities];
      v7 = [v6 firstObject];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v10 = [v5 _rawIconDictionary];
      v11 = [v10 _expensiveDictionaryRepresentation];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    else
    {
      v14 = *MEMORY[0x1E696A768];
      v18 = *MEMORY[0x1E696A278];
      v19[0] = @"calling process is not an application";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      _LSMakeNSErrorImpl(v14, -50, v5, "[_LSDIconClient setAlternateIconNameForCurrentApplication:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDIconService.m", 128);
      v4 = v10 = v4;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end