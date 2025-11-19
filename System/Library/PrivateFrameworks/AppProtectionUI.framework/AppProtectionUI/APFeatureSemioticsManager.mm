@interface APFeatureSemioticsManager
+ (APFeatureSemioticsManager)sharedManager;
- (APFeatureSemioticsManager)init;
- (id)localizedDescriptionForCurrentBestAuthenticationMechanism;
- (id)systemImageNameForCurrentBestAuthenticationMechanism;
@end

@implementation APFeatureSemioticsManager

+ (APFeatureSemioticsManager)sharedManager
{
  if (qword_1EDAC2C50 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDAC2C58;

  return v3;
}

- (APFeatureSemioticsManager)init
{
  v3.receiver = self;
  v3.super_class = APFeatureSemioticsManager;
  return [(APFeatureSemioticsManager *)&v3 init];
}

- (id)systemImageNameForCurrentBestAuthenticationMechanism
{
  v2 = APGetPreferredAuthenticationMechanism();
  if (v2 > 1)
  {
    if (v2 == 3 || v2 == 2)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (v2)
  {
    if (v2 == 1)
    {
LABEL_9:
      v3 = sub_1AEA32444();

      goto LABEL_10;
    }

LABEL_13:
    type metadata accessor for APAuthenticationMechanism(0);
    result = sub_1AEA32694();
    __break(1u);
    return result;
  }

  v3 = 0;
LABEL_10:

  return v3;
}

- (id)localizedDescriptionForCurrentBestAuthenticationMechanism
{
  v2 = APGetPreferredAuthenticationMechanism();
  if ((v2 - 1) >= 3)
  {
    if (v2)
    {
      type metadata accessor for APAuthenticationMechanism(0);
      result = sub_1AEA32694();
      __break(1u);
      return result;
    }

    v4 = 0;
  }

  else
  {
    v3 = APGetAuthenticationMechanismLocalizedDescription(v2);
    sub_1AEA32454();

    v4 = sub_1AEA32444();
  }

  return v4;
}

@end