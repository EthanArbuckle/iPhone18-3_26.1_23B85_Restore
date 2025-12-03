@interface MCSChange
- (id)applyPendingChangeToObjects:(id)objects;
@end

@implementation MCSChange

- (id)applyPendingChangeToObjects:(id)objects
{
  objectsCopy = objects;
  [(MCSChange *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MCSChange applyPendingChangeToObjects:]", "MCSChange.m", 17, "0");
}

@end