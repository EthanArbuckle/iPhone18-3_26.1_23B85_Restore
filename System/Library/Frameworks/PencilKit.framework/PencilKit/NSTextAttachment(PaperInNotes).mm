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
    _paperBundleURL = [self _paperBundleURL];
  }

  else
  {
    _paperBundleURL = objc_alloc_init(MEMORY[0x1E695DFF8]);
  }

  return _paperBundleURL;
}

- (id)_paperBundleDatabaseURL
{
  if (objc_opt_respondsToSelector())
  {
    _paperBundleURL = [self _paperBundleURL];
    v3 = [_paperBundleURL URLByAppendingPathComponent:@"Database"];
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
    _paperBundleURL = [self _paperBundleURL];
    v3 = [_paperBundleURL URLByAppendingPathComponent:@"Assets.bundle"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end