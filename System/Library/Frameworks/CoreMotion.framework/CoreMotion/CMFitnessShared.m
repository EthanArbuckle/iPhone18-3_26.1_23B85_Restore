@interface CMFitnessShared
+ (BOOL)isDeviceSatellitePaired;
@end

@implementation CMFitnessShared

+ (BOOL)isDeviceSatellitePaired
{
  v2 = objc_opt_class();
  if (v2)
  {
    v5 = objc_msgSend_sharedInstance(MEMORY[0x1E69B7D98], v3, v4);
    active = objc_msgSend_activeDeviceSelectorBlock(MEMORY[0x1E69B7D98], v6, v7);
    AllDevicesWithArchivedAltAccountDevicesMatching = objc_msgSend_getAllDevicesWithArchivedAltAccountDevicesMatching_(v5, v9, active);
    Object = objc_msgSend_firstObject(AllDevicesWithArchivedAltAccountDevicesMatching, v11, v12);
    v15 = objc_msgSend_valueForProperty_(Object, v14, *MEMORY[0x1E69B7DA8]);

    LOBYTE(v2) = objc_msgSend_BOOLValue(v15, v16, v17);
  }

  return v2;
}

@end