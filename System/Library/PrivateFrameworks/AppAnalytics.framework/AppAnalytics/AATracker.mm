@interface AATracker
- (AATracker)init;
- (NSArray)debugPath;
- (NSArray)path;
- (NSString)identifier;
- (NSString)name;
- (id)chainWithName:(id)a3;
- (id)chainWithName:(id)a3 identifier:(id)a4;
- (id)delayedSubmitEventType:(Class)a3;
- (id)delayedSubmitEventType:(Class)a3 completion:(id)a4;
- (id)delayedSubmitEventType:(Class)a3 onlyIfTimed:(BOOL)a4 completion:(id)a5;
- (id)delayedSubmitRawEvent:(id)a3;
- (id)delayedSubmitRawEvent:(id)a3 completion:(id)a4;
- (id)delayedSubmitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4 completion:(id)a5;
- (id)onSessionChangeWithBlock:(id)a3;
- (void)clearStackEventType:(Class)a3 includeParentTrackers:(BOOL)a4;
- (void)dynamicTransactionWithIdentifier:(id)a3 block:(id)a4;
- (void)enterGroup;
- (void)enterGroupWithName:(id)a3;
- (void)enterGroupWithName:(id)a3 contentType:(int64_t)a4;
- (void)explicitSubmitEvent:(Class)a3 onlyIfTimed:(BOOL)a4 submitTime:(id)a5;
- (void)explicitSubmitEvent:(Class)a3 onlyIfTimed:(BOOL)a4 submitTime:(id)a5 completion:(id)a6;
- (void)explicitSubmitEvent:(Class)a3 submitTime:(id)a4;
- (void)explicitSubmitEvent:(Class)a3 submitTime:(id)a4 completion:(id)a5;
- (void)explicitSubmitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4 submitTime:(id)a5;
- (void)explicitSubmitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4 submitTime:(id)a5 completion:(id)a6;
- (void)explicitSubmitRawEvent:(id)a3 submitTime:(id)a4;
- (void)explicitSubmitRawEvent:(id)a3 submitTime:(id)a4 completion:(id)a5;
- (void)ifSession:(id)a3;
- (void)leaveGroup;
- (void)popDataEventByName:(id)a3;
- (void)pushDataEvent:(id)a3 traits:(id)a4 file:(id)a5 line:(int64_t)a6;
- (void)registerDataEventType:(Class)a3 block:(id)a4;
- (void)removeSessionObserversForObject:(id)a3;
- (void)submitEventType:(Class)a3 completion:(id)a4;
- (void)submitEventType:(Class)a3 onlyIfTimed:(BOOL)a4;
- (void)submitEventType:(Class)a3 onlyIfTimed:(BOOL)a4 completion:(id)a5;
- (void)submitRawEvent:(id)a3 completion:(id)a4;
- (void)submitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4;
- (void)submitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4 completion:(id)a5;
- (void)timeEventType:(Class)a3 startTime:(id)a4;
- (void)timeEventType:(Class)a3 submitAndRestartWithSession:(BOOL)a4;
- (void)timeEventType:(Class)a3 submitAndRestartWithSession:(BOOL)a4 startTime:(id)a5;
- (void)timeRawEvent:(id)a3 startTime:(id)a4;
- (void)timeRawEvent:(id)a3 submitAndRestartWithSession:(BOOL)a4;
- (void)timeRawEvent:(id)a3 submitAndRestartWithSession:(BOOL)a4 startTime:(id)a5;
- (void)transactionWithBlock:(id)a3;
- (void)whenSession:(id)a3;
@end

@implementation AATracker

- (NSString)name
{
  v2 = *(self + OBJC_IVAR___AATracker_name);
  v3 = *(self + OBJC_IVAR___AATracker_name + 8);

  v4 = sub_1B6AB92B0();

  return v4;
}

