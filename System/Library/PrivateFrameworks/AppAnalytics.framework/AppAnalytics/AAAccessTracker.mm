@interface AAAccessTracker
- (AAAccessTracker)init;
- (id)peekDataEventByName:(id)name;
- (void)explicitSubmitEventType:(Class)type onlyIfTimed:(BOOL)timed submitTime:(id)time completion:(id)completion;
- (void)explicitSubmitEventType:(Class)type submitTime:(id)time completion:(id)completion;
- (void)explicitSubmitRawEvent:(id)event onlyIfTimed:(BOOL)timed submitTime:(id)time completion:(id)completion;
- (void)explicitSubmitRawEvent:(id)event submitTime:(id)time completion:(id)completion;
- (void)popDataEventByName:(id)name;
- (void)popDataEventType:(Class)type;
- (void)pushDataEvent:(id)event traits:(id)traits file:(id)file line:(int64_t)line;
- (void)submitEventType:(Class)type completion:(id)completion;
- (void)submitEventType:(Class)type onlyIfTimed:(BOOL)timed;
- (void)submitEventType:(Class)type onlyIfTimed:(BOOL)timed completion:(id)completion;
- (void)submitRawEvent:(id)event completion:(id)completion;
- (void)submitRawEvent:(id)event onlyIfTimed:(BOOL)timed;
- (void)submitRawEvent:(id)event onlyIfTimed:(BOOL)timed completion:(id)completion;
- (void)timeEventType:(Class)type;
- (void)timeEventType:(Class)type submitAndRestartWithSession:(BOOL)session;
- (void)timeRawEvent:(id)event submitAndRestartWithSession:(BOOL)session;
@end

@implementation AAAccessTracker

- (AAAccessTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)timeEventType:(Class)type
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  selfCopy = self;
  BridgedAccessTracker.time(eventType:)(ObjCClassMetadata);
}

- (void)timeEventType:(Class)type submitAndRestartWithSession:(BOOL)session
{
  sessionCopy = session;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  selfCopy = self;
  BridgedAccessTracker.time(eventType:submitAndRestartWithSession:)(ObjCClassMetadata, sessionCopy);
}

- (void)timeRawEvent:(id)event submitAndRestartWithSession:(BOOL)session
{
  eventCopy = event;
  selfCopy = self;
  BridgedAccessTracker.time(rawEvent:submitAndRestartWithSession:)(eventCopy, session);
}

- (void)submitEventType:(Class)type onlyIfTimed:(BOOL)timed
{
  timedCopy = timed;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  selfCopy = self;
  BridgedAccessTracker.submit(eventType:onlyIfTimed:)(ObjCClassMetadata, timedCopy);
}

- (void)submitEventType:(Class)type completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v10[4] = sub_1B6A24990;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B6A12D6C;
  v10[3] = &block_descriptor_104;
  v8 = _Block_copy(v10);
  selfCopy = self;

  [(AAAccessTracker *)selfCopy submitEventType:type onlyIfTimed:0 completion:v8];

  _Block_release(v8);
}

- (void)submitEventType:(Class)type onlyIfTimed:(BOOL)timed completion:(id)completion
{
  timedCopy = timed;
  v7 = _Block_copy(completion);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v7);
  selfCopy = self;
  sub_1B6A226C4(ObjCClassMetadata, timedCopy, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)submitRawEvent:(id)event onlyIfTimed:(BOOL)timed
{
  eventCopy = event;
  selfCopy = self;
  BridgedAccessTracker.submit(rawEvent:onlyIfTimed:)(eventCopy);
}

- (void)submitRawEvent:(id)event completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v11[4] = sub_1B6A24990;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B6A12D6C;
  v11[3] = &block_descriptor_88;
  v8 = _Block_copy(v11);
  eventCopy = event;
  selfCopy = self;

  [(AAAccessTracker *)selfCopy submitRawEvent:eventCopy onlyIfTimed:0 completion:v8];

  _Block_release(v8);
}

- (void)submitRawEvent:(id)event onlyIfTimed:(BOOL)timed completion:(id)completion
{
  timedCopy = timed;
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  eventCopy = event;
  selfCopy = self;
  sub_1B6A22B08(eventCopy, timedCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)explicitSubmitEventType:(Class)type submitTime:(id)time completion:(id)completion
{
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  sub_1B6AB8D80();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  selfCopy = self;
  v16 = sub_1B6AB8D20();
  aBlock[4] = sub_1B6A24990;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6A12D6C;
  aBlock[3] = &block_descriptor_72;
  v17 = _Block_copy(aBlock);

  [(AAAccessTracker *)selfCopy explicitSubmitEventType:type onlyIfTimed:0 submitTime:v16 completion:v17];
  _Block_release(v17);

  (*(v9 + 8))(v12, v8);
}

- (void)explicitSubmitEventType:(Class)type onlyIfTimed:(BOOL)timed submitTime:(id)time completion:(id)completion
{
  timedCopy = timed;
  v9 = sub_1B6AB8DB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(completion);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1B6AB8D80();
  _Block_copy(v14);
  selfCopy = self;
  sub_1B6A22F28(ObjCClassMetadata, timedCopy, v13, selfCopy, v14);
  _Block_release(v14);
  _Block_release(v14);

  (*(v10 + 8))(v13, v9);
}

- (void)explicitSubmitRawEvent:(id)event submitTime:(id)time completion:(id)completion
{
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  sub_1B6AB8D80();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  eventCopy = event;
  selfCopy = self;
  v17 = sub_1B6AB8D20();
  aBlock[4] = sub_1B6A24990;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6A12D6C;
  aBlock[3] = &block_descriptor_56;
  v18 = _Block_copy(aBlock);

  [(AAAccessTracker *)selfCopy explicitSubmitRawEvent:eventCopy onlyIfTimed:0 submitTime:v17 completion:v18];
  _Block_release(v18);

  (*(v9 + 8))(v12, v8);
}

- (void)explicitSubmitRawEvent:(id)event onlyIfTimed:(BOOL)timed submitTime:(id)time completion:(id)completion
{
  timedCopy = timed;
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(completion);
  sub_1B6AB8D80();
  _Block_copy(v15);
  eventCopy = event;
  selfCopy = self;
  sub_1B6A23598(eventCopy, timedCopy, v14, selfCopy, v15);
  _Block_release(v15);
  _Block_release(v15);

  (*(v11 + 8))(v14, v10);
}

- (void)pushDataEvent:(id)event traits:(id)traits file:(id)file line:(int64_t)line
{
  v10 = sub_1B6AB92E0();
  v12 = v11;
  swift_unknownObjectRetain();
  traitsCopy = traits;
  selfCopy = self;
  BridgedAccessTracker.push(data:traits:file:line:)(event, traits, v10, v12, line);
  swift_unknownObjectRelease();
}

- (void)popDataEventType:(Class)type
{
  swift_getObjCClassMetadata();
  selfCopy = self;
  BridgedAccessTracker.pop(dataType:)();
}

- (void)popDataEventByName:(id)name
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  BridgedAccessTracker.pop(dataName:)(v8);
}

- (id)peekDataEventByName:(id)name
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  selfCopy = self;
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