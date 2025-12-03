@interface _UIGraphicsViewBase
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _UIGraphicsViewBase

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  layer = [(_UIGraphicsViewBase *)self layer];
  hasBeenCommitted = [layer hasBeenCommitted];

  if (hasBeenCommitted)
  {
    v9.receiver = self;
    v9.super_class = _UIGraphicsViewBase;
    v7 = [(_UIGraphicsViewBase *)&v9 _shouldAnimatePropertyWithKey:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end