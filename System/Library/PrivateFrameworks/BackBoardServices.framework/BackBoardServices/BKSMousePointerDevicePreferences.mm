@interface BKSMousePointerDevicePreferences
+ (id)defaultPreferencesForHardwareType:(int64_t)a3;
+ (id)protobufSchema;
- (BKSMousePointerDevicePreferences)init;
- (BKSMousePointerDevicePreferences)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)didFinishProtobufDecodingWithError:(id *)a3;
- (unint64_t)hash;
- (void)_fixMissingButtonConfigurations;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSMousePointerDevicePreferences

- (void)_fixMissingButtonConfigurations
{
  if (!self->_buttonConfigurationForVirtualButtonMice)
  {
    self->_buttonConfigurationForVirtualButtonMice = 1;
  }

  if (!self->_buttonConfigurationForHardwareButtonMice)
  {
    self->_buttonConfigurationForHardwareButtonMice = 2;
  }
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v7.receiver = self;
  v7.super_class = BKSMousePointerDevicePreferences;
  v4 = [(BKSMousePointerDevicePreferences *)&v7 description];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@" ptrAccel:%g scrollAceel:%g enableTapToClick:%d enableTwoFingerSecondaryClick:%d doubleTapDragMode:%d enableNaturalScrolling:%d virtualButtonConfig:%d, hardwareButtonConfig:%d", self->_pointerAccelerationFactor, self->_scrollAccelerationFactor, self->_enableTapToClick, self->_enableTwoFingerSecondaryClick, self->_doubleTapDragMode, self->_enableNaturalScrolling, self->_buttonConfigurationForVirtualButtonMice, self->_buttonConfigurationForHardwareButtonMice];
  [v5 appendFormat:@" clickHapticStrength:%d", self->_clickHapticStrength];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_pointerAccelerationFactor == v4->_pointerAccelerationFactor && self->_scrollAccelerationFactor == v4->_scrollAccelerationFactor && self->_enableTapToClick == v4->_enableTapToClick && self->_enableTwoFingerSecondaryClick == v4->_enableTwoFingerSecondaryClick && self->_clickHapticStrength == v4->_clickHapticStrength && self->_enableNaturalScrolling == v4->_enableNaturalScrolling && self->_doubleTapDragMode == v4->_doubleTapDragMode && self->_buttonConfigurationForVirtualButtonMice == v4->_buttonConfigurationForVirtualButtonMice && self->_buttonConfigurationForHardwareButtonMice == v4->_buttonConfigurationForHardwareButtonMice;
  }

  return v6;
}

- (unint64_t)hash
{
  *&v2 = self->_pointerAccelerationFactor;
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v4 = [v3 hash];

  return v4;
}

- (id)didFinishProtobufDecodingWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  [(BKSMousePointerDevicePreferences *)self _fixMissingButtonConfigurations];
  return self;
}

