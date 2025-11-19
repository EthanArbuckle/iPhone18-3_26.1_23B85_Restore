@interface ATArrayOfPlayedMediaItems
- (_TtC9Archetype25ATArrayOfPlayedMediaItems)init;
- (_TtC9Archetype25ATArrayOfPlayedMediaItems)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATArrayOfPlayedMediaItems

- (void)encodeWithCoder:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC9Archetype25ATArrayOfPlayedMediaItems_playedMediaItems);
  type metadata accessor for ATPlayedMediaItem();
  v6 = a3;
  v9 = self;
  v7 = sub_240FAE9C0();
  v8 = sub_240FAE970();
  [v6 encodeObject:v7 forKey:v8];
}

- (_TtC9Archetype25ATArrayOfPlayedMediaItems)initWithCoder:(id)a3
{
  type metadata accessor for ATPlayedMediaItem();
  v5 = a3;
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