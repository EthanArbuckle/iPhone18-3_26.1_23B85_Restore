@interface JSFollowUp
- (id)clearFollowUpWithBackingIdentifier:(id)identifier;
- (id)pendingFollowUps:(id)ups;
@end

@implementation JSFollowUp

- (id)clearFollowUpWithBackingIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_10011AED0(v4, v6);

  return v8;
}

- (id)pendingFollowUps:(id)ups
{
  if (ups)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = sub_10011CAB0(v4);

  return v6;
}

@end