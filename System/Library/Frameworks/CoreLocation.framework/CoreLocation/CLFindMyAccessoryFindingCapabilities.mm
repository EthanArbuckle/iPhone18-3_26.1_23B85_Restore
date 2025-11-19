@interface CLFindMyAccessoryFindingCapabilities
- (CLFindMyAccessoryFindingCapabilities)initWithCoder:(id)a3;
- (CLFindMyAccessoryFindingCapabilities)initWithData:(id)a3;
- (CLFindMyAccessoryFindingCapabilities)initWithSupportsFC1ND:(BOOL)a3 supportsNBAMMS:(BOOL)a4 supportsUnii5:(BOOL)a5 capabilities:(unsigned int)a6 supportsSimultaneousRanging:(BOOL)a7;
- (id)capabilitiesString;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLFindMyAccessoryFindingCapabilities

- (CLFindMyAccessoryFindingCapabilities)initWithData:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ([a3 length] == 4)
  {
    v5 = *[a3 bytes];
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
      v17 = [a3 length];
      v18 = 2114;
      v19 = a3;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian CLFindMyAccessoryFindingCapabilities Unexpected data size, size:%{public}ld, data:%{public, location:escape_only}@}", &v12, 0x26u);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6D830);
      }
    }

    v8 = qword_1EAFE4700;
    if (os_signpost_enabled(qword_1EAFE4700))
    {
      v9 = [a3 length];
      v12 = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v9;
      v18 = 2114;
      v19 = a3;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian CLFindMyAccessoryFindingCapabilities Unexpected data size", "{msg%{public}.0s:#durian CLFindMyAccessoryFindingCapabilities Unexpected data size, size:%{public}ld, data:%{public, location:escape_only}@}", &v12, 0x26u);
    }

    v10 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

- (CLFindMyAccessoryFindingCapabilities)initWithSupportsFC1ND:(BOOL)a3 supportsNBAMMS:(BOOL)a4 supportsUnii5:(BOOL)a5 capabilities:(unsigned int)a6 supportsSimultaneousRanging:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = CLFindMyAccessoryFindingCapabilities;
  result = [(CLFindMyAccessoryFindingCapabilities *)&v13 init];
  if (result)
  {
    result->_supportsFC1ND = a3;
    result->_supportsNBAMMS = a4;
    result->_supportsUnii5 = a5;
    result->_capabilities = a6;
    result->_supportsSimultaneousRanging = a7;
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

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeBool:self->_supportsFC1ND forKey:@"FC1ND"];
  [a3 encodeBool:self->_supportsNBAMMS forKey:@"NBAMMS"];
  [a3 encodeBool:self->_supportsUnii5 forKey:@"Unii-5"];
  [a3 encodeBool:self->_supportsSimultaneousRanging forKey:@"simultaneous_ranging"];
  capabilities = self->_capabilities;

  MEMORY[0x1EEE66B58](a3, sel_encodeInt32_forKey_);
}

- (CLFindMyAccessoryFindingCapabilities)initWithCoder:(id)a3
{
  [a3 decodeBoolForKey:@"FC1ND"];
  [a3 decodeBoolForKey:@"NBAMMS"];
  [a3 decodeBoolForKey:@"Unii-5"];
  [a3 decodeInt32ForKey:@"capabilities"];
  [a3 decodeBoolForKey:@"simultaneous_ranging"];

  return MEMORY[0x1EEE66B58](self, sel_initWithSupportsFC1ND_supportsNBAMMS_supportsUnii5_capabilities_supportsSimultaneousRanging_);
}

@end