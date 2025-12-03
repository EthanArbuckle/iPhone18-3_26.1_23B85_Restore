@interface SFSafariSettings
+ (void)openExportBrowsingDataSettingsWithCompletionHandler:(id)handler;
- (SFSafariSettings)init;
@end

@implementation SFSafariSettings

+ (void)openExportBrowsingDataSettingsWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE08);
  MEMORY[0x1EEE9AC00]();
  v6 = &v12 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_1D47BF360();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1D47DFAC8;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1D47DFAD8;
  v11[5] = v10;
  sub_1D47A248C(0, 0, v6, &unk_1D47DFAE8, v11);
}

- (SFSafariSettings)init
{
  v3.receiver = self;
  v3.super_class = SFSafariSettings;
  return [(SFSafariSettings *)&v3 init];
}

@end