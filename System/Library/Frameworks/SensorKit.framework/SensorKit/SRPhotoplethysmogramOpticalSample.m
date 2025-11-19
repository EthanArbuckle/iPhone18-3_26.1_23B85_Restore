@interface SRPhotoplethysmogramOpticalSample
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOpticalSample:(id)a3;
- (NSMeasurement)effectiveWavelength;
- (NSMeasurement)nominalWavelength;
- (NSMeasurement)samplingFrequency;
- (SRPhotoplethysmogramOpticalSample)initWithCoder:(id)a3;
- (SRPhotoplethysmogramOpticalSample)initWithEmitter:(int64_t)a3 photodiodes:(id)a4 signalIdentifier:(int64_t)a5 nominalWavelength:(double)a6 effectiveWavelength:(double)a7 frequency:(double)a8 timestamp:(int64_t)a9 normalizedReflectance:(id)a10 whiteNoise:(id)a11 pinkNoise:(id)a12 backgroundNoise:(id)a13 backgrounNoiseOffset:(id)a14 conditions:(id)a15;
- (SRPhotoplethysmogramOpticalSample)initWithHAPPGOpticalSample:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRPhotoplethysmogramOpticalSample

- (SRPhotoplethysmogramOpticalSample)initWithEmitter:(int64_t)a3 photodiodes:(id)a4 signalIdentifier:(int64_t)a5 nominalWavelength:(double)a6 effectiveWavelength:(double)a7 frequency:(double)a8 timestamp:(int64_t)a9 normalizedReflectance:(id)a10 whiteNoise:(id)a11 pinkNoise:(id)a12 backgroundNoise:(id)a13 backgrounNoiseOffset:(id)a14 conditions:(id)a15
{
  v27.receiver = self;
  v27.super_class = SRPhotoplethysmogramOpticalSample;
  v24 = [(SRPhotoplethysmogramOpticalSample *)&v27 init];
  v25 = v24;
  if (v24)
  {
    v24->_emitter = a3;
    v24->_activePhotodiodeIndexes = a4;
    v25->_signalIdentifier = a5;
    v25->_rawNominalWavelength = a6;
    v25->_rawEffectiveWavelength = a7;
    v25->_rawFrequency = a8;
    v25->_nanosecondsSinceStart = a9;
    v25->_normalizedReflectance = a10;
    v25->_whiteNoise = a11;
    v25->_pinkNoise = a12;
    v25->_backgroundNoise = a13;
    v25->_backgroundNoiseOffset = a14;
    v25->_conditions = [a15 copy];
  }

  return v25;
}

- (SRPhotoplethysmogramOpticalSample)initWithHAPPGOpticalSample:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([a3 saturated])
  {
    [v4 addObject:@"SignalSaturation"];
  }

  if ([a3 noiseIsUnreliable])
  {
    [v4 addObject:@"UnreliableNoise"];
  }

  v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithBitfield:{objc_msgSend(a3, "photodiodes")}];
  v6 = [a3 emitter];
  v7 = [a3 hardwareSetting];
  v8 = [a3 nominalWavelength];
  [a3 effectiveWavelength];
  v10 = -[SRPhotoplethysmogramOpticalSample initWithEmitter:photodiodes:signalIdentifier:nominalWavelength:effectiveWavelength:frequency:timestamp:normalizedReflectance:whiteNoise:pinkNoise:backgroundNoise:backgrounNoiseOffset:conditions:](self, "initWithEmitter:photodiodes:signalIdentifier:nominalWavelength:effectiveWavelength:frequency:timestamp:normalizedReflectance:whiteNoise:pinkNoise:backgroundNoise:backgrounNoiseOffset:conditions:", v6, v5, v7, [a3 timestamp], objc_msgSend(a3, "normalizedReflectance"), objc_msgSend(a3, "estimatedDeviceWhiteNoise"), v8, v9, objc_msgSend(a3, "samplingFrequency"), objc_msgSend(a3, "estimatedDevicePinkNoise"), objc_msgSend(a3, "backgroundNoise"), objc_msgSend(a3, "estimatedDeviceNoiseOffset"), v4);

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRPhotoplethysmogramOpticalSample;
  [(SRPhotoplethysmogramOpticalSample *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(SRPhotoplethysmogramOpticalSample *)self isEqualToOpticalSample:a3];
}

