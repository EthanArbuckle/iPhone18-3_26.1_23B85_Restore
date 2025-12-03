@interface _MSBlurCapableView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_MSBlurCapableView)initWithFrame:(CGRect)frame;
@end

@implementation _MSBlurCapableView

- (_MSBlurCapableView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _MSBlurCapableView;
  v3 = [(_MSBlurCapableView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [CAFilter filterWithType:kCAFilterGaussianBlur];
    [v4 setValue:&off_4EAF0 forKey:kCAFilterInputRadius];
    v9 = v4;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
    layer = [(_MSBlurCapableView *)v3 layer];
    [layer setFilters:v5];
  }

  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _MSBlurCapableView;
    v5 = [(_MSBlurCapableView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end