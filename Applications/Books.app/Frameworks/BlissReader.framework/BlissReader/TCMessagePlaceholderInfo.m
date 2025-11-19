@interface TCMessagePlaceholderInfo
- (TCMessagePlaceholderInfo)init;
- (void)dealloc;
@end

@implementation TCMessagePlaceholderInfo

- (TCMessagePlaceholderInfo)init
{
  v5.receiver = self;
  v5.super_class = TCMessagePlaceholderInfo;
  v2 = [(TCMessagePlaceholderInfo *)&v5 init];
  if (v2)
  {
    v3 = [NSNumber alloc];
    ++dword_567970;
    v2->mKey = [v3 initWithInt:?];
    v2->mInUse = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TCMessagePlaceholderInfo;
  [(TCMessagePlaceholderInfo *)&v3 dealloc];
}

@end