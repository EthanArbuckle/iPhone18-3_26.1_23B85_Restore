@interface _LSAppLinkPlugIn
+ (BOOL)canHandleURLComponents:(id)components;
+ (id)plugInClasses;
- (id)appLinksWithContext:(LSContext *)context error:(id *)error;
@end

@implementation _LSAppLinkPlugIn

+ (id)plugInClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (BOOL)canHandleURLComponents:(id)components
{
  componentsCopy = components;
  if (componentsCopy && objc_opt_class() != self)
  {
    scheme = [componentsCopy scheme];
    host = [componentsCopy host];
    if (scheme)
    {
      v7 = 0;
      if (![scheme length] || !host)
      {
        goto LABEL_17;
      }

      if ([host length])
      {
        v8 = [scheme caseInsensitiveCompare:@"http"];
        v9 = v8 == 0;
        if (v8)
        {
          v10 = [scheme caseInsensitiveCompare:@"https"];
          v11 = v10 == 0;
          v7 = v10 == 0;
        }

        else
        {
          v7 = 0;
          v11 = 1;
        }

        if (([host containsString:@"."] & v11) == 1)
        {
          port = [componentsCopy port];
          v13 = port;
          if (port)
          {
            unsignedIntegerValue = [port unsignedIntegerValue];
            if (unsignedIntegerValue == 80)
            {
              v7 = v9;
            }

            else if (unsignedIntegerValue != 443)
            {
              v7 = 0;
            }
          }

          else
          {
            v7 = 1;
          }

          goto LABEL_17;
        }
      }
    }

    v7 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v7 = 0;
LABEL_18:

  return v7;
}

- (id)appLinksWithContext:(LSContext *)context error:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSAppLinkPlugIn appLinksWithContext:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLinkPlugIn.mm", 134);
  }

  return 0;
}

@end