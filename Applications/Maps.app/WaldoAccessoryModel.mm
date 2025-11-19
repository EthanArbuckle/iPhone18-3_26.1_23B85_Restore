@interface WaldoAccessoryModel
- (MSPSharedTripContact)contact;
- (NSNumber)state;
- (NSString)footerText;
- (NSString)serviceName;
- (NSString)trailingLabel;
- (_TtC4Maps19WaldoAccessoryModel)init;
- (_TtC4Maps19WaldoAccessoryModel)initWithContact:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5 footerText:(id)a6 state:(id)a7;
- (unint64_t)capabilityType;
- (void)setCapabilityType:(unint64_t)a3;
- (void)setContact:(id)a3;
- (void)setFooterText:(id)a3;
- (void)setServiceName:(id)a3;
@end

@implementation WaldoAccessoryModel

- (NSNumber)state
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_state;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (MSPSharedTripContact)contact
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_contact;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setContact:(id)a3
{
  v5 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_contact;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (NSString)trailingLabel
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_trailingLabel;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (unint64_t)capabilityType
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_capabilityType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCapabilityType:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_capabilityType;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (NSString)serviceName
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_serviceName;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setServiceName:(id)a3
{
  v5 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_serviceName;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (NSString)footerText
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_footerText;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setFooterText:(id)a3
{
  v5 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_footerText;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC4Maps19WaldoAccessoryModel)initWithContact:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5 footerText:(id)a6 state:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  return WaldoAccessoryModel.init(contact:capabilityType:serviceName:footerText:state:)(v11, a4, v12, v13, a7);
}

- (_TtC4Maps19WaldoAccessoryModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end