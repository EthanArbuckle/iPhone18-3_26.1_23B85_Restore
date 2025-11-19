@interface AAUploadBatchEventProcessor
- (AAUploadBatchEventProcessor)init;
- (AAUploadBatchEventProcessor)initWithClient:(id)a3 endpoint:(id)a4;
- (AAUploadBatchEventProcessor)initWithClient:(id)a3 endpoint:(id)a4 config:(id)a5;
- (AAUploadBatchEventProcessor)initWithClient:(id)a3 endpoint:(id)a4 contentType:(int64_t)a5 config:(id)a6;
@end

@implementation AAUploadBatchEventProcessor

- (AAUploadBatchEventProcessor)initWithClient:(id)a3 endpoint:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = qword_1EDBCB790;
  v9 = a3;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDBCB798;
  v11 = sub_1B6986A58(v9, a4, 0, v10);

  v12 = (self + OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor);
  *v12 = v11;
  v12[1] = &protocol witness table for UploadBatchEventProcessor;
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(AAUploadBatchEventProcessor *)&v15 init];

  swift_unknownObjectRelease();
  return v13;
}

- (AAUploadBatchEventProcessor)initWithClient:(id)a3 endpoint:(id)a4 config:(id)a5
{
  ObjectType = swift_getObjectType();
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = sub_1B6986A58(v10, a4, 0, v11);
  v13 = (self + OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor);
  *v13 = v12;
  v13[1] = &protocol witness table for UploadBatchEventProcessor;
  v16.receiver = self;
  v16.super_class = ObjectType;
  v14 = [(AAUploadBatchEventProcessor *)&v16 init];

  swift_unknownObjectRelease();
  return v14;
}

- (AAUploadBatchEventProcessor)initWithClient:(id)a3 endpoint:(id)a4 contentType:(int64_t)a5 config:(id)a6
{
  ObjectType = swift_getObjectType();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a6;
  v14 = sub_1B6986A58(v12, a4, a5, v13);
  v15 = (self + OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor);
  *v15 = v14;
  v15[1] = &protocol witness table for UploadBatchEventProcessor;
  v18.receiver = self;
  v18.super_class = ObjectType;
  v16 = [(AAUploadBatchEventProcessor *)&v18 init];

  swift_unknownObjectRelease();
  return v16;
}

- (AAUploadBatchEventProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end