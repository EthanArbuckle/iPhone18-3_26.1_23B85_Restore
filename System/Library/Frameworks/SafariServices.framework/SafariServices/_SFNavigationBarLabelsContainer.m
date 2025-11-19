@interface _SFNavigationBarLabelsContainer
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
@end

@implementation _SFNavigationBarLabelsContainer

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"anchorPoint"])
  {
    shouldAnimateBoundsChanges = 1;
  }

  else if ([v4 isEqualToString:@"bounds"])
  {
    shouldAnimateBoundsChanges = self->_shouldAnimateBoundsChanges;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SFNavigationBarLabelsContainer;
    shouldAnimateBoundsChanges = [(_SFNavigationBarLabelsContainer *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return shouldAnimateBoundsChanges;
}

@end