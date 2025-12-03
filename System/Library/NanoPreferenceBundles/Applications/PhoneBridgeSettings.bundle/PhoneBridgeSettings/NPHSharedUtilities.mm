@interface NPHSharedUtilities
+ (BOOL)isActiveDeviceTinker;
+ (BOOL)isActiveWatchChinaRegionCellular;
+ (BOOL)pairedDeviceHasHomeButton;
@end

@implementation NPHSharedUtilities

+ (BOOL)isActiveDeviceTinker
{
  v2 = +[PDRDevice activeDevice];
  isTinker = [v2 isTinker];

  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[NPHSharedUtilities isActiveDeviceTinker]";
    v8 = 1024;
    v9 = isTinker;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s : %d", &v6, 0x12u);
  }

  return isTinker;
}

+ (BOOL)pairedDeviceHasHomeButton
{
  if (qword_C670 != -1)
  {
    sub_341C();
  }

  return byte_C678;
}

+ (BOOL)isActiveWatchChinaRegionCellular
{
  v2 = +[PDRDevice activeDevice];
  v3 = [v2 valueForProperty:PDRDevicePropertyKeyGreenTeaDevice];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end