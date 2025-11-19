@interface NSTextAttachment(PaperInNotes)
- (id)_paperBundleAssetsURL;
- (id)_paperBundleBaseURL;
- (id)_paperBundleDatabaseURL;
@end

@implementation NSTextAttachment(PaperInNotes)

- (id)_paperBundleBaseURL
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 _paperBundleURL];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFF8]);
  }

  return v2;
}

- (id)_paperBundleDatabaseURL
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 _paperBundleURL];
    v3 = [v2 URLByAppendingPathComponent:@"Database"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_paperBundleAssetsURL
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 _paperBundleURL];
    v3 = [v2 URLByAppendingPathComponent:@"Assets.bundle"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end