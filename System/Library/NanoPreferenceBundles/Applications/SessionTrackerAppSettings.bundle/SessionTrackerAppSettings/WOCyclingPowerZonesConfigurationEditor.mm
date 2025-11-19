@interface WOCyclingPowerZonesConfigurationEditor
+ (BOOL)isManualZonesEqualToAutomaticUsing:(id)a3;
+ (id)allSupportedSizes;
+ (id)changeConfigurationTypeTo:(int64_t)a3 using:(id)a4;
+ (id)changeFunctionalThresholdPowerTo:(double)a3 using:(id)a4;
+ (id)changeZonesSizeTo:(int64_t)a3 using:(id)a4;
+ (id)resetManualZonesUsing:(id)a3;
- (WOCyclingPowerZonesConfigurationEditor)init;
@end

@implementation WOCyclingPowerZonesConfigurationEditor

+ (id)changeFunctionalThresholdPowerTo:(double)a3 using:(id)a4
{
  v5 = sub_22254();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_22654();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22714();
  sub_225A4();
  (*(v8 + 104))(v11, enum case for FunctionalThresholdPowerSource.other(_:), v7);
  v12 = a4;
  sub_22234();
  sub_22584();
  v13 = *&v12[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration];
  v14 = sub_226C4();

  v15 = type metadata accessor for CyclingPowerZonesConfigurationBridge();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = v14;
  v19.receiver = v16;
  v19.super_class = v15;
  v17 = objc_msgSendSuper2(&v19, "init");

  return v17;
}

+ (id)changeConfigurationTypeTo:(int64_t)a3 using:(id)a4
{
  v5 = a4;
  v6 = _s25SessionTrackerAppSettings42CyclingPowerZonesConfigurationEditorBridgeC06changeH4Type2to5usingAA0efghJ0CAA0efghlJ0O_AHtFZ_0(a3, v5);

  return v6;
}

+ (id)changeZonesSizeTo:(int64_t)a3 using:(id)a4
{
  v5 = sub_224A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22714();
  v10 = a4;
  sub_22474();
  v11 = *&v10[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration];
  v12 = sub_226D4();
  (*(v6 + 8))(v9, v5);
  v13 = type metadata accessor for CyclingPowerZonesConfigurationBridge();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = v12;
  v17.receiver = v14;
  v17.super_class = v13;

  v15 = objc_msgSendSuper2(&v17, "init");

  return v15;
}

+ (id)resetManualZonesUsing:(id)a3
{
  sub_22714();
  v4 = *(a3 + OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration);
  v5 = a3;
  v6 = sub_226B4();
  v7 = type metadata accessor for CyclingPowerZonesConfigurationBridge();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration] = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  v9 = objc_msgSendSuper2(&v11, "init");

  return v9;
}

+ (id)allSupportedSizes
{
  _s25SessionTrackerAppSettings42CyclingPowerZonesConfigurationEditorBridgeC17allSupportedSizesSaySiGyFZ_0();
  v2.super.isa = sub_228C4().super.isa;

  return v2.super.isa;
}

+ (BOOL)isManualZonesEqualToAutomaticUsing:(id)a3
{
  sub_22714();
  v4 = *(a3 + OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration);
  v5 = a3;
  v6 = sub_226F4();

  return v6 & 1;
}

- (WOCyclingPowerZonesConfigurationEditor)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CyclingPowerZonesConfigurationEditorBridge();
  return [(WOCyclingPowerZonesConfigurationEditor *)&v3 init];
}

@end