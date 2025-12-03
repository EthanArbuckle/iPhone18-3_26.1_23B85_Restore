@interface SRPhotoplethysmogramOpticalSample
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOpticalSample:(id)sample;
- (NSMeasurement)effectiveWavelength;
- (NSMeasurement)nominalWavelength;
- (NSMeasurement)samplingFrequency;
- (SRPhotoplethysmogramOpticalSample)initWithCoder:(id)coder;
- (SRPhotoplethysmogramOpticalSample)initWithEmitter:(int64_t)emitter photodiodes:(id)photodiodes signalIdentifier:(int64_t)identifier nominalWavelength:(double)wavelength effectiveWavelength:(double)effectiveWavelength frequency:(double)frequency timestamp:(int64_t)timestamp normalizedReflectance:(id)self0 whiteNoise:(id)self1 pinkNoise:(id)self2 backgroundNoise:(id)self3 backgrounNoiseOffset:(id)self4 conditions:(id)self5;
- (SRPhotoplethysmogramOpticalSample)initWithHAPPGOpticalSample:(id)sample;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRPhotoplethysmogramOpticalSample

- (SRPhotoplethysmogramOpticalSample)initWithEmitter:(int64_t)emitter photodiodes:(id)photodiodes signalIdentifier:(int64_t)identifier nominalWavelength:(double)wavelength effectiveWavelength:(double)effectiveWavelength frequency:(double)frequency timestamp:(int64_t)timestamp normalizedReflectance:(id)self0 whiteNoise:(id)self1 pinkNoise:(id)self2 backgroundNoise:(id)self3 backgrounNoiseOffset:(id)self4 conditions:(id)self5
{
  v27.receiver = self;
  v27.super_class = SRPhotoplethysmogramOpticalSample;
  v24 = [(SRPhotoplethysmogramOpticalSample *)&v27 init];
  v25 = v24;
  if (v24)
  {
    v24->_emitter = emitter;
    v24->_activePhotodiodeIndexes = photodiodes;
    v25->_signalIdentifier = identifier;
    v25->_rawNominalWavelength = wavelength;
    v25->_rawEffectiveWavelength = effectiveWavelength;
    v25->_rawFrequency = frequency;
    v25->_nanosecondsSinceStart = timestamp;
    v25->_normalizedReflectance = reflectance;
    v25->_whiteNoise = noise;
    v25->_pinkNoise = pinkNoise;
    v25->_backgroundNoise = backgroundNoise;
    v25->_backgroundNoiseOffset = offset;
    v25->_conditions = [conditions copy];
  }

  return v25;
}

- (SRPhotoplethysmogramOpticalSample)initWithHAPPGOpticalSample:(id)sample
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([sample saturated])
  {
    [v4 addObject:@"SignalSaturation"];
  }

  if ([sample noiseIsUnreliable])
  {
    [v4 addObject:@"UnreliableNoise"];
  }

  v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithBitfield:{objc_msgSend(sample, "photodiodes")}];
  emitter = [sample emitter];
  hardwareSetting = [sample hardwareSetting];
  nominalWavelength = [sample nominalWavelength];
  [sample effectiveWavelength];
  v10 = -[SRPhotoplethysmogramOpticalSample initWithEmitter:photodiodes:signalIdentifier:nominalWavelength:effectiveWavelength:frequency:timestamp:normalizedReflectance:whiteNoise:pinkNoise:backgroundNoise:backgrounNoiseOffset:conditions:](self, "initWithEmitter:photodiodes:signalIdentifier:nominalWavelength:effectiveWavelength:frequency:timestamp:normalizedReflectance:whiteNoise:pinkNoise:backgroundNoise:backgrounNoiseOffset:conditions:", emitter, v5, hardwareSetting, [sample timestamp], objc_msgSend(sample, "normalizedReflectance"), objc_msgSend(sample, "estimatedDeviceWhiteNoise"), nominalWavelength, v9, objc_msgSend(sample, "samplingFrequency"), objc_msgSend(sample, "estimatedDevicePinkNoise"), objc_msgSend(sample, "backgroundNoise"), objc_msgSend(sample, "estimatedDeviceNoiseOffset"), v4);

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRPhotoplethysmogramOpticalSample;
  [(SRPhotoplethysmogramOpticalSample *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(SRPhotoplethysmogramOpticalSample *)self isEqualToOpticalSample:equal];
}

