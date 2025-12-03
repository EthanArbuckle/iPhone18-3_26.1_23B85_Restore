@interface BKActivityURLItemSource
- (BKActivityURLItemSource)initWithPath:(id)path;
@end

@implementation BKActivityURLItemSource

- (BKActivityURLItemSource)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = BKActivityURLItemSource;
  v5 = [(BKActivityURLItemSource *)&v9 init];
  if (v5)
  {
    v6 = [NSURL fileURLWithPath:pathCopy];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

@end