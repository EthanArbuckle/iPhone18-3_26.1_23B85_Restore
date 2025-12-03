@interface PriceTrackingServiceFactory
- (void)deleteCloudDataWithCompletion:(id)completion;
@end

@implementation PriceTrackingServiceFactory

- (void)deleteCloudDataWithCompletion:(id)completion
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1007A2744();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100837190;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10081C0F0;
  v12[5] = v11;

  sub_10069E794(0, 0, v7, &unk_1008344D0, v12);
}

@end