- (BOOL)isEqualToOpticalSample:(id)sample
{
  if ((-[SRPhotoplethysmogramOpticalSample normalizedReflectance](self, "normalizedReflectance") || [sample normalizedReflectance]) && !-[NSNumber isEqual:](-[SRPhotoplethysmogramOpticalSample normalizedReflectance](self, "normalizedReflectance"), "isEqual:", objc_msgSend(sample, "normalizedReflectance")))
  {
    return 0;
  }

  if ((-[SRPhotoplethysmogramOpticalSample whiteNoise](self, "whiteNoise") || [sample whiteNoise]) && !-[NSNumber isEqual:](-[SRPhotoplethysmogramOpticalSample whiteNoise](self, "whiteNoise"), "isEqual:", objc_msgSend(sample, "whiteNoise")))
  {
    return 0;
  }

  if ((-[SRPhotoplethysmogramOpticalSample pinkNoise](self, "pinkNoise") || [sample pinkNoise]) && !-[NSNumber isEqual:](-[SRPhotoplethysmogramOpticalSample pinkNoise](self, "pinkNoise"), "isEqual:", objc_msgSend(sample, "pinkNoise")))
  {
    return 0;
  }

  if ((-[SRPhotoplethysmogramOpticalSample backgroundNoise](self, "backgroundNoise") || [sample backgroundNoise]) && !-[NSNumber isEqual:](-[SRPhotoplethysmogramOpticalSample backgroundNoise](self, "backgroundNoise"), "isEqual:", objc_msgSend(sample, "backgroundNoise")))
  {
    return 0;
  }

  if ((-[SRPhotoplethysmogramOpticalSample backgroundNoiseOffset](self, "backgroundNoiseOffset") || [sample backgroundNoiseOffset]) && !-[NSNumber isEqual:](-[SRPhotoplethysmogramOpticalSample backgroundNoiseOffset](self, "backgroundNoiseOffset"), "isEqual:", objc_msgSend(sample, "backgroundNoiseOffset")))
  {
    return 0;
  }

  emitter = [(SRPhotoplethysmogramOpticalSample *)self emitter];
  if (emitter != [sample emitter])
  {
    return 0;
  }

  if (!-[NSIndexSet isEqual:](-[SRPhotoplethysmogramOpticalSample activePhotodiodeIndexes](self, "activePhotodiodeIndexes"), "isEqual:", [sample activePhotodiodeIndexes]))
  {
    return 0;
  }

  signalIdentifier = [(SRPhotoplethysmogramOpticalSample *)self signalIdentifier];
  if (signalIdentifier != [sample signalIdentifier])
  {
    return 0;
  }

  if (!-[NSMeasurement isEqual:](-[SRPhotoplethysmogramOpticalSample nominalWavelength](self, "nominalWavelength"), "isEqual:", [sample nominalWavelength]))
  {
    return 0;
  }

  if (!-[NSMeasurement isEqual:](-[SRPhotoplethysmogramOpticalSample effectiveWavelength](self, "effectiveWavelength"), "isEqual:", [sample effectiveWavelength]))
  {
    return 0;
  }

  if (!-[NSMeasurement isEqual:](-[SRPhotoplethysmogramOpticalSample samplingFrequency](self, "samplingFrequency"), "isEqual:", [sample samplingFrequency]))
  {
    return 0;
  }

  nanosecondsSinceStart = [(SRPhotoplethysmogramOpticalSample *)self nanosecondsSinceStart];
  if (nanosecondsSinceStart != [sample nanosecondsSinceStart])
  {
    return 0;
  }

  conditions = [(SRPhotoplethysmogramOpticalSample *)self conditions];
  conditions2 = [sample conditions];

  return [(NSArray *)conditions isEqual:conditions2];
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

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeInteger:self->_emitter forKey:@"emitter"];
  [coder encodeObject:self->_activePhotodiodeIndexes forKey:@"photodiodes"];
  [coder encodeInteger:self->_signalIdentifier forKey:@"hardwareSetting"];
  [coder encodeDouble:@"nominalWavelength" forKey:self->_rawNominalWavelength];
  [coder encodeDouble:@"effectiveWavelength" forKey:self->_rawEffectiveWavelength];
  [coder encodeDouble:@"frequency" forKey:self->_rawFrequency];
  [coder encodeInt64:self->_nanosecondsSinceStart forKey:@"nanosecondsSinceStart"];
  [coder encodeObject:self->_normalizedReflectance forKey:@"normalizedReflectance"];
  [coder encodeObject:self->_whiteNoise forKey:@"whiteNoise"];
  [coder encodeObject:self->_pinkNoise forKey:@"pinkNoise"];
  [coder encodeObject:self->_backgroundNoise forKey:@"backgroundNoise"];
  [coder encodeObject:self->_backgroundNoiseOffset forKey:@"backgroundNoiseOffset"];
  conditions = self->_conditions;

  [coder encodeObject:conditions forKey:@"conditions"];
}

- (SRPhotoplethysmogramOpticalSample)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v23 = [coder decodeIntegerForKey:@"emitter"];
  v22 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"photodiodes"];
  v21 = [coder decodeIntegerForKey:@"hardwareSetting"];
  [coder decodeDoubleForKey:@"nominalWavelength"];
  v7 = v6;
  [coder decodeDoubleForKey:@"effectiveWavelength"];
  v9 = v8;
  [coder decodeDoubleForKey:@"frequency"];
  v11 = v10;
  v12 = [coder decodeInt64ForKey:@"nanosecondsSinceStart"];
  v13 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"normalizedReflectance"];
  v14 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"whiteNoise"];
  v15 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"pinkNoise"];
  v16 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"backgroundNoise"];
  v17 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"backgroundNoiseOffset"];
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  return -[SRPhotoplethysmogramOpticalSample initWithEmitter:photodiodes:signalIdentifier:nominalWavelength:effectiveWavelength:frequency:timestamp:normalizedReflectance:whiteNoise:pinkNoise:backgroundNoise:backgrounNoiseOffset:conditions:](self, "initWithEmitter:photodiodes:signalIdentifier:nominalWavelength:effectiveWavelength:frequency:timestamp:normalizedReflectance:whiteNoise:pinkNoise:backgroundNoise:backgrounNoiseOffset:conditions:", v23, v22, v21, v12, v13, v14, v7, v9, v11, v15, v16, v17, [coder decodeObjectOfClasses:objc_msgSend(v18 forKey:{"setWithObjects:", v19, objc_opt_class(), 0), @"conditions"}]);
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