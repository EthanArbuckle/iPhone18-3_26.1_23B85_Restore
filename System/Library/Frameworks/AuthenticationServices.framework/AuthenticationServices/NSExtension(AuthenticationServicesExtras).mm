@interface NSExtension(AuthenticationServicesExtras)
- (id)_as_auxiliaryRemoteObjectWithRequestID:()AuthenticationServicesExtras;
- (void)_as_instantiateViewControllerWithConnectionHandler:()AuthenticationServicesExtras;
@end

@implementation NSExtension(AuthenticationServicesExtras)

- (void)_as_instantiateViewControllerWithConnectionHandler:()AuthenticationServicesExtras
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __96__NSExtension_AuthenticationServicesExtras___as_instantiateViewControllerWithConnectionHandler___block_invoke;
    v6[3] = &unk_1E7AF8078;
    v7 = v4;
    [a1 instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] connectionHandler:v6];
  }
}

- (id)_as_auxiliaryRemoteObjectWithRequestID:()AuthenticationServicesExtras
{
  v2 = [a1 _extensionContextForUUID:?];
  v3 = [v2 _auxiliaryConnection];
  v4 = [v3 remoteObjectProxy];

  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = [a1 extensionPointIdentifier];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69C8E70]];

  if (!v6)
  {
    v7 = [a1 extensionPointIdentifier];
    v8 = [v7 isEqualToString:*MEMORY[0x1E69C8E30]];

    if (!v8)
    {
      goto LABEL_10;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v4 conformsToProtocol:&unk_1F29047F0])
    {
      goto LABEL_10;
    }

LABEL_9:
    v9 = v4;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 conformsToProtocol:&unk_1F2911338])
  {
    goto LABEL_9;
  }

LABEL_10:
  v9 = 0;
LABEL_11:

  return v9;
}

@end