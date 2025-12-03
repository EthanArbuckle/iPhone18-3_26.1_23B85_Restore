@interface _TabGradientView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TabGradientView)initWithFrame:(CGRect)frame;
@end

@implementation _TabGradientView

- (_TabGradientView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TabGradientView;
  v3 = [(_TabGradientView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TabGradientView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"startPoint"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"endPoint"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _TabGradientView;
    v5 = [(_TabGradientView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end