@interface JSTreatmentStore
- (id)fetchTreatmentSets:(id)a3 :(id)a4;
@end

@implementation JSTreatmentStore

- (id)fetchTreatmentSets:(id)a3 :(id)a4
{
  if (a4)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  v9 = sub_1001427A0(v7, v6);

  return v9;
}

@end