- (BKSMousePointerDevicePreferences)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BKSMousePointerDevicePreferences *)self init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"t:1"];
    v5->_pointerAccelerationFactor = v6;
    [v4 decodeFloatForKey:@"t:2"];
    v5->_scrollAccelerationFactor = v7;
    v5->_enableTapToClick = [v4 decodeBoolForKey:@"t:3"];
    v5->_enableTwoFingerSecondaryClick = [v4 decodeBoolForKey:@"t:4"];
    v5->_doubleTapDragMode = [v4 decodeIntegerForKey:@"t:8"];
    v5->_buttonConfigurationForVirtualButtonMice = [v4 decodeIntegerForKey:@"t:6"];
    v5->_buttonConfigurationForHardwareButtonMice = [v4 decodeIntegerForKey:@"t:7"];
    if ([v4 containsValueForKey:@"t:5"])
    {
      v5->_enableNaturalScrolling = [v4 decodeBoolForKey:@"t:5"];
    }

    if ([v4 containsValueForKey:@"t:9"])
    {
      v5->_clickHapticStrength = [v4 decodeIntegerForKey:@"t:9"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  pointerAccelerationFactor = self->_pointerAccelerationFactor;
  v5 = a3;
  *&v6 = pointerAccelerationFactor;
  [v5 encodeFloat:@"t:1" forKey:v6];
  *&v7 = self->_scrollAccelerationFactor;
  [v5 encodeFloat:@"t:2" forKey:v7];
  [v5 encodeBool:self->_enableTapToClick forKey:@"t:3"];
  [v5 encodeBool:self->_enableTwoFingerSecondaryClick forKey:@"t:4"];
  [v5 encodeInteger:self->_doubleTapDragMode forKey:@"t:8"];
  [v5 encodeBool:self->_enableNaturalScrolling forKey:@"t:5"];
  [v5 encodeInteger:self->_buttonConfigurationForVirtualButtonMice forKey:@"t:6"];
  [v5 encodeInteger:self->_buttonConfigurationForHardwareButtonMice forKey:@"t:7"];
  [v5 encodeInteger:self->_clickHapticStrength forKey:@"t:9"];

  [(BKSMousePointerDevicePreferences *)self _fixMissingButtonConfigurations];
}

- (BKSMousePointerDevicePreferences)init
{
  v3.receiver = self;
  v3.super_class = BKSMousePointerDevicePreferences;
  result = [(BKSMousePointerDevicePreferences *)&v3 init];
  if (result)
  {
    *&result->_pointerAccelerationFactor = 0x3EA000003F800000;
    result->_enableTwoFingerSecondaryClick = 1;
    *&result->_enableNaturalScrolling = 1;
    result->_clickHapticStrength = 0;
    result->_doubleTapDragMode = 0;
  }

  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__BKSMousePointerDevicePreferences_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_8387 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_8387, block);
  }

  v2 = protobufSchema_schema_8388;

  return v2;
}

uint64_t __50__BKSMousePointerDevicePreferences_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_8388 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_8390];

  return MEMORY[0x1EEE66BB8]();
}

void __50__BKSMousePointerDevicePreferences_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_pointerAccelerationFactor" forTag:1];
  [v2 addField:"_scrollAccelerationFactor" forTag:2];
  [v2 addField:"_enableTapToClick" forTag:3];
  [v2 addField:"_enableTwoFingerSecondaryClick" forTag:4];
  [v2 addField:"_enableNaturalScrolling" forTag:5];
  [v2 addField:"_buttonConfigurationForVirtualButtonMice" forTag:6];
  [v2 addField:"_buttonConfigurationForHardwareButtonMice" forTag:7];
  [v2 addField:"_doubleTapDragMode" forTag:8];
  [v2 addField:"_clickHapticStrength" forTag:9];
}

+ (id)defaultPreferencesForHardwareType:(int64_t)a3
{
  v4 = objc_alloc_init(BKSMousePointerDevicePreferences);
  [(BKSMousePointerDevicePreferences *)v4 setButtonConfigurationForVirtualButtonMice:1];
  [(BKSMousePointerDevicePreferences *)v4 setButtonConfigurationForHardwareButtonMice:2];
  [(BKSMousePointerDevicePreferences *)v4 setClickHapticStrength:0];
  LODWORD(v5) = 1.0;
  [(BKSMousePointerDevicePreferences *)v4 setPointerAccelerationFactor:v5];
  LODWORD(v6) = 0.3125;
  [(BKSMousePointerDevicePreferences *)v4 setScrollAccelerationFactor:v6];
  [(BKSMousePointerDevicePreferences *)v4 setEnableTapToClick:0];
  [(BKSMousePointerDevicePreferences *)v4 setEnableTwoFingerSecondaryClick:a3 == 9];
  [(BKSMousePointerDevicePreferences *)v4 setDoubleTapDragMode:0];
  [(BKSMousePointerDevicePreferences *)v4 setEnableNaturalScrolling:1];

  return v4;
}

@end