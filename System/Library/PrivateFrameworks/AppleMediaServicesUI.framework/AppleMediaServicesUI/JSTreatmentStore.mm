@interface JSTreatmentStore
- (id)fetchTreatmentSets:(id)sets :(id)a4;
@end

@implementation JSTreatmentStore

- (id)fetchTreatmentSets:(id)sets :(id)a4
{
  if (a4)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  setsCopy = sets;
  selfCopy = self;
  v9 = sub_1001427A0(setsCopy, v6);

  return v9;
}

@end