@interface ASCPhoneNumber
- (BOOL)isEqual:(id)equal;
- (_TtC26AuthenticationServicesCore14ASCPhoneNumber)init;
- (int64_t)hash;
@end

@implementation ASCPhoneNumber

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C2170E24();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1C2127ECC(v8);

  sub_1C2128318(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber);
  selfCopy = self;
  unformattedInternationalStringValue = [v2 unformattedInternationalStringValue];
  if (!unformattedInternationalStringValue)
  {
    unformattedInternationalStringValue = [v2 stringValue];
  }

  v5 = unformattedInternationalStringValue;
  v6 = sub_1C2170914();
  v8 = v7;

  v9 = MEMORY[0x1C6913D40](v6, v8);

  return v9;
}

- (_TtC26AuthenticationServicesCore14ASCPhoneNumber)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end