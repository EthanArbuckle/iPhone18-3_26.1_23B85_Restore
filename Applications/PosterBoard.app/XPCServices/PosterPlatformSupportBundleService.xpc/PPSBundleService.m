@interface PPSBundleService
- (_TtC34PosterPlatformSupportBundleService16PPSBundleService)init;
- (void)hostConfigurationForBundleAtURL:(NSURL *)a3 currentSwitcherConfiguration:(PRSHostConfiguration *)a4 forRole:(NSString *)a5 completion:(id)a6;
- (void)switcherConfigurationForBundleAtURL:(NSURL *)a3 currentSwitcherConfiguration:(PRSHostConfiguration *)a4 forRole:(NSString *)a5 completion:(id)a6;
@end

@implementation PPSBundleService

- (void)hostConfigurationForBundleAtURL:(NSURL *)a3 currentSwitcherConfiguration:(PRSHostConfiguration *)a4 forRole:(NSString *)a5 completion:(id)a6
{
  v11 = (*(*(sub_100001F80(&qword_10000C9C0, &qword_100007268) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1000064A0();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000072E0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000072E8;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = self;
  sub_1000024E8(0, 0, v13, &unk_1000072F0, v18);
}

- (void)switcherConfigurationForBundleAtURL:(NSURL *)a3 currentSwitcherConfiguration:(PRSHostConfiguration *)a4 forRole:(NSString *)a5 completion:(id)a6
{
  v11 = (*(*(sub_100001F80(&qword_10000C9C0, &qword_100007268) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1000064A0();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100007278;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100007288;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = self;
  sub_1000024E8(0, 0, v13, &unk_100007298, v18);
}

- (_TtC34PosterPlatformSupportBundleService16PPSBundleService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PPSBundleService();
  return [(PPSBundleService *)&v3 init];
}

@end