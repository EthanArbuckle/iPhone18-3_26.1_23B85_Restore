@interface InferenceRecordTaskServer
+ (id)taskIdentifier;
- (_TtC25FitnessIntelligencePlugin25InferenceRecordTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)listRecordsWithAdapter:(id)adapter interval:(id)interval completion:(id)completion;
- (void)retrieveWith:(id)with completion:(id)completion;
- (void)saveInference:(id)inference completion:(id)completion;
- (void)setFeedbackId:(id)id for:(id)for completion:(id)completion;
@end

@implementation InferenceRecordTaskServer

- (void)retrieveWith:(id)with completion:(id)completion
{
  v6 = sub_749B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  sub_74998();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  InferenceRecordTaskServer.retrieve(with:completion:)(v10, sub_19A10, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)listRecordsWithAdapter:(id)adapter interval:(id)interval completion:(id)completion
{
  v8 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = sub_755A8();
  v15 = v14;
  if (interval)
  {
    sub_74818();
    v16 = sub_74848();
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  }

  else
  {
    v17 = sub_74848();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  selfCopy = self;
  InferenceRecordTaskServer.listRecords(adapter:interval:completion:)(v13, v15, v11, sub_199A0, v18);

  sub_199A8(v11);
}

- (void)setFeedbackId:(id)id for:(id)for completion:(id)completion
{
  v7 = sub_749B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  v13 = sub_755A8();
  v15 = v14;
  sub_74998();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  selfCopy = self;
  InferenceRecordTaskServer.setFeedbackId(_:for:completion:)(v13, v15, v11, sub_19ACC, v16);

  (*(v8 + 8))(v11, v7);
}

- (void)saveInference:(id)inference completion:(id)completion
{
  v6 = _Block_copy(completion);
  inferenceCopy = inference;
  selfCopy = self;
  v8 = sub_748C8();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  InferenceRecordTaskServer.saveInference(_:completion:)(v8, v10, sub_19998, v11);

  sub_FB28(v8, v10);
}

- (_TtC25FitnessIntelligencePlugin25InferenceRecordTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v9 = sub_749B8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_74998();
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  v15 = sub_1F5F8(v12, configuration, clientCopy, delegate);

  swift_unknownObjectRelease();
  return v15;
}

+ (id)taskIdentifier
{
  _s25FitnessIntelligencePlugin25InferenceRecordTaskServerC14taskIdentifierSSyFZ_0();
  v2 = sub_75598();

  return v2;
}

- (id)exportedInterface
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence34InferenceRecordTaskServerInterface_];

  return v2;
}

- (id)remoteInterface
{
  v2 = [objc_allocWithZone(NSXPCInterface) init];

  return v2;
}

@end