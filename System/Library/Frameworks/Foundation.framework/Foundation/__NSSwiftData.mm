@interface __NSSwiftData
- (_TtC10Foundation13__NSSwiftData)init;
- (_TtC10Foundation13__NSSwiftData)initWithBase64EncodedData:(id)data options:(unint64_t)options;
- (_TtC10Foundation13__NSSwiftData)initWithBytesNoCopy:(void *)copy length:(int64_t)length deallocator:(id)deallocator;
- (_TtC10Foundation13__NSSwiftData)initWithBytesNoCopy:(void *)copy length:(int64_t)length freeWhenDone:(BOOL)done;
- (_TtC10Foundation13__NSSwiftData)initWithCoder:(id)coder;
- (_TtC10Foundation13__NSSwiftData)initWithContentsOfURL:(id)l;
- (_TtC10Foundation13__NSSwiftData)initWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error;
- (_TtC10Foundation13__NSSwiftData)initWithData:(id)data;
- (id)copyWithZone:(void *)zone;
- (id)mutableCopyWithZone:(void *)zone;
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

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  __NSSwiftData.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (id)mutableCopyWithZone:(void *)zone
{
  selfCopy = self;
  bytes = [(__NSSwiftData *)selfCopy bytes];
  v5 = [(__NSSwiftData *)selfCopy length];
  v6 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithBytes:bytes length:v5];

  return v6;
}

- (_TtC10Foundation13__NSSwiftData)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing) = 0;
  v4 = self + OBJC_IVAR____TtC10Foundation13__NSSwiftData__range;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for __NSSwiftData();
  coderCopy = coder;
  v6 = [(NSData *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (_TtC10Foundation13__NSSwiftData)initWithBase64EncodedData:(id)data options:(unint64_t)options
{
  dataCopy = data;
  v6 = specialized Data.init(referencing:)(dataCopy);
  v8 = v7;

  return __NSSwiftData.init(base64Encoded:options:)(v6, v8, options);
}

- (_TtC10Foundation13__NSSwiftData)initWithBytesNoCopy:(void *)copy length:(int64_t)length freeWhenDone:(BOOL)done
{
  doneCopy = done;
  *(&self->super.super.isa + OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing) = 0;
  v8 = self + OBJC_IVAR____TtC10Foundation13__NSSwiftData__range;
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v10.receiver = self;
  v10.super_class = type metadata accessor for __NSSwiftData();
  return [(NSData *)&v10 initWithBytesNoCopy:copy length:length freeWhenDone:doneCopy];
}

- (_TtC10Foundation13__NSSwiftData)initWithBytesNoCopy:(void *)copy length:(int64_t)length deallocator:(id)deallocator
{
  v7 = _Block_copy(deallocator);
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

  return __NSSwiftData.init(bytesNoCopy:length:deallocator:)(copy, length, v10, v9);
}

- (_TtC10Foundation13__NSSwiftData)initWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(l, &v8);
  v7 = v8;
  return __NSSwiftData.init(contentsOf:options:)(&v7, options);
}

- (_TtC10Foundation13__NSSwiftData)initWithContentsOfURL:(id)l
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(l, &v5);
  v4 = v5;
  return __NSSwiftData.init(contentsOf:)(&v4);
}

- (_TtC10Foundation13__NSSwiftData)initWithData:(id)data
{
  dataCopy = data;
  v4 = specialized Data.init(referencing:)(dataCopy);
  v6 = v5;

  return __NSSwiftData.init(data:)(v4, v6);
}

@end