- (BOOL)isEqualToOpticalSample:(id)a3
{
  if ((-[SRPhotoplethysmogramOpticalSample normalizedReflectance](self, "normalizedReflectance") || [a3 normalizedReflectance]) && !-[NSNumber isEqual:](-[SRPhotoplethysmogramOpticalSample normalizedReflectance](self, "normalizedReflectance"), "isEqual:", objc_msgSend(a3, "normalizedReflectance")))
  {
    return 0;
  }

  if ((-[SRPhotoplethysmogramOpticalSample whiteNoise](self, "whiteNoise") || [a3 whiteNoise]) && !-[NSNumber isEqual:](-[SRPhotoplethysmogramOpticalSample whiteNoise](self, "whiteNoise"), "isEqual:", objc_msgSend(a3, "whiteNoise")))
  {
    return 0;
  }

  if ((-[SRPhotoplethysmogramOpticalSample pinkNoise](self, "pinkNoise") || [a3 pinkNoise]) && !-[NSNumber isEqual:](-[SRPhotoplethysmogramOpticalSample pinkNoise](self, "pinkNoise"), "isEqual:", objc_msgSend(a3, "pinkNoise")))
  {
    return 0;
  }

  if ((-[SRPhotoplethysmogramOpticalSample backgroundNoise](self, "backgroundNoise") || [a3 backgroundNoise]) && !-[NSNumber isEqual:](-[SRPhotoplethysmogramOpticalSample backgroundNoise](self, "backgroundNoise"), "isEqual:", objc_msgSend(a3, "backgroundNoise")))
  {
    return 0;
  }

  if ((-[SRPhotoplethysmogramOpticalSample backgroundNoiseOffset](self, "backgroundNoiseOffset") || [a3 backgroundNoiseOffset]) && !-[NSNumber isEqual:](-[SRPhotoplethysmogramOpticalSample backgroundNoiseOffset](self, "backgroundNoiseOffset"), "isEqual:", objc_msgSend(a3, "backgroundNoiseOffset")))
  {
    return 0;
  }

  v5 = [(SRPhotoplethysmogramOpticalSample *)self emitter];
  if (v5 != [a3 emitter])
  {
    return 0;
  }

  if (!-[NSIndexSet isEqual:](-[SRPhotoplethysmogramOpticalSample activePhotodiodeIndexes](self, "activePhotodiodeIndexes"), "isEqual:", [a3 activePhotodiodeIndexes]))
  {
    return 0;
  }

  v6 = [(SRPhotoplethysmogramOpticalSample *)self signalIdentifier];
  if (v6 != [a3 signalIdentifier])
  {
    return 0;
  }

  if (!-[NSMeasurement isEqual:](-[SRPhotoplethysmogramOpticalSample nominalWavelength](self, "nominalWavelength"), "isEqual:", [a3 nominalWavelength]))
  {
    return 0;
  }

  if (!-[NSMeasurement isEqual:](-[SRPhotoplethysmogramOpticalSample effectiveWavelength](self, "effectiveWavelength"), "isEqual:", [a3 effectiveWavelength]))
  {
    return 0;
  }

  if (!-[NSMeasurement isEqual:](-[SRPhotoplethysmogramOpticalSample samplingFrequency](self, "samplingFrequency"), "isEqual:", [a3 samplingFrequency]))
  {
    return 0;
  }

  v7 = [(SRPhotoplethysmogramOpticalSample *)self nanosecondsSinceStart];
  if (v7 != [a3 nanosecondsSinceStart])
  {
    return 0;
  }

  v8 = [(SRPhotoplethysmogramOpticalSample *)self conditions];
  v9 = [a3 conditions];

  return [(NSArray *)v8 isEqual:v9];
}

