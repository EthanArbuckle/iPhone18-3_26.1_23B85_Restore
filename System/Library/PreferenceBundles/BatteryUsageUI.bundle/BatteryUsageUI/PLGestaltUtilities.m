@interface PLGestaltUtilities
+ (BOOL)has5G;
+ (BOOL)hasANE;
+ (BOOL)hasAOP;
+ (BOOL)hasAOP2;
+ (BOOL)hasAOT;
+ (BOOL)hasAlwaysListening;
+ (BOOL)hasBaseband;
+ (BOOL)hasBattery;
+ (BOOL)hasBatteryModuleAuth;
+ (BOOL)hasDCP;
+ (BOOL)hasDynamicChargingLimit;
+ (BOOL)hasFixedChargingLimit;
+ (BOOL)hasGasGauge;
+ (BOOL)hasInductiveCharging;
+ (BOOL)hasLPEM;
+ (BOOL)hasLPM;
+ (BOOL)hasLPW;
+ (BOOL)hasMesa;
+ (BOOL)hasNFC;
+ (BOOL)hasOrb;
+ (BOOL)hasPearl;
+ (BOOL)hasPerseus;
+ (BOOL)hasPlatinum;
+ (BOOL)hasRearALS;
+ (BOOL)hasWirelessCharger;
+ (BOOL)hasWristTemperature;
+ (BOOL)is64Bit;
+ (BOOL)isDevBoard;
+ (BOOL)isVirtualDevice;
+ (id)getBasebandChipset;
+ (id)getBasebandFirmwareVersion;
+ (id)getBuildVersion;
+ (id)getHardwareModel;
+ (id)getHardwarePlatform;
+ (id)getInverseDeviceID;
+ (id)getProductType;
+ (id)getUserAssignedDeviceName;
+ (id)getWifiChipset;
+ (int)getDeviceClass;
+ (int)getNumberOfDCPEXT;
+ (int)getProductTypeCode;
@end

@implementation PLGestaltUtilities

+ (BOOL)hasAlwaysListening
{
  if (qword_1878E8 != -1)
  {
    sub_10F3E4();
  }

  return byte_1878E0;
}

+ (BOOL)hasANE
{
  if (qword_1878F8 != -1)
  {
    sub_10F3F8();
  }

  return byte_1878F0;
}

+ (BOOL)hasAOP
{
  if (qword_187908 != -1)
  {
    sub_10F40C();
  }

  return byte_187900;
}

+ (BOOL)hasAOP2
{
  if (qword_187918 != -1)
  {
    sub_10F420();
  }

  return byte_187910;
}

+ (BOOL)hasAOT
{
  if (qword_187928 != -1)
  {
    sub_10F434();
  }

  return byte_187920;
}

+ (BOOL)hasBattery
{
  if (qword_187938 != -1)
  {
    sub_10F448();
  }

  return byte_187930;
}

+ (BOOL)hasBatteryModuleAuth
{
  if (qword_187948 != -1)
  {
    sub_10F45C();
  }

  return byte_187940;
}

+ (BOOL)hasBaseband
{
  if (qword_187958 != -1)
  {
    sub_10F470();
  }

  return byte_187950;
}

+ (BOOL)hasDCP
{
  if (qword_187968 != -1)
  {
    sub_10F484();
  }

  return byte_187960;
}

+ (BOOL)hasDynamicChargingLimit
{
  if (qword_187978 != -1)
  {
    sub_10F498();
  }

  return byte_187970;
}

+ (BOOL)hasFixedChargingLimit
{
  if (qword_187988 != -1)
  {
    sub_10F4AC();
  }

  return byte_187980;
}

+ (BOOL)hasGasGauge
{
  if (qword_187998 != -1)
  {
    sub_10F4C0();
  }

  return byte_187990;
}

+ (BOOL)hasInductiveCharging
{
  if (qword_1879A8 != -1)
  {
    sub_10F4D4();
  }

  return byte_1879A0;
}

+ (BOOL)hasLPEM
{
  if (qword_1879B8 != -1)
  {
    sub_10F4E8();
  }

  return byte_1879B0;
}

+ (BOOL)hasLPM
{
  if (qword_1879C8 != -1)
  {
    sub_10F4FC();
  }

  return byte_1879C0;
}

+ (BOOL)hasLPW
{
  if (qword_1879D8 != -1)
  {
    sub_10F510();
  }

  return byte_1879D0;
}

