@interface DynamicTranscriptBackgroundPosterDelegate
- (_TtC32DynamicBackgroundPosterExtension41DynamicTranscriptBackgroundPosterDelegate)init;
- (void)updateDescriptors:(NSDictionary *)descriptors withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion;
@end

@implementation DynamicTranscriptBackgroundPosterDelegate

- (void)updateDescriptors:(NSDictionary *)descriptors withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion
{
  v9 = (*(*(sub_10000CC1C(&qword_10006EA80, &qword_100050680) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = descriptors;
  v13[3] = info;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10004D2BC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100050690;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000506A0;
  v16[5] = v15;
  descriptorsCopy = descriptors;
  infoCopy = info;
  selfCopy = self;
  sub_1000100A8(0, 0, v11, &unk_1000506B0, v16);
}

- (_TtC32DynamicBackgroundPosterExtension41DynamicTranscriptBackgroundPosterDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end