@interface ATArrayOfPlayedMediaItems
- (_TtC9Archetype25ATArrayOfPlayedMediaItems)init;
- (_TtC9Archetype25ATArrayOfPlayedMediaItems)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATArrayOfPlayedMediaItems

- (void)encodeWithCoder:(id)coder
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC9Archetype25ATArrayOfPlayedMediaItems_playedMediaItems);
  type metadata accessor for ATPlayedMediaItem();
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_240FAE9C0();
  v8 = sub_240FAE970();
  [coderCopy encodeObject:v7 forKey:v8];
}

- (_TtC9Archetype25ATArrayOfPlayedMediaItems)initWithCoder:(id)coder
{
  type metadata accessor for ATPlayedMediaItem();
  coderCopy = coder;
  if (sub_240FAEA60())
  {
    v6 = sub_240FAE9C0();

    v7 = [(ATArrayOfPlayedMediaItems *)self initWithPlayedMediaItems:v6];

    return v7;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

- (_TtC9Archetype25ATArrayOfPlayedMediaItems)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end