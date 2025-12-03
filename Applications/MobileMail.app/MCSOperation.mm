@interface MCSOperation
- (id)applyPendingChangeToObjects:(id)objects;
@end

@implementation MCSOperation

- (id)applyPendingChangeToObjects:(id)objects
{
  objectsCopy = objects;
  [(MCSOperation *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MCSOperation applyPendingChangeToObjects:]", "MCSOperation.m", 16, "0");
}

@end