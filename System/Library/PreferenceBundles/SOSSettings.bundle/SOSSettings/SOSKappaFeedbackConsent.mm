@interface SOSKappaFeedbackConsent
- (_TtC11SOSSettings23SOSKappaFeedbackConsent)init;
- (_TtC11SOSSettings23SOSKappaFeedbackConsent)initWithCallback:(id)callback;
@end

@implementation SOSKappaFeedbackConsent

- (_TtC11SOSSettings23SOSKappaFeedbackConsent)initWithCallback:(id)callback
{
  v3 = _Block_copy(callback);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_122E8;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_11A1C(v3, v4);
  sub_E650(v3);
  return v5;
}

- (_TtC11SOSSettings23SOSKappaFeedbackConsent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end