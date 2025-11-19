@interface _MSBlurCapableView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_MSBlurCapableView)initWithFrame:(CGRect)a3;
@end

@implementation _MSBlurCapableView

- (_MSBlurCapableView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _MSBlurCapableView;
  v3 = [(_MSBlurCapableView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [CAFilter filterWithType:kCAFilterGaussianBlur];
    [v4 setValue:&off_4EAF0 forKey:kCAFilterInputRadius];
    v9 = v4;
    v5 = [NSArray arrayWithObjects:&v9 count:1];
    v6 = [(_MSBlurCapableView *)v3 layer];
    [v6 setFilters:v5];
  }

  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _MSBlurCapableView;
    v5 = [(_MSBlurCapableView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end