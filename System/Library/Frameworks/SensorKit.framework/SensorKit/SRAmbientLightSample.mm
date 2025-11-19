@interface SRAmbientLightSample
+ (void)initialize;
- (NSMeasurement)lux;
- (NSString)description;
- (NSString)placementString;
- (NSString)typeString;
- (SRAmbientLightChromaticity)chromaticity;
- (SRAmbientLightSample)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRAmbientLightSample)initWithCoder:(id)a3;
- (SRAmbientLightSample)initWithSRALSSampleStruct:(id *)a3;
- (SRAmbientLightSample)initWithSample:(id *)a3;
- (id)binarySampleRepresentation;
- (id)sr_dictionaryRepresentation;
- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRAmbientLightSample

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogAmbientLightSample = os_log_create("com.apple.SensorKit", "SRAmbientLightSample");
  }
}

- (SRAmbientLightSample)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v12 = 0u;
  v13 = 0u;
  v6 = [a3 decodeInt64ForKey:@"tp"];
  if (v6)
  {
    *&v12 = HIDWORD(v6);
    v7 = v6;
  }

  else
  {
    *&v12 = [a3 decodeIntegerForKey:@"sensorType"];
    v7 = [a3 decodeIntegerForKey:@"placement"];
  }

  *(&v12 + 1) = v7;
  [a3 decodeFloatForKey:@"lux"];
  LODWORD(v13) = v8;
  [a3 decodeFloatForKey:@"x"];
  DWORD1(v13) = v9;
  [a3 decodeFloatForKey:@"y"];
  DWORD2(v13) = v10;
  return [(SRAmbientLightSample *)self initWithSRALSSampleStruct:&v12];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeInt64:self->_comboTypePlacement forKey:@"tp"];
  [a3 encodeDouble:@"lux" forKey:self->_luxValue];
  [(SRAmbientLightSample *)self chromaticity];
  [a3 encodeFloat:@"x" forKey:?];
  [(SRAmbientLightSample *)self chromaticity];
  LODWORD(v7) = v6;

  [a3 encodeFloat:@"y" forKey:v7];
}

- (id)binarySampleRepresentation
{
  comboTypePlacement = self->_comboTypePlacement;
  luxValue = self->_luxValue;
  chromaticity = self->_chromaticity;
  return [MEMORY[0x1E695DEF0] dataWithBytes:&comboTypePlacement length:20];
}

- (SRAmbientLightSample)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v18 = *MEMORY[0x1E69E9840];
  if (![a3 length])
  {

    goto LABEL_6;
  }

  v15.receiver = self;
  v15.super_class = SRAmbientLightSample;
  result = [(SRAmbientLightSample *)&v15 init];
  if (result)
  {
    v8 = result;
    v14 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v14];
    if (v9)
    {
      v10 = v9;

      result = v10;
      goto LABEL_7;
    }

    v12 = [a3 bytes];

    result = [[SRAmbientLightSample alloc] initWithSample:v12];
    if (result)
    {
      goto LABEL_7;
    }

    v13 = SRLogAmbientLightSample;
    if (os_log_type_enabled(SRLogAmbientLightSample, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v17 = a3;
      _os_log_error_impl(&dword_1C914D000, v13, OS_LOG_TYPE_ERROR, "Failed to instantiate ALS sample from binary %{private}@", buf, 0xCu);
    }

LABEL_6:
    result = 0;
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (SRAmbientLightSample)initWithSRALSSampleStruct:(id *)a3
{
  if (!a3)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = SRAmbientLightSample;
  result = [(SRAmbientLightSample *)&v5 init];
  if (result)
  {
    result->_comboTypePlacement = a3->var1 | (a3->var0 << 32);
    result->_luxValue = a3->var2;
    result->_chromaticity = a3->var3;
  }

  return result;
}

- (SRAmbientLightSample)initWithSample:(id *)a3
{
  v7.receiver = self;
  v7.super_class = SRAmbientLightSample;
  result = [(SRAmbientLightSample *)&v7 init];
  if (result)
  {
    var0 = a3->var0;
    result->_comboTypePlacement = a3->var0;
    result->_luxValue = a3->var1;
    result->_chromaticity = a3->var2;
    if (var0 >> 33)
    {
      v6 = 1;
    }

    else
    {
      v6 = var0 >= 9;
    }

    if (v6)
    {

      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SRAmbientLightSample;
  [(SRAmbientLightSample *)&v2 dealloc];
}

- (NSMeasurement)lux
{
  v3 = objc_alloc(MEMORY[0x1E696AD28]);
  v4 = [v3 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B048] unit:{"lux"), self->_luxValue}];

  return v4;
}

- (NSString)typeString
{
  v2 = @"Unknown";
  comboTypePlacement_high = HIDWORD(self->_comboTypePlacement);
  if (comboTypePlacement_high == 1)
  {
    v2 = @"Color";
  }

  self->_comboTypePlacement;
  if (comboTypePlacement_high)
  {
    return &v2->isa;
  }

  else
  {
    return @"Monochromatic";
  }
}

- (NSString)placementString
{
  v2 = [(SRAmbientLightSample *)self placement];
  if ((v2 - 1) > 7)
  {
    return @"Unknown";
  }

  else
  {
    return &off_1E83305B0[v2 - 1]->isa;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SRAmbientLightSample *)self typeString];
  v7 = [(SRAmbientLightSample *)self placementString];
  [(SRAmbientLightSample *)self chromaticity];
  v9 = v8;
  [(SRAmbientLightSample *)self chromaticity];
  return [v3 stringWithFormat:@"<%@: %p> chipType: %@, placement: %@, chromaticity {x = %f, y = %f}, lux: (%@)", v5, self, v6, v7, *&v9, v10, -[SRAmbientLightSample lux](self, "lux")];
}

- (id)sr_dictionaryRepresentation
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"sensorType";
  v11[0] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRAmbientLightSample chipType](self, "chipType")}];
  v10[1] = @"placement";
  v11[1] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRAmbientLightSample placement](self, "placement")}];
  v10[2] = @"chromaticity";
  v8[0] = @"x";
  *&v3 = self->_chromaticity.x;
  v8[1] = @"y";
  v9[0] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  *&v4 = self->_chromaticity.y;
  v9[1] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v11[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[3] = @"lux";
  *&v5 = self->_luxValue;
  v11[3] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)a3
{
  LODWORD(result) = snprintf_l(sr_writeUTF8RepresentationToOutputStream__buf, 0x9CuLL, 0, "{sensorType: %ld, placement: %ld, chromaticity: {x: %0.*g, y: %0.*g}, lux: %0.*g}", HIDWORD(self->_comboTypePlacement), self->_comboTypePlacement, 17, self->_chromaticity.x, 17, self->_chromaticity.y, 17, self->_luxValue);
  if (result <= 0)
  {
    return result;
  }

  return [a3 write:sr_writeUTF8RepresentationToOutputStream__buf maxLength:result];
}

- (SRAmbientLightChromaticity)chromaticity
{
  objc_copyStruct(dest, &self->_chromaticity, 8, 1, 0);
  v2 = *dest;
  v3 = *&dest[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end