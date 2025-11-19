@interface _NSOrderedSetDiffMove
- (void)applyToSet:(id)a3;
@end

@implementation _NSOrderedSetDiffMove

- (void)applyToSet:(id)a3
{
  [a3 removeObject:self->super.super._diffObject];
  diffObject = self->super.super._diffObject;
  index = self->super._index;

  [a3 insertObject:diffObject atIndex:index];
}

@end