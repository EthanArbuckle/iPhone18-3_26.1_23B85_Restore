@interface ShareETAAccessoryModel
- (NSNumber)state;
- (NSString)shortTitle;
- (NSString)title;
- (_TtC4Maps22ShareETAAccessoryModel)init;
- (_TtC4Maps22ShareETAAccessoryModel)initWithTitle:(id)a3 shortTitle:(id)a4 state:(id)a5;
- (void)setTitle:(id)a3;
@end

@implementation ShareETAAccessoryModel

- (NSNumber)state
{
  v3 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_state;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (NSString)title
{
  v3 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_title;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTitle:(id)a3
{
  v5 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_title;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (NSString)shortTitle
{
  v3 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (_TtC4Maps22ShareETAAccessoryModel)initWithTitle:(id)a3 shortTitle:(id)a4 state:(id)a5
{
  v9 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_state;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_state) = 0;
  v10 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_title) = a3;
  swift_beginAccess();
  *(&self->super.isa + v10) = a4;
  swift_beginAccess();
  *(&self->super.isa + v9) = a5;
  v15.receiver = self;
  v15.super_class = type metadata accessor for ShareETAAccessoryModel();
  v11 = a3;
  v12 = a4;
  v13 = a5;
  return [(ShareETAAccessoryModel *)&v15 init];
}

- (_TtC4Maps22ShareETAAccessoryModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end