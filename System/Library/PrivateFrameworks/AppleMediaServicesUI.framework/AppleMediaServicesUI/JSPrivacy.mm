@interface JSPrivacy
- (id)acknowledgementNeededForPrivacyIdentifier:(id)identifier :(id)a4;
@end

@implementation JSPrivacy

- (id)acknowledgementNeededForPrivacyIdentifier:(id)identifier :(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  v10 = sub_100135938(v6, v8, a4);

  return v10;
}

@end