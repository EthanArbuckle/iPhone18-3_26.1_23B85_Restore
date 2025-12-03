@interface EvaluatorDownload
+ (id)formatSize:(unint64_t)size;
- (_TtC9appstored17EvaluatorDownload)init;
- (_TtC9appstored17EvaluatorDownload)initWithBytes:(unint64_t)bytes isAutomatic:(BOOL)automatic isRemaining:(BOOL)remaining isUpdate:(BOOL)update name:(id)name clientID:(id)d logKey:(id)key;
@end

@implementation EvaluatorDownload

- (_TtC9appstored17EvaluatorDownload)initWithBytes:(unint64_t)bytes isAutomatic:(BOOL)automatic isRemaining:(BOOL)remaining isUpdate:(BOOL)update name:(id)name clientID:(id)d logKey:(id)key
{
  ObjectType = swift_getObjectType();
  if (!name)
  {
    v18 = 0;
    keyCopy2 = key;
    if (d)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = 0;
    v21 = 0;
    goto LABEL_6;
  }

  name = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  keyCopy2 = key;
  if (!d)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_6:
  *(self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_bytes) = bytes;
  *(self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_isAutomatic) = automatic;
  *(self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_isRemaining) = remaining;
  *(self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_isUpdate) = update;
  v22 = (self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_name);
  *v22 = name;
  v22[1] = v18;
  v23 = (self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_clientID);
  *v23 = v20;
  v23[1] = v21;
  *(self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey) = keyCopy2;
  v26.receiver = self;
  v26.super_class = ObjectType;
  v24 = keyCopy2;
  return [(EvaluatorDownload *)&v26 init];
}

+ (id)formatSize:(unint64_t)size
{
  sub_10011A648(size);
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC9appstored17EvaluatorDownload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end