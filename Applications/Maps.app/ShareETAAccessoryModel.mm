@interface ShareETAAccessoryModel
- (NSNumber)state;
- (NSString)shortTitle;
- (NSString)title;
- (_TtC4Maps22ShareETAAccessoryModel)init;
- (_TtC4Maps22ShareETAAccessoryModel)initWithTitle:(id)title shortTitle:(id)shortTitle state:(id)state;
- (void)setTitle:(id)title;
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

- (void)setTitle:(id)title
{
  v5 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_title;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = title;
  titleCopy = title;
}

- (NSString)shortTitle
{
  v3 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (_TtC4Maps22ShareETAAccessoryModel)initWithTitle:(id)title shortTitle:(id)shortTitle state:(id)state
{
  v9 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_state;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_state) = 0;
  v10 = OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_shortTitle) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps22ShareETAAccessoryModel_title) = title;
  swift_beginAccess();
  *(&self->super.isa + v10) = shortTitle;
  swift_beginAccess();
  *(&self->super.isa + v9) = state;
  v15.receiver = self;
  v15.super_class = type metadata accessor for ShareETAAccessoryModel();
  titleCopy = title;
  shortTitleCopy = shortTitle;
  stateCopy = state;
  return [(ShareETAAccessoryModel *)&v15 init];
}

- (_TtC4Maps22ShareETAAccessoryModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end