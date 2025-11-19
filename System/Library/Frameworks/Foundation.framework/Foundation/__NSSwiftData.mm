@interface __NSSwiftData
- (_TtC10Foundation13__NSSwiftData)init;
- (_TtC10Foundation13__NSSwiftData)initWithBase64EncodedData:(id)a3 options:(unint64_t)a4;
- (_TtC10Foundation13__NSSwiftData)initWithBytesNoCopy:(void *)a3 length:(int64_t)a4 deallocator:(id)a5;
- (_TtC10Foundation13__NSSwiftData)initWithBytesNoCopy:(void *)a3 length:(int64_t)a4 freeWhenDone:(BOOL)a5;
- (_TtC10Foundation13__NSSwiftData)initWithCoder:(id)a3;
- (_TtC10Foundation13__NSSwiftData)initWithContentsOfURL:(id)a3;
- (_TtC10Foundation13__NSSwiftData)initWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (_TtC10Foundation13__NSSwiftData)initWithData:(id)a3;
- (id)copyWithZone:(void *)a3;
- (id)mutableCopyWithZone:(void *)a3;
- (int64_t)length;
@end

@implementation __NSSwiftData

- (_TtC10Foundation13__NSSwiftData)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing) = 0;
  v2 = self + OBJC_IVAR____TtC10Foundation13__NSSwiftData__range;
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for __NSSwiftData();
  return [(__NSSwiftData *)&v4 init];
}

- (int64_t)length
{
  if (*(self + OBJC_IVAR____TtC10Foundation13__NSSwiftData__range + 16))
  {
    goto LABEL_5;
  }

  v2 = *(self + OBJC_IVAR____TtC10Foundation13__NSSwiftData__range);
  v3 = *(self + OBJC_IVAR____TtC10Foundation13__NSSwiftData__range + 8);
  self = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  return self;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  __NSSwiftData.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (id)mutableCopyWithZone:(void *)a3
{
  v3 = self;
  v4 = [(__NSSwiftData *)v3 bytes];
  v5 = [(__NSSwiftData *)v3 length];
  v6 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithBytes:v4 length:v5];

  return v6;
}

- (_TtC10Foundation13__NSSwiftData)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing) = 0;
  v4 = self + OBJC_IVAR____TtC10Foundation13__NSSwiftData__range;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for __NSSwiftData();
  v5 = a3;
  v6 = [(NSData *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

- (_TtC10Foundation13__NSSwiftData)initWithBase64EncodedData:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  v6 = specialized Data.init(referencing:)(v5);
  v8 = v7;

  return __NSSwiftData.init(base64Encoded:options:)(v6, v8, a4);
}

- (_TtC10Foundation13__NSSwiftData)initWithBytesNoCopy:(void *)a3 length:(int64_t)a4 freeWhenDone:(BOOL)a5
{
  v5 = a5;
  *(&self->super.super.isa + OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing) = 0;
  v8 = self + OBJC_IVAR____TtC10Foundation13__NSSwiftData__range;
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v10.receiver = self;
  v10.super_class = type metadata accessor for __NSSwiftData();
  return [(NSData *)&v10 initWithBytesNoCopy:a3 length:a4 freeWhenDone:v5];
}

- (_TtC10Foundation13__NSSwiftData)initWithBytesNoCopy:(void *)a3 length:(int64_t)a4 deallocator:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  return __NSSwiftData.init(bytesNoCopy:length:deallocator:)(a3, a4, v10, v9);
}

- (_TtC10Foundation13__NSSwiftData)initWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a3, &v8);
  v7 = v8;
  return __NSSwiftData.init(contentsOf:options:)(&v7, a4);
}

- (_TtC10Foundation13__NSSwiftData)initWithContentsOfURL:(id)a3
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a3, &v5);
  v4 = v5;
  return __NSSwiftData.init(contentsOf:)(&v4);
}

- (_TtC10Foundation13__NSSwiftData)initWithData:(id)a3
{
  v3 = a3;
  v4 = specialized Data.init(referencing:)(v3);
  v6 = v5;

  return __NSSwiftData.init(data:)(v4, v6);
}

@end