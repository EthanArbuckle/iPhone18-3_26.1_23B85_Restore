@interface PPSBundleService
- (_TtC34PosterPlatformSupportBundleService16PPSBundleService)init;
- (void)hostConfigurationForBundleAtURL:(NSURL *)l currentSwitcherConfiguration:(PRSHostConfiguration *)configuration forRole:(NSString *)role completion:(id)completion;
- (void)switcherConfigurationForBundleAtURL:(NSURL *)l currentSwitcherConfiguration:(PRSHostConfiguration *)configuration forRole:(NSString *)role completion:(id)completion;
@end

@implementation PPSBundleService

- (void)hostConfigurationForBundleAtURL:(NSURL *)l currentSwitcherConfiguration:(PRSHostConfiguration *)configuration forRole:(NSString *)role completion:(id)completion
{
  v11 = (*(*(sub_100001F80(&qword_10000C9C0, &qword_100007268) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = l;
  v15[3] = configuration;
  v15[4] = role;
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
  lCopy = l;
  configurationCopy = configuration;
  roleCopy = role;
  selfCopy = self;
  sub_1000024E8(0, 0, v13, &unk_1000072F0, v18);
}

- (void)switcherConfigurationForBundleAtURL:(NSURL *)l currentSwitcherConfiguration:(PRSHostConfiguration *)configuration forRole:(NSString *)role completion:(id)completion
{
  v11 = (*(*(sub_100001F80(&qword_10000C9C0, &qword_100007268) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = l;
  v15[3] = configuration;
  v15[4] = role;
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
  lCopy = l;
  configurationCopy = configuration;
  roleCopy = role;
  selfCopy = self;
  sub_1000024E8(0, 0, v13, &unk_100007298, v18);
}

- (_TtC34PosterPlatformSupportBundleService16PPSBundleService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PPSBundleService();
  return [(PPSBundleService *)&v3 init];
}

@end