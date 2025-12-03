@interface _NSOrderedSetDiffMove
- (void)applyToSet:(id)set;
@end

@implementation _NSOrderedSetDiffMove

- (void)applyToSet:(id)set
{
  [set removeObject:self->super.super._diffObject];
  diffObject = self->super.super._diffObject;
  index = self->super._index;

  [set insertObject:diffObject atIndex:index];
}

@end