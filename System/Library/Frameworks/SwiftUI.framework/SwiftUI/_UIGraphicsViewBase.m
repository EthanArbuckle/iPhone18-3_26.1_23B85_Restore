@interface _UIGraphicsViewBase
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation _UIGraphicsViewBase

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v5 = [(_UIGraphicsViewBase *)self layer];
  v6 = [v5 hasBeenCommitted];

  if (v6)
  {
    v9.receiver = self;
    v9.super_class = _UIGraphicsViewBase;
    v7 = [(_UIGraphicsViewBase *)&v9 _shouldAnimatePropertyWithKey:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end