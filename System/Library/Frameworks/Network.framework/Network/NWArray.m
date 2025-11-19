@interface NWArray
- (_TtC7Network7NWArray)init;
@end

@implementation NWArray

- (_TtC7Network7NWArray)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC7Network7NWArray_deque) = *sub_182AD2388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839FA0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7Network7NWArray_applyCount) = v4;
  v6.receiver = self;
  v6.super_class = ObjectType;

  return [(NWArray *)&v6 init];
}

@end