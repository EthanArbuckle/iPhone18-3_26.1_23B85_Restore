@interface AXDeviceRemoteScreenUtil
+ (AXDeviceRemoteScreenUtil)sharedInstance;
+ (NSString)AXWatchRemoteScreenFeatureDomain;
+ (NSString)AXWatchRemoteScreenFeatureKey;
- (BOOL)isPairedGizmoSupportedWithDeviceID:(id)d;
- (BOOL)isTwiceFeatureOn;
- (id)currentPairedGizmo;
- (id)localizedStingStringWithKey:(id)key;
- (id)localizedStringWithKey:(id)key;
- (id)pairedGizmoName;
- (void)logInactiveSession;
- (void)logSessionErrorWithErrorName:(id)name;
- (void)logSessionIntervalBeforeDate:(id)date afterDate:(id)afterDate;
@end

@implementation AXDeviceRemoteScreenUtil

+ (AXDeviceRemoteScreenUtil)sharedInstance
{
  if (qword_2814FB9E0 != -1)
  {
    swift_once();
  }

  v3 = qword_2814FB9E8;

  return v3;
}

+ (NSString)AXWatchRemoteScreenFeatureDomain
{
  v2 = sub_23D6C6058();

  return v2;
}

+ (NSString)AXWatchRemoteScreenFeatureKey
{
  v2 = sub_23D6C6058();

  return v2;
}

- (BOOL)isTwiceFeatureOn
{
  v4[3] = &type metadata for AXDeviceRemoteScreenUtil.AXWatchRemoteScreenFeatureFlags;
  v4[4] = sub_23D6C4E9C();
  v2 = sub_23D6C5FE8();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

- (id)localizedStringWithKey:(id)key
{
  swift_getObjectType();
  sub_23D6C6068();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  selfCopy = self;
  bundleForClass_ = [v5 bundleForClass_];
  v8 = sub_23D6C6058();
  v9 = sub_23D6C6058();
  v10 = [bundleForClass_ localizedStringForKey:v8 value:0 table:v9];

  sub_23D6C6068();

  v11 = sub_23D6C6058();

  return v11;
}

- (id)localizedStingStringWithKey:(id)key
{
  sub_23D6C6068();
  selfCopy = self;
  _s27AXWatchRemoteScreenServices08AXDevicebC4UtilC20localizedStingString3keyS2S_tF_0();

  v5 = sub_23D6C6058();

  return v5;
}

- (BOOL)isPairedGizmoSupportedWithDeviceID:(id)d
{
  sub_23D6C6068();
  selfCopy = self;
  v5 = _s27AXWatchRemoteScreenServices08AXDevicebC4UtilC22isPairedGizmoSupported8deviceIDSbSS_tF_0();

  return v5 & 1;
}

- (id)pairedGizmoName
{
  _s27AXWatchRemoteScreenServices08AXDevicebC4UtilC15pairedGizmoNameSSSgyF_0();
  if (v2)
  {
    v3 = sub_23D6C6058();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)currentPairedGizmo
{
  v2 = sub_23D6C4FD0();

  return v2;
}

- (void)logSessionIntervalBeforeDate:(id)date afterDate:(id)afterDate
{
  v5 = sub_23D6C5F98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  sub_23D6C5F88();
  sub_23D6C5F88();
  selfCopy = self;
  sub_23D6C5F78();
  v15 = v14;
  sub_23D6C5F78();
  v17 = v15 - v16;
  v18 = *(selfCopy + OBJC_IVAR___AXDeviceRemoteScreenUtil_caSessionIntervalEvent);
  v19 = *(selfCopy + OBJC_IVAR___AXDeviceRemoteScreenUtil_caSessionIntervalEvent + 8);
  v20 = sub_23D6C6058();
  v21 = swift_allocObject();
  *(v21 + 16) = selfCopy;
  *(v21 + 24) = v17;
  aBlock[4] = sub_23D6C5EA4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6BC530;
  aBlock[3] = &block_descriptor_38;
  v22 = _Block_copy(aBlock);
  v23 = selfCopy;

  AnalyticsSendEventLazy();
  _Block_release(v22);

  v24 = *(v6 + 8);
  v24(v10, v5);
  v24(v12, v5);
}

- (void)logSessionErrorWithErrorName:(id)name
{
  v4 = sub_23D6C6068();
  v6 = v5;
  v7 = *(self + OBJC_IVAR___AXDeviceRemoteScreenUtil_caErrorEvent);
  v8 = *(self + OBJC_IVAR___AXDeviceRemoteScreenUtil_caErrorEvent + 8);
  selfCopy = self;
  v10 = sub_23D6C6058();
  v11 = swift_allocObject();
  v11[2] = selfCopy;
  v11[3] = v4;
  v11[4] = v6;
  v14[4] = sub_23D6C5EC0;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_23D6BC530;
  v14[3] = &block_descriptor_31;
  v12 = _Block_copy(v14);
  v13 = selfCopy;

  AnalyticsSendEventLazy();

  _Block_release(v12);
}

- (void)logInactiveSession
{
  v2 = *(self + OBJC_IVAR___AXDeviceRemoteScreenUtil_caInactiveEvent);
  v3 = *(self + OBJC_IVAR___AXDeviceRemoteScreenUtil_caInactiveEvent + 8);
  selfCopy = self;
  v5 = sub_23D6C6058();
  v6 = swift_allocObject();
  *(v6 + 16) = selfCopy;
  v9[4] = sub_23D6C5EB0;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_23D6BC530;
  v9[3] = &block_descriptor_24;
  v7 = _Block_copy(v9);
  v8 = selfCopy;

  AnalyticsSendEventLazy();

  _Block_release(v7);
}

@end