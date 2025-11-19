@interface RingsEntityWrapper
- (RingsEntityWrapper)init;
- (RingsEntityWrapper)initWithCoder:(id)a3;
- (RingsEntityWrapper)initWithData:(id)a3;
- (id)data;
- (int64_t)encodedByteCount;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RingsEntityWrapper

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___RingsEntityWrapper_serializedEntity);
  v5 = *&self->serializedEntity[OBJC_IVAR___RingsEntityWrapper_serializedEntity];
  v6 = a3;
  v8 = self;
  isa = sub_748A8().super.isa;
  [v6 encodeDataObject:isa];
}

- (RingsEntityWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeDataObject];
  if (v5)
  {
    v6 = v5;
    v7 = sub_748C8();
    v9 = v8;

    isa = sub_748A8().super.isa;
    v11 = [(RingsEntityWrapper *)self initWithData:isa];
    sub_FB28(v7, v9);

    return v11;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

- (RingsEntityWrapper)initWithData:(id)a3
{
  v4 = a3;
  v5 = sub_748C8();
  v7 = v6;

  v8 = (self + OBJC_IVAR___RingsEntityWrapper_serializedEntity);
  *v8 = v5;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RingsPropertyRecordEntity.EntityWrapper();
  return [(RingsEntityWrapper *)&v10 init];
}

- (id)data
{
  v2 = *(&self->super.isa + OBJC_IVAR___RingsEntityWrapper_serializedEntity);
  v3 = *&self->serializedEntity[OBJC_IVAR___RingsEntityWrapper_serializedEntity];
  sub_398C(v2, v3);
  v4.super.isa = sub_748A8().super.isa;
  sub_FB28(v2, v3);

  return v4.super.isa;
}

- (int64_t)encodedByteCount
{
  v2 = *(self + OBJC_IVAR___RingsEntityWrapper_serializedEntity);
  v3 = *(self + OBJC_IVAR___RingsEntityWrapper_serializedEntity + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      return BYTE6(v3);
    }

    v8 = __OFSUB__(HIDWORD(v2), v2);
    v9 = HIDWORD(v2) - v2;
    if (!v8)
    {
      return v9;
    }

    goto LABEL_11;
  }

  if (v4 != 2)
  {
    return 0;
  }

  v7 = v2 + 16;
  v5 = *(v2 + 16);
  v6 = *(v7 + 8);
  self = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return self;
}

- (RingsEntityWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end