+ (BOOL)hasMesa
{
  if (qword_1879E8 != -1)
  {
    sub_10F524();
  }

  return byte_1879E0;
}

+ (BOOL)hasNFC
{
  if (qword_1879F8 != -1)
  {
    sub_10F538();
  }

  return byte_1879F0;
}

+ (BOOL)hasOrb
{
  if (qword_187A08 != -1)
  {
    sub_10F54C();
  }

  return byte_187A00;
}

+ (BOOL)hasPearl
{
  if (qword_187A18 != -1)
  {
    sub_10F560();
  }

  return byte_187A10;
}

+ (BOOL)hasPerseus
{
  if (qword_187A28 != -1)
  {
    sub_10F574();
  }

  return byte_187A20;
}

+ (BOOL)hasRearALS
{
  if (qword_187A38 != -1)
  {
    sub_10F588();
  }

  return byte_187A30;
}

+ (BOOL)hasPlatinum
{
  if (qword_187A48 != -1)
  {
    sub_10F59C();
  }

  return byte_187A40;
}

+ (BOOL)hasWirelessCharger
{
  if (qword_187A58 != -1)
  {
    sub_10F5B0();
  }

  return byte_187A50;
}

+ (BOOL)hasWristTemperature
{
  if (qword_187A68 != -1)
  {
    sub_10F5C4();
  }

  return byte_187A60;
}

+ (BOOL)has5G
{
  if (qword_187A78 != -1)
  {
    sub_10F5D8();
  }

  return byte_187A70;
}

+ (BOOL)is64Bit
{
  if (qword_187A88 != -1)
  {
    sub_10F5EC();
  }

  return byte_187A80;
}

+ (BOOL)isDevBoard
{
  if (qword_187A98 != -1)
  {
    sub_10F600();
  }

  return byte_187A90;
}

+ (BOOL)isVirtualDevice
{
  if (qword_187AA8 != -1)
  {
    sub_10F614();
  }

  return byte_187AA0;
}

+ (id)getUserAssignedDeviceName
{
  if (qword_187AB8 != -1)
  {
    sub_10F628();
  }

  v3 = qword_187AB0;

  return v3;
}

+ (id)getBasebandFirmwareVersion
{
  if (qword_187AC8 != -1)
  {
    sub_10F63C();
  }

  v3 = qword_187AC0;

  return v3;
}

+ (id)getBasebandChipset
{
  if (qword_187AD8 != -1)
  {
    sub_10F650();
  }

  v3 = qword_187AD0;

  return v3;
}

+ (id)getBuildVersion
{
  if (qword_187AE8 != -1)
  {
    sub_10F664();
  }

  v3 = qword_187AE0;

  return v3;
}

+ (id)getHardwareModel
{
  if (qword_187AF8 != -1)
  {
    sub_10F678();
  }

  v2 = [qword_187AF0 length];
  v3 = [qword_187AF0 hasSuffix:@"AP"];
  v4 = qword_187AF0;
  if (v3)
  {
    v5 = -2;
  }

  else
  {
    if (![qword_187AF0 hasSuffix:@"DEV"])
    {
      goto LABEL_8;
    }

    v4 = qword_187AF0;
    v5 = -3;
  }

  v2 = [v4 length] + v5;
LABEL_8:
  v6 = qword_187AF0;

  return [v6 substringWithRange:{0, v2}];
}

+ (id)getHardwarePlatform
{
  if (qword_187B08 != -1)
  {
    sub_10F68C();
  }

  v3 = qword_187B00;

  return v3;
}

+ (id)getInverseDeviceID
{
  if (qword_187B18 != -1)
  {
    sub_10F6A0();
  }

  v3 = qword_187B10;

  return v3;
}

+ (id)getProductType
{
  if (qword_187B28 != -1)
  {
    sub_10F6B4();
  }

  v3 = qword_187B20;

  return v3;
}

+ (id)getWifiChipset
{
  if (qword_187B38 != -1)
  {
    sub_10F6C8();
  }

  v3 = qword_187B30;

  return v3;
}

+ (int)getDeviceClass
{
  if (qword_187B40 != -1)
  {
    sub_10F6DC();
  }

  return dword_1829A0;
}

+ (int)getNumberOfDCPEXT
{
  if (qword_187B48 != -1)
  {
    sub_10F6F0();
  }

  return -1;
}

+ (int)getProductTypeCode
{
  if (qword_187B50 != -1)
  {
    sub_10F704();
  }

  return dword_1829A4;
}

@end