- (NSString)identifier
{
  if (*(self + OBJC_IVAR___AATracker_identifier + 8))
  {
    v2 = *(self + OBJC_IVAR___AATracker_identifier);
    v3 = *(self + OBJC_IVAR___AATracker_identifier + 8);

    v4 = sub_1B6AB92B0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (AATracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)timeEventType:(Class)a3 startTime:(id)a4
{
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &ObjCClassMetadata - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &ObjCClassMetadata - v10;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1B6AB8D80();
  v21 = self;
  v12 = *(self + OBJC_IVAR___AATracker_eventMirrorStore);
  v13 = *(self + OBJC_IVAR___AATracker_tracker);
  v14 = *(v13 + 96);
  v22 = *(v13 + 88);
  v23 = v14;
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v16 = v15 + v7;
  v17 = swift_allocObject();
  v18 = ObjCClassMetadata;
  *(v17 + 2) = v13;
  *(v17 + 3) = v18;
  *(v17 + 4) = v12 | 0x4000000000000000;
  (*(v6 + 32))(&v17[v15], v9, v5);
  v17[v16] = 1;
  swift_retain_n();
  v19 = v21;

  sub_1B69877A4(v22, sub_1B6A402A8, v17);

  (*(v6 + 8))(v11, v5);
}

- (void)timeEventType:(Class)a3 submitAndRestartWithSession:(BOOL)a4
{
  v4 = a4;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = self;
  BridgedTracker.time(eventType:submitAndRestartWithSession:)(ObjCClassMetadata, v4);
}

- (void)timeEventType:(Class)a3 submitAndRestartWithSession:(BOOL)a4 startTime:(id)a5
{
  v26 = a4;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1B6AB8D80();
  v23 = self;
  v13 = *(self + OBJC_IVAR___AATracker_eventMirrorStore);
  v14 = *(self + OBJC_IVAR___AATracker_tracker);
  v15 = *(v14 + 96);
  v24 = *(v14 + 88);
  v25 = v15;
  (*(v7 + 16))(v10, v12, v6);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = v16 + v8;
  v18 = swift_allocObject();
  v19 = ObjCClassMetadata;
  *(v18 + 2) = v14;
  *(v18 + 3) = v19;
  *(v18 + 4) = v13 | 0x4000000000000000;
  (*(v7 + 32))(&v18[v16], v10, v6);
  v18[v17] = v26;
  swift_retain_n();
  v20 = v23;

  sub_1B69877A4(v24, sub_1B6A402A8, v18);

  (*(v7 + 8))(v12, v6);
}

- (void)timeRawEvent:(id)a3 startTime:(id)a4
{
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8D80();
  v11 = a3;
  v12 = self;
  v13 = sub_1B6AB8D20();
  [(AATracker *)v12 timeRawEvent:v11 submitAndRestartWithSession:1 startTime:v13];

  (*(v7 + 8))(v10, v6);
}

- (void)timeRawEvent:(id)a3 submitAndRestartWithSession:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  BridgedTracker.time(rawEvent:submitAndRestartWithSession:)(v6, v4);
}

- (void)timeRawEvent:(id)a3 submitAndRestartWithSession:(BOOL)a4 startTime:(id)a5
{
  v24 = a4;
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  sub_1B6AB8D80();
  v14 = *(self + OBJC_IVAR___AATracker_tracker);
  v15 = *(v14 + 96);
  v22 = *(v14 + 88);
  v23 = v15;
  (*(v8 + 16))(v11, v13, v7);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = v16 + v9;
  v18 = swift_allocObject();
  *(v18 + 2) = v14;
  *(v18 + 3) = a3;
  *(v18 + 4) = 0x8000000000000000;
  (*(v8 + 32))(&v18[v16], v11, v7);
  v18[v17] = v24;
  v19 = a3;
  v20 = self;

  sub_1B69877A4(v22, sub_1B6A402A8, v18);

  (*(v8 + 8))(v13, v7);
}

- (void)submitEventType:(Class)a3 onlyIfTimed:(BOOL)a4
{
  v4 = a4;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = self;
  BridgedTracker.submit(eventType:onlyIfTimed:)(ObjCClassMetadata, v4);
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
  v10[3] = &block_descriptor_377;
  v8 = _Block_copy(v10);
  v9 = self;

  [(AATracker *)v9 submitEventType:a3 onlyIfTimed:0 completion:v8];

  _Block_release(v8);
}

- (void)submitEventType:(Class)a3 onlyIfTimed:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = _Block_copy(a5);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  BridgedTracker.submit(eventType:onlyIfTimed:completion:)(ObjCClassMetadata, v5, sub_1B6A24990, v9);
}

