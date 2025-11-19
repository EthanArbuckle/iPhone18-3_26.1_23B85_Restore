@interface _LSAppLinkPlugIn
+ (BOOL)canHandleURLComponents:(id)a3;
+ (id)plugInClasses;
- (id)appLinksWithContext:(LSContext *)a3 error:(id *)a4;
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

+ (BOOL)canHandleURLComponents:(id)a3
{
  v4 = a3;
  if (v4 && objc_opt_class() != a1)
  {
    v5 = [v4 scheme];
    v6 = [v4 host];
    if (v5)
    {
      v7 = 0;
      if (![v5 length] || !v6)
      {
        goto LABEL_17;
      }

      if ([v6 length])
      {
        v8 = [v5 caseInsensitiveCompare:@"http"];
        v9 = v8 == 0;
        if (v8)
        {
          v10 = [v5 caseInsensitiveCompare:@"https"];
          v11 = v10 == 0;
          v7 = v10 == 0;
        }

        else
        {
          v7 = 0;
          v11 = 1;
        }

        if (([v6 containsString:@"."] & v11) == 1)
        {
          v12 = [v4 port];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 unsignedIntegerValue];
            if (v14 == 80)
            {
              v7 = v9;
            }

            else if (v14 != 443)
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

- (id)appLinksWithContext:(LSContext *)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSAppLinkPlugIn appLinksWithContext:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLinkPlugIn.mm", 134);
  }

  return 0;
}

@end