- (unint64_t)hash
{
  v3 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_emitter), "hash"}];
  v4 = [(NSIndexSet *)self->_activePhotodiodeIndexes hash]^ v3;
  v5 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_signalIdentifier), "hash"}];
  v6 = v4 ^ v5 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_rawNominalWavelength), "hash"}];
  v7 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_rawEffectiveWavelength), "hash"}];
  v8 = v7 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_rawFrequency), "hash"}];
  v9 = v6 ^ v8 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithLongLong:{self->_nanosecondsSinceStart), "hash"}];
  v10 = [(NSNumber *)self->_normalizedReflectance hash];
  v11 = v10 ^ [(NSNumber *)self->_whiteNoise hash];
  v12 = v11 ^ [(NSNumber *)self->_pinkNoise hash];
  v13 = v12 ^ [(NSNumber *)self->_backgroundNoise hash];
  v14 = v13 ^ [(NSNumber *)self->_backgroundNoiseOffset hash];
  return v9 ^ v14 ^ [(NSArray *)self->_conditions hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *&self->_whiteNoise;
  return [v3 stringWithFormat:@"%@ (%p): emitter: %ld, photodiodes: %@, signalIdentifier: %ld, nominalWavelength: %f, effectiveWavelength: %f, frequency: %f, nanosecondsSinceStart: %lld, normalizedReflectance: %@, whiteNoise: %@, pinkNoise: %@, backgroundNoise: %@, noiseOffset: %@, conditions: %@", v5, self, self->_emitter, self->_activePhotodiodeIndexes, self->_signalIdentifier, *&self->_rawNominalWavelength, *&self->_rawEffectiveWavelength, *&self->_rawFrequency, self->_nanosecondsSinceStart, self->_normalizedReflectance, self->_whiteNoise, self->_pinkNoise, self->_backgroundNoise, self->_backgroundNoiseOffset, self->_conditions];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeInteger:self->_emitter forKey:@"emitter"];
  [a3 encodeObject:self->_activePhotodiodeIndexes forKey:@"photodiodes"];
  [a3 encodeInteger:self->_signalIdentifier forKey:@"hardwareSetting"];
  [a3 encodeDouble:@"nominalWavelength" forKey:self->_rawNominalWavelength];
  [a3 encodeDouble:@"effectiveWavelength" forKey:self->_rawEffectiveWavelength];
  [a3 encodeDouble:@"frequency" forKey:self->_rawFrequency];
  [a3 encodeInt64:self->_nanosecondsSinceStart forKey:@"nanosecondsSinceStart"];
  [a3 encodeObject:self->_normalizedReflectance forKey:@"normalizedReflectance"];
  [a3 encodeObject:self->_whiteNoise forKey:@"whiteNoise"];
  [a3 encodeObject:self->_pinkNoise forKey:@"pinkNoise"];
  [a3 encodeObject:self->_backgroundNoise forKey:@"backgroundNoise"];
  [a3 encodeObject:self->_backgroundNoiseOffset forKey:@"backgroundNoiseOffset"];
  conditions = self->_conditions;

  [a3 encodeObject:conditions forKey:@"conditions"];
}

- (SRPhotoplethysmogramOpticalSample)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v23 = [a3 decodeIntegerForKey:@"emitter"];
  v22 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"photodiodes"];
  v21 = [a3 decodeIntegerForKey:@"hardwareSetting"];
  [a3 decodeDoubleForKey:@"nominalWavelength"];
  v7 = v6;
  [a3 decodeDoubleForKey:@"effectiveWavelength"];
  v9 = v8;
  [a3 decodeDoubleForKey:@"frequency"];
  v11 = v10;
  v12 = [a3 decodeInt64ForKey:@"nanosecondsSinceStart"];
  v13 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"normalizedReflectance"];
  v14 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"whiteNoise"];
  v15 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"pinkNoise"];
  v16 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundNoise"];
  v17 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundNoiseOffset"];
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  return -[SRPhotoplethysmogramOpticalSample initWithEmitter:photodiodes:signalIdentifier:nominalWavelength:effectiveWavelength:frequency:timestamp:normalizedReflectance:whiteNoise:pinkNoise:backgroundNoise:backgrounNoiseOffset:conditions:](self, "initWithEmitter:photodiodes:signalIdentifier:nominalWavelength:effectiveWavelength:frequency:timestamp:normalizedReflectance:whiteNoise:pinkNoise:backgroundNoise:backgrounNoiseOffset:conditions:", v23, v22, v21, v12, v13, v14, v7, v9, v11, v15, v16, v17, [a3 decodeObjectOfClasses:objc_msgSend(v18 forKey:{"setWithObjects:", v19, objc_opt_class(), 0), @"conditions"}]);
}

- (NSMeasurement)nominalWavelength
{
  v3 = objc_alloc(MEMORY[0x1E696AD28]);
  v4 = [v3 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B058] unit:{"nanometers"), self->_rawNominalWavelength}];

  return v4;
}

- (NSMeasurement)effectiveWavelength
{
  v3 = objc_alloc(MEMORY[0x1E696AD28]);
  v4 = [v3 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B058] unit:{"nanometers"), self->_rawEffectiveWavelength}];

  return v4;
}

- (NSMeasurement)samplingFrequency
{
  v3 = objc_alloc(MEMORY[0x1E696AD28]);
  v4 = [v3 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B038] unit:{"hertz"), self->_rawFrequency}];

  return v4;
}

@end