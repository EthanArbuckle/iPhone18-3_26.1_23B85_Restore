@interface NSItemProvider(LPExtras)
+ (id)_lp_itemProviderWithData:()LPExtras MIMEType:;
- (void)_lp_loadFirstDataRepresentationMatchingMIMETypePredicate:()LPExtras completionHandler:;
@end

@implementation NSItemProvider(LPExtras)

- (void)_lp_loadFirstDataRepresentationMatchingMIMETypePredicate:()LPExtras completionHandler:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  registeredTypeIdentifiers = [self registeredTypeIdentifiers];
  v8 = [registeredTypeIdentifiers countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(registeredTypeIdentifiers);
      }

      v11 = *(*(&v21 + 1) + 8 * v10);
      v12 = [LPMIMETypeRegistry MIMETypeForUTI:v11];
      if (v6[2](v6, v12))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [registeredTypeIdentifiers countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v11;

    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__NSItemProvider_LPExtras___lp_loadFirstDataRepresentationMatchingMIMETypePredicate_completionHandler___block_invoke;
    block[3] = &unk_1E7A35CF0;
    block[4] = self;
    v15 = v13;
    v18 = v15;
    v20 = v16;
    v12 = v12;
    v19 = v12;
    dispatch_async(v14, block);
  }

  else
  {
LABEL_9:

    v12 = 0;
LABEL_12:
    v15 = 0;
    (*(v16 + 2))(v16, 0, 0);
  }
}

+ (id)_lp_itemProviderWithData:()LPExtras MIMEType:
{
  v5 = a3;
  v6 = a4;
  v7 = [LPMIMETypeRegistry UTIForMIMEType:v6];
  if ([v7 hasPrefix:@"dyn."])
  {
    v8 = LPLogChannelTypes();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NSItemProvider(LPExtras) _lp_itemProviderWithData:v6 MIMEType:v8];
    }
  }

  v9 = 0;
  if (v5 && v7)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__NSItemProvider_LPExtras___lp_itemProviderWithData_MIMEType___block_invoke;
    v11[3] = &unk_1E7A35D18;
    v12 = v5;
    [v9 registerDataRepresentationForTypeIdentifier:v7 visibility:0 loadHandler:v11];
  }

  return v9;
}

+ (void)_lp_itemProviderWithData:()LPExtras MIMEType:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "Creating item provider for dynamic UTI, from unknown MIME type '%@'", &v2, 0xCu);
}

@end