@interface HMSupportedAccessoryDiagnostics
- (BOOL)isEqual:(id)equal;
- (HMSupportedAccessoryDiagnostics)initWithCoder:(id)coder;
- (HMSupportedAccessoryDiagnostics)initWithSupportedTypes:(unint64_t)types format:(int64_t)format audio:(unint64_t)audio options:(unint64_t)options;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMSupportedAccessoryDiagnostics

- (unint64_t)hash
{
  supportedTypes = [(HMSupportedAccessoryDiagnostics *)self supportedTypes];
  v4 = [(HMSupportedAccessoryDiagnostics *)self supportedFormat]^ supportedTypes;
  supportedOptions = [(HMSupportedAccessoryDiagnostics *)self supportedOptions];
  return v4 ^ supportedOptions ^ [(HMSupportedAccessoryDiagnostics *)self supportedAudio];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMSupportedAccessoryDiagnostics supportedTypes](self, "supportedTypes"), v7 == [v6 supportedTypes]) && (v8 = -[HMSupportedAccessoryDiagnostics supportedFormat](self, "supportedFormat"), v8 == objc_msgSend(v6, "supportedFormat")) && (v9 = -[HMSupportedAccessoryDiagnostics supportedOptions](self, "supportedOptions"), v9 == objc_msgSend(v6, "supportedOptions")))
  {
    supportedAudio = [(HMSupportedAccessoryDiagnostics *)self supportedAudio];
    v11 = supportedAudio == [v6 supportedAudio];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  supportedTypes = self->_supportedTypes;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:supportedTypes];
  [coderCopy encodeObject:v7 forKey:@"HMA.diagnostics.ck.ty"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_supportedFormat];
  [coderCopy encodeObject:v8 forKey:@"HMA.diagnostics.ck.sf"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_supportedOptions];
  [coderCopy encodeObject:v9 forKey:@"HMA.diagnostics.ck.so"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_supportedAudio];
  [coderCopy encodeObject:v10 forKey:@"HMA.diagnostics.ck.sa"];
}

- (HMSupportedAccessoryDiagnostics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.ty"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.sf"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.so"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.diagnostics.ck.sa"];

  integerValue = [v6 integerValue];
  if ((integerValue - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    self = -[HMSupportedAccessoryDiagnostics initWithSupportedTypes:format:audio:options:](self, "initWithSupportedTypes:format:audio:options:", [v5 integerValue], integerValue, objc_msgSend(v8, "integerValue"), objc_msgSend(v7, "integerValue"));
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMSupportedAccessoryDiagnostics)initWithSupportedTypes:(unint64_t)types format:(int64_t)format audio:(unint64_t)audio options:(unint64_t)options
{
  v11.receiver = self;
  v11.super_class = HMSupportedAccessoryDiagnostics;
  result = [(HMSupportedAccessoryDiagnostics *)&v11 init];
  if (result)
  {
    result->_supportedTypes = types;
    result->_supportedFormat = format;
    result->_supportedOptions = options;
    result->_supportedAudio = audio;
  }

  return result;
}

@end