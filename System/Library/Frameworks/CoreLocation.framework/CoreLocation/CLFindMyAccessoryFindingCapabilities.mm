@interface CLFindMyAccessoryFindingCapabilities
- (CLFindMyAccessoryFindingCapabilities)initWithCoder:(id)coder;
- (CLFindMyAccessoryFindingCapabilities)initWithData:(id)data;
- (CLFindMyAccessoryFindingCapabilities)initWithSupportsFC1ND:(BOOL)d supportsNBAMMS:(BOOL)s supportsUnii5:(BOOL)unii5 capabilities:(unsigned int)capabilities supportsSimultaneousRanging:(BOOL)ranging;
- (id)capabilitiesString;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryFindingCapabilities

- (CLFindMyAccessoryFindingCapabilities)initWithData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  if ([data length] == 4)
  {
    v5 = *[data bytes];
    v6 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE66B58](self, sel_initWithSupportsFC1ND_supportsNBAMMS_supportsUnii5_capabilities_supportsSimultaneousRanging_);
  }

  else
  {
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6D830);
    }

    v7 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
    {
      v12 = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = [data length];
      v18 = 2114;
      dataCopy2 = data;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian CLFindMyAccessoryFindingCapabilities Unexpected data size, size:%{public}ld, data:%{public, location:escape_only}@}", &v12, 0x26u);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6D830);
      }
    }

    v8 = qword_1EAFE4700;
    if (os_signpost_enabled(qword_1EAFE4700))
    {
      v9 = [data length];
      v12 = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v9;
      v18 = 2114;
      dataCopy2 = data;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian CLFindMyAccessoryFindingCapabilities Unexpected data size", "{msg%{public}.0s:#durian CLFindMyAccessoryFindingCapabilities Unexpected data size, size:%{public}ld, data:%{public, location:escape_only}@}", &v12, 0x26u);
    }

    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

- (CLFindMyAccessoryFindingCapabilities)initWithSupportsFC1ND:(BOOL)d supportsNBAMMS:(BOOL)s supportsUnii5:(BOOL)unii5 capabilities:(unsigned int)capabilities supportsSimultaneousRanging:(BOOL)ranging
{
  v13.receiver = self;
  v13.super_class = CLFindMyAccessoryFindingCapabilities;
  result = [(CLFindMyAccessoryFindingCapabilities *)&v13 init];
  if (result)
  {
    result->_supportsFC1ND = d;
    result->_supportsNBAMMS = s;
    result->_supportsUnii5 = unii5;
    result->_capabilities = capabilities;
    result->_supportsSimultaneousRanging = ranging;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLFindMyAccessoryFindingCapabilities;
  [(CLFindMyAccessoryFindingCapabilities *)&v2 dealloc];
}

- (id)capabilitiesString
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = "NO";
  if ([(CLFindMyAccessoryFindingCapabilities *)self supportsFC1ND])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  if ([(CLFindMyAccessoryFindingCapabilities *)self supportsNBAMMS])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  if ([(CLFindMyAccessoryFindingCapabilities *)self supportsUnii5])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if ([(CLFindMyAccessoryFindingCapabilities *)self supportsSimultaneousRanging])
  {
    v4 = "YES";
  }

  return [v3 stringWithFormat:@"\n supportsFC1ND %s\n supportsNBAMMS %s\n supportsUnii5 %s\n supportsSimultaneousRanging %s\n capabilities %u\n", v5, v6, v7, v4, -[CLFindMyAccessoryFindingCapabilities capabilities](self, "capabilities")];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeBool:self->_supportsFC1ND forKey:@"FC1ND"];
  [coder encodeBool:self->_supportsNBAMMS forKey:@"NBAMMS"];
  [coder encodeBool:self->_supportsUnii5 forKey:@"Unii-5"];
  [coder encodeBool:self->_supportsSimultaneousRanging forKey:@"simultaneous_ranging"];
  capabilities = self->_capabilities;

  MEMORY[0x1EEE66B58](coder, sel_encodeInt32_forKey_);
}

- (CLFindMyAccessoryFindingCapabilities)initWithCoder:(id)coder
{
  [coder decodeBoolForKey:@"FC1ND"];
  [coder decodeBoolForKey:@"NBAMMS"];
  [coder decodeBoolForKey:@"Unii-5"];
  [coder decodeInt32ForKey:@"capabilities"];
  [coder decodeBoolForKey:@"simultaneous_ranging"];

  return MEMORY[0x1EEE66B58](self, sel_initWithSupportsFC1ND_supportsNBAMMS_supportsUnii5_capabilities_supportsSimultaneousRanging_);
}

@end