@interface ActivityDigitalSeparationFriend
- (NSPersonNameComponents)nameComponents;
- (NSString)unifiedContactIdentifier;
- (_TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend)init;
@end

@implementation ActivityDigitalSeparationFriend

- (NSString)unifiedContactIdentifier
{
  v3 = sub_8D74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend);
  selfCopy = self;
  result = [v8 UUID];
  if (result)
  {
    v11 = result;
    sub_8D64();

    sub_8D54();
    (*(v4 + 8))(v7, v3);

    v12 = sub_8DB4();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSPersonNameComponents)nameComponents
{
  v3 = *(*(sub_2084(&unk_115F0, &qword_A770) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend);
  selfCopy = self;
  displayName = [v9 displayName];
  if (displayName)
  {
    v12 = displayName;
    sub_8DE4();
  }

  v13 = sub_8CB4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v6, 1, 1, v13);
  sub_8C94();
  v15(v8, 0, 1, v13);

  v16 = (*(v14 + 48))(v8, 1, v13);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_8CA4();
    (*(v14 + 8))(v8, v13);
    v17 = v18;
  }

  return v17;
}

- (_TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end