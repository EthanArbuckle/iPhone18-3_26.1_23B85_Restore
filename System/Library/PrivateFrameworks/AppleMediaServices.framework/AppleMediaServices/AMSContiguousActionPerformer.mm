@interface AMSContiguousActionPerformer
- (unint64_t)performInitialContiguousActionWithBlock:(id)a3;
- (void)async:(id)a3;
- (void)continueContiguousActionWithIdentifier:(unint64_t)a3 withBlock:(id)a4;
- (void)finishContiguousActionWithIdentifier:(unint64_t)a3;
- (void)sync:(id)a3;
@end

@implementation AMSContiguousActionPerformer

- (unint64_t)performInitialContiguousActionWithBlock:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  v6 = ContiguousActionPerformer.performInitialContiguousAction(_:)();

  return v6;
}

- (void)continueContiguousActionWithIdentifier:(unint64_t)a3 withBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  ContiguousActionPerformer.continueContiguousAction(withIdentifier:work:)(a3, sub_192910DA4, v7);
}

- (void)finishContiguousActionWithIdentifier:(unint64_t)a3
{
  v4 = self;
  ContiguousActionPerformer.finishContiguousAction(identifier:)(a3);
}

- (void)async:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  ContiguousActionPerformer.async(_:)(sub_19291AB38, v5);
}

- (void)sync:(id)a3
{
  v4 = _Block_copy(a3);
  v6[2] = v4;
  v5 = self;
  ContiguousActionPerformer.sync(_:)(sub_19291AB38, v6);
  _Block_release(v4);
}

@end