- (void)submitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  BridgedTracker.submit(rawEvent:onlyIfTimed:)(v6, v4);
}

- (void)submitRawEvent:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  BridgedTracker.submit(rawEvent:completion:)(v8, sub_1B6A24990, v7);
}

- (void)submitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = self;
  BridgedTracker.submit(rawEvent:onlyIfTimed:completion:)(v10, v5, sub_1B6A24990, v9);
}

- (id)delayedSubmitEventType:(Class)a3 onlyIfTimed:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = _Block_copy(a5);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  v11 = BridgedTracker.delayedSubmit(eventType:onlyIfTimed:completion:)(ObjCClassMetadata, v5, sub_1B6A24990, v9);

  return v11;
}

- (id)delayedSubmitEventType:(Class)a3
{
  v9[4] = nullsub_1;
  v9[5] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B6A12D6C;
  v9[3] = &block_descriptor_354;
  v5 = _Block_copy(v9);
  v6 = self;
  v7 = [(AATracker *)v6 delayedSubmitEventType:a3 onlyIfTimed:0 completion:v5];
  _Block_release(v5);

  return v7;
}

- (id)delayedSubmitEventType:(Class)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v12[4] = sub_1B6A24990;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B6A12D6C;
  v12[3] = &block_descriptor_348;
  v8 = _Block_copy(v12);
  v9 = self;

  v10 = [(AATracker *)v9 delayedSubmitEventType:a3 onlyIfTimed:0 completion:v8];
  _Block_release(v8);

  return v10;
}

- (id)delayedSubmitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = self;
  v12 = BridgedTracker.delayedSubmit(rawEvent:onlyIfTimed:completion:)(v10, v5, sub_1B6A24990, v9);

  return v12;
}

- (id)delayedSubmitRawEvent:(id)a3
{
  v10[4] = nullsub_1;
  v10[5] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B6A12D6C;
  v10[3] = &block_descriptor_337;
  v5 = _Block_copy(v10);
  v6 = a3;
  v7 = self;
  v8 = [(AATracker *)v7 delayedSubmitRawEvent:v6 onlyIfTimed:0 completion:v5];
  _Block_release(v5);

  return v8;
}

- (id)delayedSubmitRawEvent:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v13[4] = sub_1B6A24990;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1B6A12D6C;
  v13[3] = &block_descriptor_331;
  v8 = _Block_copy(v13);
  v9 = a3;
  v10 = self;

  v11 = [(AATracker *)v10 delayedSubmitRawEvent:v9 onlyIfTimed:0 completion:v8];
  _Block_release(v8);

  return v11;
}

- (void)explicitSubmitEvent:(Class)a3 onlyIfTimed:(BOOL)a4 submitTime:(id)a5 completion:(id)a6
{
  v7 = a4;
  v9 = sub_1B6AB8DB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a6);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1B6AB8D80();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = self;
  BridgedTracker.explicitSubmit(eventType:onlyIfTimed:submitTime:completion:)(ObjCClassMetadata, v7, v13, sub_1B6A24990, v16);

  (*(v10 + 8))(v13, v9);
}

- (void)explicitSubmitEvent:(Class)a3 onlyIfTimed:(BOOL)a4 submitTime:(id)a5
{
  v5 = a4;
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1B6AB8D80();
  v13 = self;
  BridgedTracker.explicitSubmit(eventType:onlyIfTimed:submitTime:)(ObjCClassMetadata, v5, v11);

  (*(v8 + 8))(v11, v7);
}

- (void)explicitSubmitEvent:(Class)a3 submitTime:(id)a4
{
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1B6AB8D80();
  v11 = self;
  BridgedTracker.explicitSubmit(eventType:submitTime:)(ObjCClassMetadata, v9);

  (*(v6 + 8))(v9, v5);
}

