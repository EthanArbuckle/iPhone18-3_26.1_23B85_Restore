@interface LSGetMainBundleURL
@end

@implementation LSGetMainBundleURL

void ___LSGetMainBundleURL_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    v1 = CFBundleCopyBundleURL(MainBundle);
    if (v1)
    {
      v8 = v1;
      v2 = [(__CFURL *)v1 pathExtension];
      v3 = [v2 length];

      if (v3)
      {
        v4 = [[FSNode alloc] initWithURL:v8 flags:34 error:0];
        v5 = v4;
        if (v4)
        {
          v6 = [(FSNode *)v4 URL];
        }

        else
        {
          v6 = v8;
        }

        v7 = _LSGetMainBundleURL::result;
        _LSGetMainBundleURL::result = v6;
      }

      else
      {
        v5 = _LSGetMainBundleURL::result;
        _LSGetMainBundleURL::result = 0;
      }

      v1 = v8;
    }
  }
}

@end