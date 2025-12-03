@interface UpdateController
- (_TtC15Unity2025Poster16UpdateController)init;
- (void)updateDescriptors:(NSDictionary *)descriptors withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion;
@end

@implementation UpdateController

- (void)updateDescriptors:(NSDictionary *)descriptors withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion
{
  v9 = sub_100004698(&qword_100023A88, &qword_100015088);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = descriptors;
  v14[3] = info;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1000130D4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100015098;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000150A8;
  v17[5] = v16;
  descriptorsCopy = descriptors;
  infoCopy = info;
  selfCopy = self;
  sub_100011B44(0, 0, v12, &unk_1000150B8, v17);
}

- (_TtC15Unity2025Poster16UpdateController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UpdateController();
  return [(UpdateController *)&v3 init];
}

@end