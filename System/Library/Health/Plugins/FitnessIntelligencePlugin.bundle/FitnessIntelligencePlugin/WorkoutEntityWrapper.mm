@interface WorkoutEntityWrapper
- (WorkoutEntityWrapper)init;
- (WorkoutEntityWrapper)initWithCoder:(id)coder;
- (WorkoutEntityWrapper)initWithData:(id)data;
- (id)data;
- (int64_t)encodedByteCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WorkoutEntityWrapper

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR___WorkoutEntityWrapper_serializedEntity);
  v5 = *&self->serializedEntity[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity];
  coderCopy = coder;
  selfCopy = self;
  isa = sub_748A8().super.isa;
  [coderCopy encodeDataObject:isa];
}

- (WorkoutEntityWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  decodeDataObject = [coderCopy decodeDataObject];
  if (decodeDataObject)
  {
    v6 = decodeDataObject;
    v7 = sub_748C8();
    v9 = v8;

    isa = sub_748A8().super.isa;
    v11 = [(WorkoutEntityWrapper *)self initWithData:isa];
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

- (WorkoutEntityWrapper)initWithData:(id)data
{
  dataCopy = data;
  v5 = sub_748C8();
  v7 = v6;

  v8 = (self + OBJC_IVAR___WorkoutEntityWrapper_serializedEntity);
  *v8 = v5;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = _s13EntityWrapperCMa();
  return [(WorkoutEntityWrapper *)&v10 init];
}

- (id)data
{
  v2 = *(&self->super.isa + OBJC_IVAR___WorkoutEntityWrapper_serializedEntity);
  v3 = *&self->serializedEntity[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity];
  sub_398C(v2, v3);
  v4.super.isa = sub_748A8().super.isa;
  sub_FB28(v2, v3);

  return v4.super.isa;
}

- (int64_t)encodedByteCount
{
  v2 = *(self + OBJC_IVAR___WorkoutEntityWrapper_serializedEntity);
  v3 = *(self + OBJC_IVAR___WorkoutEntityWrapper_serializedEntity + 8);
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

- (WorkoutEntityWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end