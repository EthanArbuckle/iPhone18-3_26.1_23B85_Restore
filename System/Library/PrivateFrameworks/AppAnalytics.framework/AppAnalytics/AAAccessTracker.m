@interface AAAccessTracker
- (AAAccessTracker)init;
- (id)peekDataEventByName:(id)a3;
- (void)explicitSubmitEventType:(Class)a3 onlyIfTimed:(BOOL)a4 submitTime:(id)a5 completion:(id)a6;
- (void)explicitSubmitEventType:(Class)a3 submitTime:(id)a4 completion:(id)a5;
- (void)explicitSubmitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4 submitTime:(id)a5 completion:(id)a6;
- (void)explicitSubmitRawEvent:(id)a3 submitTime:(id)a4 completion:(id)a5;
- (void)popDataEventByName:(id)a3;
- (void)popDataEventType:(Class)a3;
- (void)pushDataEvent:(id)a3 traits:(id)a4 file:(id)a5 line:(int64_t)a6;
- (void)submitEventType:(Class)a3 completion:(id)a4;
- (void)submitEventType:(Class)a3 onlyIfTimed:(BOOL)a4;
- (void)submitEventType:(Class)a3 onlyIfTimed:(BOOL)a4 completion:(id)a5;
- (void)submitRawEvent:(id)a3 completion:(id)a4;
- (void)submitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4;
- (void)submitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4 completion:(id)a5;
- (void)timeEventType:(Class)a3;
- (void)timeEventType:(Class)a3 submitAndRestartWithSession:(BOOL)a4;
- (void)timeRawEvent:(id)a3 submitAndRestartWithSession:(BOOL)a4;
@end

@implementation AAAccessTracker

- (AAAccessTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)timeEventType:(Class)a3
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = self;
  BridgedAccessTracker.time(eventType:)(ObjCClassMetadata);
}

- (void)timeEventType:(Class)a3 submitAndRestartWithSession:(BOOL)a4
{
  v4 = a4;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = self;
  BridgedAccessTracker.time(eventType:submitAndRestartWithSession:)(ObjCClassMetadata, v4);
}

- (void)timeRawEvent:(id)a3 submitAndRestartWithSession:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  BridgedAccessTracker.time(rawEvent:submitAndRestartWithSession:)(v6, a4);
}

- (void)submitEventType:(Class)a3 onlyIfTimed:(BOOL)a4
{
  v4 = a4;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = self;
  BridgedAccessTracker.submit(eventType:onlyIfTimed:)(ObjCClassMetadata, v4);
}

- (void)submitEventType:(Class)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v10[4] = sub_1B6A24990;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B6A12D6C;
  v10[3] = &block_descriptor_104;
  v8 = _Block_copy(v10);
  v9 = self;

  [(AAAccessTracker *)v9 submitEventType:a3 onlyIfTimed:0 completion:v8];

  _Block_release(v8);
}

- (void)submitEventType:(Class)a3 onlyIfTimed:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = _Block_copy(a5);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v7);
  v9 = self;
  sub_1B6A226C4(ObjCClassMetadata, v5, v9, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)submitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  BridgedAccessTracker.submit(rawEvent:onlyIfTimed:)(v5);
}

- (void)submitRawEvent:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v11[4] = sub_1B6A24990;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B6A12D6C;
  v11[3] = &block_descriptor_88;
  v8 = _Block_copy(v11);
  v9 = a3;
  v10 = self;

  [(AAAccessTracker *)v10 submitRawEvent:v9 onlyIfTimed:0 completion:v8];

  _Block_release(v8);
}

- (void)submitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_1B6A22B08(v9, v5, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)explicitSubmitEventType:(Class)a3 submitTime:(id)a4 completion:(id)a5
{
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  sub_1B6AB8D80();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = self;
  v16 = sub_1B6AB8D20();
  aBlock[4] = sub_1B6A24990;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6A12D6C;
  aBlock[3] = &block_descriptor_72;
  v17 = _Block_copy(aBlock);

  [(AAAccessTracker *)v15 explicitSubmitEventType:a3 onlyIfTimed:0 submitTime:v16 completion:v17];
  _Block_release(v17);

  (*(v9 + 8))(v12, v8);
}

- (void)explicitSubmitEventType:(Class)a3 onlyIfTimed:(BOOL)a4 submitTime:(id)a5 completion:(id)a6
{
  v7 = a4;
  v9 = sub_1B6AB8DB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a6);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1B6AB8D80();
  _Block_copy(v14);
  v16 = self;
  sub_1B6A22F28(ObjCClassMetadata, v7, v13, v16, v14);
  _Block_release(v14);
  _Block_release(v14);

  (*(v10 + 8))(v13, v9);
}

- (void)explicitSubmitRawEvent:(id)a3 submitTime:(id)a4 completion:(id)a5
{
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  sub_1B6AB8D80();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = self;
  v17 = sub_1B6AB8D20();
  aBlock[4] = sub_1B6A24990;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6A12D6C;
  aBlock[3] = &block_descriptor_56;
  v18 = _Block_copy(aBlock);

  [(AAAccessTracker *)v16 explicitSubmitRawEvent:v15 onlyIfTimed:0 submitTime:v17 completion:v18];
  _Block_release(v18);

  (*(v9 + 8))(v12, v8);
}

- (void)explicitSubmitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4 submitTime:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a6);
  sub_1B6AB8D80();
  _Block_copy(v15);
  v16 = a3;
  v17 = self;
  sub_1B6A23598(v16, v7, v14, v17, v15);
  _Block_release(v15);
  _Block_release(v15);

  (*(v11 + 8))(v14, v10);
}

- (void)pushDataEvent:(id)a3 traits:(id)a4 file:(id)a5 line:(int64_t)a6
{
  v10 = sub_1B6AB92E0();
  v12 = v11;
  swift_unknownObjectRetain();
  v13 = a4;
  v14 = self;
  BridgedAccessTracker.push(data:traits:file:line:)(a3, a4, v10, v12, a6);
  swift_unknownObjectRelease();
}

- (void)popDataEventType:(Class)a3
{
  swift_getObjCClassMetadata();
  v4 = self;
  BridgedAccessTracker.pop(dataType:)();
}

- (void)popDataEventByName:(id)a3
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  BridgedAccessTracker.pop(dataName:)(v8);
}

- (id)peekDataEventByName:(id)a3
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  v7 = self;
  BridgedAccessTracker.peek(dataName:)(v4, v6, v16);

  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_1B6ABA0E0();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end