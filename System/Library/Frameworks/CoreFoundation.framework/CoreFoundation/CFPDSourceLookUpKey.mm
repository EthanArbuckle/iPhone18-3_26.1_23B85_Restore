@interface CFPDSourceLookUpKey
- (void)dealloc;
@end

@implementation CFPDSourceLookUpKey

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  uncanonicalizedPath = self->uncanonicalizedPath;
  if (uncanonicalizedPath)
  {
    CFRelease(uncanonicalizedPath);
  }

  cloudPath = self->cloudPath;
  if (cloudPath)
  {
    CFRelease(cloudPath);
  }

  v6.receiver = self;
  v6.super_class = CFPDSourceLookUpKey;
  [(CFPDSourceLookUpKey *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

@end