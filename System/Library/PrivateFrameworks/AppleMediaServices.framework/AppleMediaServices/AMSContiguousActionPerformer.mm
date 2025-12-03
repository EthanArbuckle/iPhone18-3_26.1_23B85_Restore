@interface AMSContiguousActionPerformer
- (unint64_t)performInitialContiguousActionWithBlock:(id)block;
- (void)async:(id)async;
- (void)continueContiguousActionWithIdentifier:(unint64_t)identifier withBlock:(id)block;
- (void)finishContiguousActionWithIdentifier:(unint64_t)identifier;
- (void)sync:(id)sync;
@end

@implementation AMSContiguousActionPerformer

- (unint64_t)performInitialContiguousActionWithBlock:(id)block
{
  v4 = _Block_copy(block);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  v6 = ContiguousActionPerformer.performInitialContiguousAction(_:)();

  return v6;
}

- (void)continueContiguousActionWithIdentifier:(unint64_t)identifier withBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  ContiguousActionPerformer.continueContiguousAction(withIdentifier:work:)(identifier, sub_192910DA4, v7);
}

- (void)finishContiguousActionWithIdentifier:(unint64_t)identifier
{
  selfCopy = self;
  ContiguousActionPerformer.finishContiguousAction(identifier:)(identifier);
}

- (void)async:(id)async
{
  v4 = _Block_copy(async);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  ContiguousActionPerformer.async(_:)(sub_19291AB38, v5);
}

- (void)sync:(id)sync
{
  v4 = _Block_copy(sync);
  v6[2] = v4;
  selfCopy = self;
  ContiguousActionPerformer.sync(_:)(sub_19291AB38, v6);
  _Block_release(v4);
}

@end