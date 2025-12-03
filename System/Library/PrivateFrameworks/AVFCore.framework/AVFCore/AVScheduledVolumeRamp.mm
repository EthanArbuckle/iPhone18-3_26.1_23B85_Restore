@interface AVScheduledVolumeRamp
+ (id)_defaultAdditionalFigRepresentationObjects;
+ (id)volumeRampWithStartVolume:(float)volume endVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode;
- (AVScheduledVolumeRamp)initWithPropertyList:(id)list;
- (AVScheduledVolumeRamp)initWithStartVolume:(float)volume endVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode;
- (float)endVolume;
- (float)startVolume;
- (id)_additionalFigRepresentationObjects;
- (id)_makeRampWithTruncatedTimeRange:(id *)range endValue:(float)value;
- (id)propertyList;
@end

@implementation AVScheduledVolumeRamp

+ (id)_defaultAdditionalFigRepresentationObjects
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = [MEMORY[0x1E696AEC0] stringWithString:*MEMORY[0x1E6972418]];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

+ (id)volumeRampWithStartVolume:(float)volume endVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode
{
  v10 = objc_alloc(objc_opt_class());
  v11 = *&range->var0.var3;
  v13[0] = *&range->var0.var0;
  v13[1] = v11;
  *&v11 = endVolume;
  return [v10 initWithStartVolume:v13 endVolume:mode timeRange:COERCE_DOUBLE(__PAIR64__(HIDWORD(*&range->var1.var1) rampMode:{LODWORD(volume))), *&v11}];
}

- (AVScheduledVolumeRamp)initWithStartVolume:(float)volume endVolume:(float)endVolume timeRange:(id *)range rampMode:(int64_t)mode
{
  v10.receiver = self;
  v10.super_class = AVScheduledVolumeRamp;
  v7 = *&range->var0.var3;
  v9[0] = *&range->var0.var0;
  v9[1] = v7;
  v9[2] = *&range->var1.var1;
  result = [AVScheduledFloatValueRamp initWithStartValue:sel_initWithStartValue_endValue_timeRange_ endValue:v9 timeRange:?];
  if (result)
  {
    result->_rampMode = mode;
  }

  return result;
}

- (float)startVolume
{
  v3.receiver = self;
  v3.super_class = AVScheduledVolumeRamp;
  [(AVScheduledFloatValueRamp *)&v3 startFloatValue];
  return result;
}

- (float)endVolume
{
  v3.receiver = self;
  v3.super_class = AVScheduledVolumeRamp;
  [(AVScheduledFloatValueRamp *)&v3 endFloatValue];
  return result;
}

- (id)_additionalFigRepresentationObjects
{
  v5[1] = *MEMORY[0x1E69E9840];
  rampMode = [(AVScheduledVolumeRamp *)self rampMode];
  v3 = MEMORY[0x1E6972410];
  if (rampMode != 1)
  {
    v3 = MEMORY[0x1E6972418];
  }

  v5[0] = [MEMORY[0x1E696AEC0] stringWithString:*v3];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
}

- (id)_makeRampWithTruncatedTimeRange:(id *)range endValue:(float)value
{
  v7 = objc_opt_class();
  [(AVScheduledVolumeRamp *)self startVolume];
  v9 = v8;
  rampMode = [(AVScheduledVolumeRamp *)self rampMode];
  v11 = *&range->var0.var3;
  v13[0] = *&range->var0.var0;
  v13[1] = v11;
  *&v11 = value;
  return [v7 volumeRampWithStartVolume:v13 endVolume:rampMode timeRange:COERCE_DOUBLE(__PAIR64__(HIDWORD(*&range->var1.var1) rampMode:{v9)), *&v11}];
}

- (AVScheduledVolumeRamp)initWithPropertyList:(id)list
{
  v6.receiver = self;
  v6.super_class = AVScheduledVolumeRamp;
  v4 = [(AVScheduledFloatValueRamp *)&v6 initWithPropertyList:?];
  if (v4)
  {
    v4->_rampMode = [objc_msgSend(list objectForKey:{@"rampMode", "integerValue"}];
  }

  return v4;
}

- (id)propertyList
{
  v5.receiver = self;
  v5.super_class = AVScheduledVolumeRamp;
  propertyList = [(AVScheduledFloatValueRamp *)&v5 propertyList];
  [propertyList setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[AVScheduledVolumeRamp rampMode](self, "rampMode")), @"rampMode"}];
  return propertyList;
}

@end