@interface BKActivityURLItemSource
- (BKActivityURLItemSource)initWithPath:(id)a3;
@end

@implementation BKActivityURLItemSource

- (BKActivityURLItemSource)initWithPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BKActivityURLItemSource;
  v5 = [(BKActivityURLItemSource *)&v9 init];
  if (v5)
  {
    v6 = [NSURL fileURLWithPath:v4];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

@end