@interface VMVoicemailGreeting
- (BOOL)isEqual:(id)equal;
@end

@implementation VMVoicemailGreeting

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = VMVoicemailGreeting.isEqual(_:)(v8);

  outlined destroy of (NSAttributedStringKey, Any)(v8, &_sypSgMd);
  return v6;
}

@end