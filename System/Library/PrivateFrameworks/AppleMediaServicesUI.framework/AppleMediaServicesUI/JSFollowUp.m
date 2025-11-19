@interface JSFollowUp
- (id)clearFollowUpWithBackingIdentifier:(id)a3;
- (id)pendingFollowUps:(id)a3;
@end

@implementation JSFollowUp

- (id)clearFollowUpWithBackingIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_10011AED0(v4, v6);

  return v8;
}

- (id)pendingFollowUps:(id)a3
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v6 = sub_10011CAB0(v4);

  return v6;
}

@end