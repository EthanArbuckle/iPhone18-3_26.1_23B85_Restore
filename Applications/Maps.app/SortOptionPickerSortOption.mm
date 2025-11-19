@interface SortOptionPickerSortOption
- (_TtC4Maps26SortOptionPickerSortOption)init;
- (_TtC4Maps26SortOptionPickerSortOption)initWithId:(int64_t)a3 name:(id)a4;
@end

@implementation SortOptionPickerSortOption

- (_TtC4Maps26SortOptionPickerSortOption)initWithId:(int64_t)a3 name:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_id) = a3;
  v8 = (self + OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_name);
  *v8 = v7;
  v8[1] = v9;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(SortOptionPickerSortOption *)&v11 init];
}

- (_TtC4Maps26SortOptionPickerSortOption)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end