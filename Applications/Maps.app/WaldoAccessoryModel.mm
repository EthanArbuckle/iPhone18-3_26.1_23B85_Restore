@interface WaldoAccessoryModel
- (MSPSharedTripContact)contact;
- (NSNumber)state;
- (NSString)footerText;
- (NSString)serviceName;
- (NSString)trailingLabel;
- (_TtC4Maps19WaldoAccessoryModel)init;
- (_TtC4Maps19WaldoAccessoryModel)initWithContact:(id)contact capabilityType:(unint64_t)type serviceName:(id)name footerText:(id)text state:(id)state;
- (unint64_t)capabilityType;
- (void)setCapabilityType:(unint64_t)type;
- (void)setContact:(id)contact;
- (void)setFooterText:(id)text;
- (void)setServiceName:(id)name;
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

- (void)setContact:(id)contact
{
  v5 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_contact;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = contact;
  contactCopy = contact;
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

- (void)setCapabilityType:(unint64_t)type
{
  v5 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_capabilityType;
  swift_beginAccess();
  *(&self->super.isa + v5) = type;
}

- (NSString)serviceName
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_serviceName;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setServiceName:(id)name
{
  v5 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_serviceName;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = name;
  nameCopy = name;
}

- (NSString)footerText
{
  v3 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_footerText;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setFooterText:(id)text
{
  v5 = OBJC_IVAR____TtC4Maps19WaldoAccessoryModel_footerText;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = text;
  textCopy = text;
}

- (_TtC4Maps19WaldoAccessoryModel)initWithContact:(id)contact capabilityType:(unint64_t)type serviceName:(id)name footerText:(id)text state:(id)state
{
  contactCopy = contact;
  nameCopy = name;
  textCopy = text;
  stateCopy = state;
  return WaldoAccessoryModel.init(contact:capabilityType:serviceName:footerText:state:)(contactCopy, type, nameCopy, textCopy, state);
}

- (_TtC4Maps19WaldoAccessoryModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end