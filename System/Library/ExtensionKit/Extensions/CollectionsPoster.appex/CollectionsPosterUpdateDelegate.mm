@interface CollectionsPosterUpdateDelegate
- (void)updateConfiguration:(PRPosterConfiguration *)configuration withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion;
- (void)updateDescriptors:(NSDictionary *)descriptors withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion;
@end

@implementation CollectionsPosterUpdateDelegate

- (void)updateDescriptors:(NSDictionary *)descriptors withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion
{
  v9 = sub_100001FDC(&qword_1000205D0, &qword_1000122F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = descriptors;
  v14[3] = info;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_100010A2C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100012350;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100012358;
  v17[5] = v16;
  descriptorsCopy = descriptors;
  infoCopy = info;
  selfCopy = self;
  sub_10000E794(0, 0, v12, &unk_100012360, v17);
}

- (void)updateConfiguration:(PRPosterConfiguration *)configuration withSessionInfo:(PRUpdatingSessionInfo *)info completion:(id)completion
{
  v9 = sub_100001FDC(&qword_1000205D0, &qword_1000122F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = configuration;
  v14[3] = info;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_100010A2C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100012300;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000123F0;
  v17[5] = v16;
  configurationCopy = configuration;
  infoCopy = info;
  selfCopy = self;
  sub_10000E794(0, 0, v12, &unk_100012310, v17);
}

@end