- (void)explicitSubmitEvent:(Class)a3 submitTime:(id)a4 completion:(id)a5
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
  aBlock[3] = &block_descriptor_320;
  v17 = _Block_copy(aBlock);

  [(AATracker *)v15 explicitSubmitEvent:a3 onlyIfTimed:0 submitTime:v16 completion:v17];
  _Block_release(v17);

  (*(v9 + 8))(v12, v8);
}

- (void)explicitSubmitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4 submitTime:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a6);
  sub_1B6AB8D80();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = a3;
  v18 = self;
  BridgedTracker.explicitSubmit(rawEvent:onlyIfTimed:submitTime:completion:)(v17, v7, v14, sub_1B6A24990, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)explicitSubmitRawEvent:(id)a3 onlyIfTimed:(BOOL)a4 submitTime:(id)a5
{
  v5 = a4;
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8D80();
  v13 = a3;
  v14 = self;
  BridgedTracker.explicitSubmit(rawEvent:onlyIfTimed:submitTime:)(v13, v5, v12);

  (*(v9 + 8))(v12, v8);
}

- (void)explicitSubmitRawEvent:(id)a3 submitTime:(id)a4
{
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8D80();
  v11 = a3;
  v12 = self;
  BridgedTracker.explicitRawSubmit(rawEvent:submitTime:)(v11, v10);

  (*(v7 + 8))(v10, v6);
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
  aBlock[4] = sub_1B6A243A8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6A12D6C;
  aBlock[3] = &block_descriptor_309;
  v18 = _Block_copy(aBlock);

  [(AATracker *)v16 explicitSubmitRawEvent:v15 onlyIfTimed:0 submitTime:v17 completion:v18];
  _Block_release(v18);

  (*(v9 + 8))(v12, v8);
}

- (void)registerDataEventType:(Class)a3 block:(id)a4
{
  v5 = _Block_copy(a4);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  BridgedTracker.register(dataType:block:)(ObjCClassMetadata, sub_1B6A3FCD8, v7);
}

- (void)pushDataEvent:(id)a3 traits:(id)a4 file:(id)a5 line:(int64_t)a6
{
  v10 = sub_1B6AB92E0();
  v12 = v11;
  swift_unknownObjectRetain();
  v13 = a4;
  v14 = self;
  BridgedTracker.push(data:traits:file:line:)(a3, a4, v10, v12, a6);
  swift_unknownObjectRelease();
}

- (void)popDataEventByName:(id)a3
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  v7 = *(self + OBJC_IVAR___AATracker_tracker);
  v9 = *(v7 + 88);
  v8 = *(v7 + 96);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v4;
  v10[4] = v6;
  v11 = self;

  sub_1B69877A4(v9, sub_1B6A40314, v10);
}

- (void)clearStackEventType:(Class)a3 includeParentTrackers:(BOOL)a4
{
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = self;
  v8 = [ObjCClassFromMetadata dataName];
  v9 = sub_1B6AB92E0();
  v11 = v10;

  v12 = *(v7 + OBJC_IVAR___AATracker_tracker);
  v14 = *(v12 + 88);
  v13 = *(v12 + 96);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v9;
  *(v15 + 32) = v11;
  *(v15 + 40) = a4;

  sub_1B69877A4(v14, sub_1B6A4030C, v15);
}

- (id)chainWithName:(id)a3
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  v7 = self;
  v8 = BridgedTracker.chain(name:)(v4, v6);

  return v8;
}

- (id)chainWithName:(id)a3 identifier:(id)a4
{
  v6 = sub_1B6AB92E0();
  v8 = v7;
  if (a4)
  {
    v9 = sub_1B6AB92E0();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  v12 = BridgedTracker.chain(name:identifier:)(v6, v8, v9, a4);

  return v12;
}

- (NSArray)path
{
  v3 = *(self + OBJC_IVAR___AATracker_tracker);
  swift_retain_n();
  v4 = self;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = v3[3];
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_2:
  v7 = v3[2];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1B69B5A00(0, *(v5 + 2) + 1, 1, v5);
  }

  v9 = *(v5 + 2);
  v8 = *(v5 + 3);
  if (v9 >= v8 >> 1)
  {
    v5 = sub_1B69B5A00((v8 > 1), v9 + 1, 1, v5);
  }

  *(v5 + 2) = v9 + 1;
  v10 = &v5[16 * v9];
  *(v10 + 4) = v7;
  *(v10 + 5) = v6;
LABEL_7:
  while (1)
  {

    v11 = v3[19];

    if (!v11)
    {
      break;
    }

    v3 = v11;
    v6 = v11[3];
    if (v6)
    {
      goto LABEL_2;
    }
  }

  sub_1B69B919C(v5);

  v12 = sub_1B6AB9500();

  return v12;
}

