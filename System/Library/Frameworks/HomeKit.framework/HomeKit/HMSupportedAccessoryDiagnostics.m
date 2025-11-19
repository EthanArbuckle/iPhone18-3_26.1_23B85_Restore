@interface HMSupportedAccessoryDiagnostics
- (BOOL)isEqual:(id)a3;
- (HMSupportedAccessoryDiagnostics)initWithCoder:(id)a3;
- (HMSupportedAccessoryDiagnostics)initWithSupportedTypes:(unint64_t)a3 format:(int64_t)a4 audio:(unint64_t)a5 options:(unint64_t)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMSupportedAccessoryDiagnostics

- (unint64_t)hash
{
  v3 = [(HMSupportedAccessoryDiagnostics *)self supportedTypes];
  v4 = [(HMSupportedAccessoryDiagnostics *)self supportedFormat]^ v3;
  v5 = [(HMSupportedAccessoryDiagnostics *)self supportedOptions];
  return v4 ^ v5 ^ [(HMSupportedAccessoryDiagnostics *)self supportedAudio];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMSupportedAccessoryDiagnostics supportedTypes](self, "supportedTypes"), v7 == [v6 supportedTypes]) && (v8 = -[HMSupportedAccessoryDiagnostics supportedFormat](self, "supportedFormat"), v8 == objc_msgSend(v6, "supportedFormat")) && (v9 = -[HMSupportedAccessoryDiagnostics supportedOptions](self, "supportedOptions"), v9 == objc_msgSend(v6, "supportedOptions")))
  {
    v10 = [(HMSupportedAccessoryDiagnostics *)self supportedAudio];
    v11 = v10 == [v6 supportedAudio];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  supportedTypes = self->_supportedTypes;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:supportedTypes];
  [v6 encodeObject:v7 forKey:@"HMA.diagnostics.ck.ty"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_supportedFormat];
  [v6 encodeObject:v8 forKey:@"HMA.diagnostics.ck.sf"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_supportedOptions];
  [v6 encodeObject:v9 forKey:@"HMA.diagnostics.ck.so"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_supportedAudio];
  [v6 encodeObject:v10 forKey:@"HMA.diagnostics.ck.sa"];
}

- (HMSupportedAccessoryDiagnostics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.ty"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.sf"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.so"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.sa"];

  v9 = [v6 integerValue];
  if ((v9 - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    self = -[HMSupportedAccessoryDiagnostics initWithSupportedTypes:format:audio:options:](self, "initWithSupportedTypes:format:audio:options:", [v5 integerValue], v9, objc_msgSend(v8, "integerValue"), objc_msgSend(v7, "integerValue"));
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HMSupportedAccessoryDiagnostics)initWithSupportedTypes:(unint64_t)a3 format:(int64_t)a4 audio:(unint64_t)a5 options:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = HMSupportedAccessoryDiagnostics;
  result = [(HMSupportedAccessoryDiagnostics *)&v11 init];
  if (result)
  {
    result->_supportedTypes = a3;
    result->_supportedFormat = a4;
    result->_supportedOptions = a6;
    result->_supportedAudio = a5;
  }

  return result;
}

@end