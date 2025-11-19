@interface VMVoicemailGreeting
- (BOOL)isEqual:(id)a3;
@end

@implementation VMVoicemailGreeting

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = VMVoicemailGreeting.isEqual(_:)(v8);

  outlined destroy of (NSAttributedStringKey, Any)(v8, &_sypSgMd);
  return v6;
}

@end