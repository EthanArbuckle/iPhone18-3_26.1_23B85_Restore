@interface ActivityAlertProvider
- (ACAlertPresentationOptions)presentationOptions;
- (NSString)identifier;
- (TLAlertConfiguration)configuration;
- (_TtC18ActivityUIServices21ActivityAlertProvider)init;
- (_TtC18ActivityUIServices21ActivityAlertProvider)initWithIdentifier:(id)a3 action:(int64_t)a4 presentationOptions:(id)a5 payload:(id)a6;
@end

@implementation ActivityAlertProvider

- (NSString)identifier
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_activityIdentifier);
  v3 = *(&self->configuration + OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_activityIdentifier);

  v4 = sub_18E65F8F0();

  return v4;
}

- (TLAlertConfiguration)configuration
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_configuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (ACAlertPresentationOptions)presentationOptions
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices21ActivityAlertProvider_presentationOptions;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (_TtC18ActivityUIServices21ActivityAlertProvider)initWithIdentifier:(id)a3 action:(int64_t)a4 presentationOptions:(id)a5 payload:(id)a6
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89D08, &qword_18E663F30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = sub_18E65F900();
  v15 = v14;
  if (a6)
  {
    v16 = sub_18E65F5D0();
    sub_18E624678();
    sub_18E65F670();
    (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  }

  else
  {
    v17 = sub_18E65F5D0();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  }

  v18 = a5;
  v19 = sub_18E611A08(v13, v15, a4, a5, v12);

  return v19;
}

- (_TtC18ActivityUIServices21ActivityAlertProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end