@interface AVScheduledVolumeRamp
+ (id)_defaultAdditionalFigRepresentationObjects;
+ (id)volumeRampWithStartVolume:(float)a3 endVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6;
- (AVScheduledVolumeRamp)initWithPropertyList:(id)a3;
- (AVScheduledVolumeRamp)initWithStartVolume:(float)a3 endVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6;
- (float)endVolume;
- (float)startVolume;
- (id)_additionalFigRepresentationObjects;
- (id)_makeRampWithTruncatedTimeRange:(id *)a3 endValue:(float)a4;
- (id)propertyList;
@end

@implementation AVScheduledVolumeRamp

+ (id)_defaultAdditionalFigRepresentationObjects
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = [MEMORY[0x1E696AEC0] stringWithString:*MEMORY[0x1E6972418]];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

+ (id)volumeRampWithStartVolume:(float)a3 endVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6
{
  v10 = objc_alloc(objc_opt_class());
  v11 = *&a5->var0.var3;
  v13[0] = *&a5->var0.var0;
  v13[1] = v11;
  *&v11 = a4;
  return [v10 initWithStartVolume:v13 endVolume:a6 timeRange:COERCE_DOUBLE(__PAIR64__(HIDWORD(*&a5->var1.var1) rampMode:{LODWORD(a3))), *&v11}];
}

- (AVScheduledVolumeRamp)initWithStartVolume:(float)a3 endVolume:(float)a4 timeRange:(id *)a5 rampMode:(int64_t)a6
{
  v10.receiver = self;
  v10.super_class = AVScheduledVolumeRamp;
  v7 = *&a5->var0.var3;
  v9[0] = *&a5->var0.var0;
  v9[1] = v7;
  v9[2] = *&a5->var1.var1;
  result = [AVScheduledFloatValueRamp initWithStartValue:sel_initWithStartValue_endValue_timeRange_ endValue:v9 timeRange:?];
  if (result)
  {
    result->_rampMode = a6;
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
  v2 = [(AVScheduledVolumeRamp *)self rampMode];
  v3 = MEMORY[0x1E6972410];
  if (v2 != 1)
  {
    v3 = MEMORY[0x1E6972418];
  }

  v5[0] = [MEMORY[0x1E696AEC0] stringWithString:*v3];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
}

- (id)_makeRampWithTruncatedTimeRange:(id *)a3 endValue:(float)a4
{
  v7 = objc_opt_class();
  [(AVScheduledVolumeRamp *)self startVolume];
  v9 = v8;
  v10 = [(AVScheduledVolumeRamp *)self rampMode];
  v11 = *&a3->var0.var3;
  v13[0] = *&a3->var0.var0;
  v13[1] = v11;
  *&v11 = a4;
  return [v7 volumeRampWithStartVolume:v13 endVolume:v10 timeRange:COERCE_DOUBLE(__PAIR64__(HIDWORD(*&a3->var1.var1) rampMode:{v9)), *&v11}];
}

- (AVScheduledVolumeRamp)initWithPropertyList:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVScheduledVolumeRamp;
  v4 = [(AVScheduledFloatValueRamp *)&v6 initWithPropertyList:?];
  if (v4)
  {
    v4->_rampMode = [objc_msgSend(a3 objectForKey:{@"rampMode", "integerValue"}];
  }

  return v4;
}

- (id)propertyList
{
  v5.receiver = self;
  v5.super_class = AVScheduledVolumeRamp;
  v3 = [(AVScheduledFloatValueRamp *)&v5 propertyList];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[AVScheduledVolumeRamp rampMode](self, "rampMode")), @"rampMode"}];
  return v3;
}

@end