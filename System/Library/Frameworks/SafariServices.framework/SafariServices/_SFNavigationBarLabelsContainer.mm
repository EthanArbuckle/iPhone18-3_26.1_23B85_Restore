@interface _SFNavigationBarLabelsContainer
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation _SFNavigationBarLabelsContainer

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"anchorPoint"])
  {
    shouldAnimateBoundsChanges = 1;
  }

  else if ([keyCopy isEqualToString:@"bounds"])
  {
    shouldAnimateBoundsChanges = self->_shouldAnimateBoundsChanges;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SFNavigationBarLabelsContainer;
    shouldAnimateBoundsChanges = [(_SFNavigationBarLabelsContainer *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return shouldAnimateBoundsChanges;
}

@end