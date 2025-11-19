@interface CHKWidgetEnvironment
- (BOOL)isEqual:(id)a3;
- (CHKWidgetEnvironment)init;
- (NSString)description;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHKWidgetEnvironment

- (CHKWidgetEnvironment)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  *(&self->super.isa + v4) = sub_192043788(MEMORY[0x1E69E7CC0]);
  if (qword_1ED74BCB8 != -1)
  {
    swift_once();
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CHKWidgetEnvironment *)&v6 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = WidgetEnvironment.Storage.isEqual(_:)(v8);

  sub_192033970(v8, &unk_1EADEF330, &unk_19222CD40);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  WidgetEnvironment.Storage.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  WidgetEnvironment.Storage.description.getter();

  v3 = sub_192227930();

  return v3;
}

- (int64_t)hash
{
  v2 = self;
  v3 = WidgetEnvironment.Storage.hash.getter();

  return v3;
}

@end