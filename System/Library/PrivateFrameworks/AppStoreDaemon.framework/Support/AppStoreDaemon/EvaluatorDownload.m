@interface EvaluatorDownload
+ (id)formatSize:(unint64_t)a3;
- (_TtC9appstored17EvaluatorDownload)init;
- (_TtC9appstored17EvaluatorDownload)initWithBytes:(unint64_t)a3 isAutomatic:(BOOL)a4 isRemaining:(BOOL)a5 isUpdate:(BOOL)a6 name:(id)a7 clientID:(id)a8 logKey:(id)a9;
@end

@implementation EvaluatorDownload

- (_TtC9appstored17EvaluatorDownload)initWithBytes:(unint64_t)a3 isAutomatic:(BOOL)a4 isRemaining:(BOOL)a5 isUpdate:(BOOL)a6 name:(id)a7 clientID:(id)a8 logKey:(id)a9
{
  ObjectType = swift_getObjectType();
  if (!a7)
  {
    v18 = 0;
    v19 = a9;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = 0;
    v21 = 0;
    goto LABEL_6;
  }

  a7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = a9;
  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_6:
  *(self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_bytes) = a3;
  *(self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_isAutomatic) = a4;
  *(self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_isRemaining) = a5;
  *(self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_isUpdate) = a6;
  v22 = (self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_name);
  *v22 = a7;
  v22[1] = v18;
  v23 = (self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_clientID);
  *v23 = v20;
  v23[1] = v21;
  *(self + OBJC_IVAR____TtC9appstored17EvaluatorDownload_logKey) = v19;
  v26.receiver = self;
  v26.super_class = ObjectType;
  v24 = v19;
  return [(EvaluatorDownload *)&v26 init];
}

+ (id)formatSize:(unint64_t)a3
{
  sub_10011A648(a3);
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