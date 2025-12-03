@interface PRRenderer
- (id)wk_extendRenderSessionForReason:(id)reason;
- (void)wk_setPreferredProminentColor:(id)color;
@end

@implementation PRRenderer

- (id)wk_extendRenderSessionForReason:(id)reason
{
  selfCopy = self;
  v5 = [(PRRenderer *)selfCopy extendRenderingSessionForReason:reason];
  v6 = type metadata accessor for CollectionsPosterInvalidatable();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC17CollectionsPoster30CollectionsPosterInvalidatable_posterKitInvalidatable] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = v5;
  v9 = [(PRRenderer *)&v11 init];

  return v9;
}

- (void)wk_setPreferredProminentColor:(id)color
{
  v5 = swift_allocObject();
  *(v5 + 16) = color;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000102FC;
  *(v6 + 24) = v5;
  v10[4] = sub_100010300;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10001033C;
  v10[3] = &unk_100018FA8;
  v7 = _Block_copy(v10);
  colorCopy = color;
  selfCopy = self;

  [(PRRenderer *)selfCopy updatePreferences:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

@end