- (NSArray)debugPath
{
  v3 = *(self + OBJC_IVAR___AATracker_tracker);
  v11 = MEMORY[0x1E69E7CC0];
  swift_retain_n();
  v4 = self;
  v5 = sub_1B6A50610(v3, &v11);

  v6 = *(v3 + 152);

  if (v6)
  {
    while ((v5 & 1) != 0)
    {

      v5 = sub_1B6A50610(v7, &v11);

      v8 = *(v6 + 152);

      v6 = v8;
      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  sub_1B69B919C(v11);

  v9 = sub_1B6AB9500();

  return v9;
}

- (id)onSessionChangeWithBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  v7 = BridgedTracker.onSessionChange(block:)(sub_1B6A3FC64, v5);

  return v7;
}

- (void)removeSessionObserversForObject:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  BridgedTracker.removeSessionObservers(forObject:)(a3);
  swift_unknownObjectRelease();
}

- (void)transactionWithBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(self + OBJC_IVAR___AATracker_tracker);
  v7 = swift_allocObject();
  v7[2] = self;
  v7[3] = sub_1B6A40308;
  v7[4] = v5;
  v9 = *(v6 + 88);
  v8 = *(v6 + 96);
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = sub_1B6A402BC;
  v10[4] = v7;
  v11 = self;

  sub_1B69877A4(v9, sub_1B6A40320, v10);
}

- (void)dynamicTransactionWithIdentifier:(id)a3 block:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1B6AB92E0();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = *(self + OBJC_IVAR___AATracker_tracker);
  v11 = swift_allocObject();
  v11[2] = self;
  v11[3] = sub_1B6A40308;
  v11[4] = v9;
  v13 = *(v10 + 88);
  v12 = *(v10 + 96);
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v6;
  v14[4] = v8;
  v14[5] = sub_1B6A402BC;
  v14[6] = v11;
  v15 = self;

  sub_1B69877A4(v13, sub_1B6A402B4, v14);
}

- (void)whenSession:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(self + OBJC_IVAR___AATracker_tracker);
  v7 = swift_allocObject();
  v7[2] = sub_1B6A40308;
  v7[3] = v5;
  v7[4] = self;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1B6A402C0;
  *(v8 + 24) = v7;
  v10 = *(v6 + 88);
  v9 = *(v6 + 96);
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = sub_1B6A402A4;
  v11[4] = v8;
  v12 = self;

  sub_1B69877A4(v10, sub_1B6A0BE3C, v11);
}

- (void)ifSession:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(self + OBJC_IVAR___AATracker_tracker);
  v7 = swift_allocObject();
  v7[2] = sub_1B6A3FBB8;
  v7[3] = v5;
  v7[4] = self;
  v9 = *(v6 + 88);
  v8 = *(v6 + 96);
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = sub_1B6A402C0;
  v10[4] = v7;
  v11 = self;

  sub_1B69877A4(v9, sub_1B6A4031C, v10);
}

- (void)enterGroupWithName:(id)a3
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  BridgedTracker.enterGroup(groupName:)(v8);
}

- (void)enterGroupWithName:(id)a3 contentType:(int64_t)a4
{
  v6 = sub_1B6AB92E0();
  v8 = v7;
  v9 = self;
  BridgedTracker.enterGroup(groupName:contentType:)(v6, v8, a4);
}

- (void)enterGroup
{
  v2 = self;
  BridgedTracker.enterGroup()();
}

- (void)leaveGroup
{
  v3 = *(self + OBJC_IVAR___AATracker_tracker);
  v5 = *(v3 + 88);
  v4 = *(v3 + 96);
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v3;
  v7 = self;

  sub_1B69877A4(v5, sub_1B6A40318, v6);
}

@end