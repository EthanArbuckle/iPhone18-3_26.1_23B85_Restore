@interface FindMyItemsDigitalSeparationSource
- (void)fetchSharedResourcesWithCompletion:(id)completion;
- (void)stopAllSharingWithCompletion:(id)completion;
- (void)stopSharing:(DSSharedResource *)sharing withCompletion:(id)completion;
- (void)stopSharingWithParticipant:(DSParticipation *)participant completion:(id)completion;
@end

@implementation FindMyItemsDigitalSeparationSource

- (void)fetchSharedResourcesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1F34(sub_10348, v5);
}

- (void)stopSharing:(DSSharedResource *)sharing withCompletion:(id)completion
{
  v7 = (*(*(sub_F3B8(&qword_1EF38, &qword_14018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = sharing;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_11694();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_14100;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_14108;
  v14[5] = v13;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_ADC8(0, 0, v9, &unk_14110, v14);
}

- (void)stopSharingWithParticipant:(DSParticipation *)participant completion:(id)completion
{
  v7 = (*(*(sub_F3B8(&qword_1EF38, &qword_14018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = participant;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_11694();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_140E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_140E8;
  v14[5] = v13;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_ADC8(0, 0, v9, &unk_140F0, v14);
}

- (void)stopAllSharingWithCompletion:(id)completion
{
  v5 = (*(*(sub_F3B8(&qword_1EF38, &qword_14018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_11694();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_14090;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_140A0;
  v12[5] = v11;
  selfCopy = self;
  sub_ADC8(0, 0, v7, &unk_140B0, v12);
}

@end