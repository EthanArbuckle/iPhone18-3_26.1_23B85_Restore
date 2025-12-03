@interface BLSDiagnosticFlipbookFrame
+ (id)createWithFrame:(id)frame;
- (BLSDiagnosticFlipbookFrame)initWithCoder:(id)coder;
- (BLSDiagnosticFlipbookFrame)initWithFrame:(id)frame;
- (BLSDiagnosticFlipbookFrame)initWithPresentationTime:(unint64_t)time frameId:(unint64_t)id apl:(float)apl aplDimming:(float)dimming memoryUsage:(unint64_t)usage rawSurfaceFrameRect:(CGRect)rect inverted:(BOOL)inverted specifier:(id)self0 uuid:(id)self1;
- (BLSDiagnosticFlipbookFrame)initWithXPCDictionary:(id)dictionary;
- (BLSDiagnosticFlipbookFrameSurfaceProvider)surfaceProvider;
- (BOOL)isEqual:(id)equal;
- (CGRect)rawSurfaceFrame;
- (__IOSurface)rawSurface;
- (__IOSurface)surface;
- (id)bls_loggingString;
- (id)bls_shortLoggingString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSDiagnosticFlipbookFrame

+ (id)createWithFrame:(id)frame
{
  if (frame)
  {
    frameCopy = frame;
    v5 = [[self alloc] initWithFrame:frameCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BLSDiagnosticFlipbookFrame)initWithFrame:(id)frame
{
  frameCopy = frame;
  presentationTime = [frameCopy presentationTime];
  frameId = [frameCopy frameId];
  [frameCopy apl];
  v8 = v7;
  [frameCopy aplDimming];
  v10 = v9;
  memoryUsage = [frameCopy memoryUsage];
  [frameCopy rawSurfaceFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  isInverted = [frameCopy isInverted];
  bls_specifier = [frameCopy bls_specifier];
  bls_uuid = [frameCopy bls_uuid];

  LODWORD(v23) = v8;
  LODWORD(v24) = v10;
  v25 = [(BLSDiagnosticFlipbookFrame *)self initWithPresentationTime:presentationTime frameId:frameId apl:memoryUsage aplDimming:isInverted memoryUsage:bls_specifier rawSurfaceFrameRect:bls_uuid inverted:v23 specifier:v24 uuid:v13, v15, v17, v19];

  return v25;
}

- (BLSDiagnosticFlipbookFrame)initWithPresentationTime:(unint64_t)time frameId:(unint64_t)id apl:(float)apl aplDimming:(float)dimming memoryUsage:(unint64_t)usage rawSurfaceFrameRect:(CGRect)rect inverted:(BOOL)inverted specifier:(id)self0 uuid:(id)self1
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  specifierCopy = specifier;
  uuidCopy = uuid;
  v32.receiver = self;
  v32.super_class = BLSDiagnosticFlipbookFrame;
  v25 = [(BLSDiagnosticFlipbookFrame *)&v32 init];
  v26 = v25;
  if (v25)
  {
    v25->_presentationTime = time;
    v25->_frameId = id;
    v25->_apl = apl;
    v25->_aplDimming = dimming;
    v25->_memoryUsage = usage;
    v25->_rawSurfaceFrame.origin.x = x;
    v25->_rawSurfaceFrame.origin.y = y;
    v25->_rawSurfaceFrame.size.width = width;
    v25->_rawSurfaceFrame.size.height = height;
    v25->_inverted = inverted;
    v27 = [BLSDiagnosticPresentationDateSpecifier createWithSpecifier:specifierCopy];
    specifier = v26->_specifier;
    v26->_specifier = v27;

    if (uuidCopy)
    {
      uUID = uuidCopy;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    uuid = v26->_uuid;
    v26->_uuid = uUID;
  }

  return v26;
}

- (__IOSurface)surface
{
  surfaceProvider = [(BLSDiagnosticFlipbookFrame *)self surfaceProvider];
  v4 = [surfaceProvider surfaceForFrame:self];

  return v4;
}

- (__IOSurface)rawSurface
{
  surfaceProvider = [(BLSDiagnosticFlipbookFrame *)self surfaceProvider];
  v4 = [surfaceProvider rawSurfaceForFrame:self];

  return v4;
}

- (id)bls_loggingString
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = BLSLoggingStringForMachTime([(BLSDiagnosticFlipbookFrame *)self presentationTime]);
  [v3 appendString:v4 withName:@"presentationTime"];

  v5 = [v3 appendUInt64:-[BLSDiagnosticFlipbookFrame frameId](self withName:{"frameId"), @"frameId"}];
  bls_specifier = [(BLSDiagnosticFlipbookFrame *)self bls_specifier];
  bls_loggingString = [bls_specifier bls_loggingString];
  v8 = [v3 appendObject:bls_loggingString withName:@"specifier"];

  v9 = +[BLSMemoryByteCountFormatter sharedFormatter];
  v10 = [v9 stringFromByteCount:{-[BLSDiagnosticFlipbookFrame memoryUsage](self, "memoryUsage")}];
  v11 = [v3 appendObject:v10 withName:@"memoryUsage"];

  [(BLSDiagnosticFlipbookFrame *)self apl];
  v13 = [v3 appendFloat:@"apl" withName:3 decimalPrecision:v12];
  [(BLSDiagnosticFlipbookFrame *)self aplDimming];
  v15 = [v3 appendFloat:@"dimming" withName:3 decimalPrecision:v14];
  [(BLSDiagnosticFlipbookFrame *)self rawSurfaceFrame];
  v16 = [v3 appendRect:@"rawSurfaceFrame" withName:?];
  v17 = [v3 appendBool:-[BLSDiagnosticFlipbookFrame isInverted](self withName:"isInverted") ifEqualTo:{@"inverted", 1}];
  uuid = [(BLSDiagnosticFlipbookFrame *)self uuid];
  uUIDString = [uuid UUIDString];
  v20 = [v3 appendObject:uUIDString withName:@"uuid"];

  build = [v3 build];

  return build;
}

- (id)bls_shortLoggingString
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUInt64:-[BLSDiagnosticFlipbookFrame frameId](self withName:{"frameId"), @"frameId"}];
  bls_specifier = [(BLSDiagnosticFlipbookFrame *)self bls_specifier];
  if (bls_specifier)
  {
    bls_specifier2 = [(BLSDiagnosticFlipbookFrame *)self bls_specifier];
    bls_shortLoggingString = [bls_specifier2 bls_shortLoggingString];
    [v3 appendString:bls_shortLoggingString withName:&stru_28339C970];
  }

  else
  {
    bls_specifier2 = BLSShortLoggingStringForMachTime([(BLSDiagnosticFlipbookFrame *)self presentationTime]);
    [v3 appendString:bls_specifier2 withName:&stru_28339C970];
  }

  v8 = +[BLSMemoryByteCountFormatter sharedFormatter];
  v9 = [v8 stringFromByteCount:{-[BLSDiagnosticFlipbookFrame memoryUsage](self, "memoryUsage")}];
  v10 = [v3 appendObject:v9 withName:@"memoryUsage"];

  [(BLSDiagnosticFlipbookFrame *)self apl];
  v12 = [v3 appendFloat:@"apl" withName:3 decimalPrecision:v11];
  [(BLSDiagnosticFlipbookFrame *)self aplDimming];
  v14 = [v3 appendFloat:@"dimming" withName:3 decimalPrecision:v13];
  [(BLSDiagnosticFlipbookFrame *)self rawSurfaceFrame];
  v15 = [v3 appendRect:@"rawSurfaceFrame" withName:?];
  v16 = [v3 appendBool:-[BLSDiagnosticFlipbookFrame isInverted](self withName:"isInverted") ifEqualTo:{@"inverted", 1}];
  uuid = [(BLSDiagnosticFlipbookFrame *)self uuid];
  uUIDString = [uuid UUIDString];
  v19 = [v3 appendObject:uUIDString withName:@"uuid"];

  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInt64:{-[BLSDiagnosticFlipbookFrame presentationTime](self, "presentationTime")}];
  v5 = [builder appendInt64:{-[BLSDiagnosticFlipbookFrame frameId](self, "frameId")}];
  bls_specifier = [(BLSDiagnosticFlipbookFrame *)self bls_specifier];
  v7 = [builder appendUnsignedInteger:{objc_msgSend(bls_specifier, "hash")}];

  v8 = [builder appendUnsignedInteger:{-[BLSDiagnosticFlipbookFrame memoryUsage](self, "memoryUsage")}];
  [(BLSDiagnosticFlipbookFrame *)self rawSurfaceFrame];
  v9 = [builder appendCGRect:?];
  [(BLSDiagnosticFlipbookFrame *)self apl];
  v10 = [builder appendFloat:?];
  [(BLSDiagnosticFlipbookFrame *)self aplDimming];
  v11 = [builder appendFloat:?];
  v12 = [builder appendBool:{-[BLSDiagnosticFlipbookFrame isInverted](self, "isInverted")}];
  v13 = [builder hash];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  presentationTime = [(BLSDiagnosticFlipbookFrame *)self presentationTime];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke;
  v57[3] = &unk_278428B28;
  v7 = equalCopy;
  v58 = v7;
  v8 = [v5 appendInt64:presentationTime counterpart:v57];
  frameId = [(BLSDiagnosticFlipbookFrame *)self frameId];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke_2;
  v55[3] = &unk_278428B28;
  v10 = v7;
  v56 = v10;
  v11 = [v5 appendInt64:frameId counterpart:v55];
  bls_specifier = [(BLSDiagnosticFlipbookFrame *)self bls_specifier];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke_3;
  v53[3] = &unk_278428FD0;
  v13 = v10;
  v54 = v13;
  v14 = [v5 appendObject:bls_specifier counterpart:v53];

  memoryUsage = [(BLSDiagnosticFlipbookFrame *)self memoryUsage];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke_4;
  v51[3] = &unk_278428FF8;
  v16 = v13;
  v52 = v16;
  v17 = [v5 appendUnsignedInteger:memoryUsage counterpart:v51];
  [(BLSDiagnosticFlipbookFrame *)self rawSurfaceFrame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke_5;
  v49[3] = &unk_278429020;
  v26 = v16;
  v50 = v26;
  v27 = [v5 appendCGRect:v49 counterpart:{v19, v21, v23, v25}];
  [(BLSDiagnosticFlipbookFrame *)self apl];
  LODWORD(v19) = v28;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke_6;
  v47[3] = &unk_278429048;
  v29 = v26;
  v48 = v29;
  LODWORD(v30) = LODWORD(v19);
  v31 = [v5 appendFloat:v47 counterpart:v30];
  [(BLSDiagnosticFlipbookFrame *)self aplDimming];
  LODWORD(v19) = v32;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke_7;
  v45[3] = &unk_278429048;
  v33 = v29;
  v46 = v33;
  LODWORD(v34) = LODWORD(v19);
  v35 = [v5 appendFloat:v45 counterpart:v34];
  isInverted = [(BLSDiagnosticFlipbookFrame *)self isInverted];
  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke_8;
  v43 = &unk_278428FA8;
  v44 = v33;
  v37 = v33;
  v38 = [v5 appendBool:isInverted counterpart:&v40];
  LOBYTE(v33) = [v5 isEqual];

  return v33;
}

- (BLSDiagnosticFlipbookFrame)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uint64 = xpc_dictionary_get_uint64(dictionaryCopy, [@"presentationTime" UTF8String]);
  v6 = xpc_dictionary_get_uint64(dictionaryCopy, [@"frameId" UTF8String]);
  v7 = xpc_dictionary_get_double(dictionaryCopy, [@"apl" UTF8String]);
  v8 = xpc_dictionary_get_double(dictionaryCopy, [@"dimming" UTF8String]);
  v9 = xpc_dictionary_get_uint64(dictionaryCopy, [@"memoryUsage" UTF8String]);
  [@"rawSurfaceFrame" UTF8String];
  BSDeserializeCGRectFromXPCDictionaryWithKey();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = xpc_dictionary_get_BOOL(dictionaryCopy, [@"inverted" UTF8String]);
  v19 = xpc_dictionary_get_dictionary(dictionaryCopy, [@"specifier" UTF8String]);
  if (v19)
  {
    v20 = [[BLSDiagnosticPresentationDateSpecifier alloc] initWithXPCDictionary:v19];
  }

  else
  {
    v21 = bls_diagnostics_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [BLSDiagnosticFlipbookFrame initWithXPCDictionary:];
    }

    v20 = 0;
  }

  v22 = xpc_dictionary_get_value(dictionaryCopy, [@"uuid" UTF8String]);
  if (v22)
  {
    v23 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:xpc_uuid_get_bytes(v22)];
  }

  else
  {
    v26 = bls_diagnostics_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [BLSDiagnosticFlipbookFrame initWithXPCDictionary:];
    }

    v23 = 0;
  }

  *&v25 = v8;
  *&v24 = v7;
  v27 = [(BLSDiagnosticFlipbookFrame *)self initWithPresentationTime:uint64 frameId:v6 apl:v9 aplDimming:v18 memoryUsage:v20 rawSurfaceFrameRect:v23 inverted:v24 specifier:v25 uuid:v11, v13, v15, v17];

  return v27;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v16 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  xpc_dictionary_set_uint64(dictionaryCopy, [@"presentationTime" UTF8String], self->_presentationTime);
  xpc_dictionary_set_uint64(dictionaryCopy, [@"frameId" UTF8String], self->_frameId);
  xpc_dictionary_set_double(dictionaryCopy, [@"apl" UTF8String], self->_apl);
  xpc_dictionary_set_double(dictionaryCopy, [@"dimming" UTF8String], self->_aplDimming);
  xpc_dictionary_set_uint64(dictionaryCopy, [@"memoryUsage" UTF8String], self->_memoryUsage);
  [@"rawSurfaceFrame" UTF8String];
  x = self->_rawSurfaceFrame.origin.x;
  y = self->_rawSurfaceFrame.origin.y;
  width = self->_rawSurfaceFrame.size.width;
  height = self->_rawSurfaceFrame.size.height;
  BSSerializeCGRectToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(dictionaryCopy, [@"inverted" UTF8String], self->_inverted);
  uTF8String = [@"specifier" UTF8String];
  v10 = xpc_dictionary_create(0, 0, 0);
  [(BLSDiagnosticPresentationDateSpecifier *)self->_specifier encodeWithXPCDictionary:v10];
  xpc_dictionary_set_value(dictionaryCopy, uTF8String, v10);
  uTF8String2 = [@"uuid" UTF8String];
  *uuid = 0;
  v15 = 0;
  [(NSUUID *)self->_uuid getUUIDBytes:uuid];
  v12 = xpc_uuid_create(uuid);
  xpc_dictionary_set_value(dictionaryCopy, uTF8String2, v12);

  v13 = *MEMORY[0x277D85DE8];
}

- (BLSDiagnosticFlipbookFrame)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"presentationTime"];
  v6 = [coderCopy decodeInt64ForKey:@"frameId"];
  [coderCopy decodeFloatForKey:@"apl"];
  v8 = v7;
  [coderCopy decodeFloatForKey:@"dimming"];
  v10 = v9;
  v11 = [coderCopy decodeIntegerForKey:@"memoryUsage"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawSurfaceFrame"];
  [v12 bs_CGRectValue];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [coderCopy decodeBoolForKey:@"inverted"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"specifier"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];

  LODWORD(v24) = v8;
  LODWORD(v25) = v10;
  v26 = [(BLSDiagnosticFlipbookFrame *)self initWithPresentationTime:v5 frameId:v6 apl:v11 aplDimming:v21 memoryUsage:v22 rawSurfaceFrameRect:v23 inverted:v24 specifier:v25 uuid:v14, v16, v18, v20];

  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  presentationTime = self->_presentationTime;
  coderCopy = coder;
  [coderCopy encodeInt64:presentationTime forKey:@"presentationTime"];
  [coderCopy encodeInt64:self->_frameId forKey:@"frameId"];
  *&v5 = self->_apl;
  [coderCopy encodeFloat:@"apl" forKey:v5];
  *&v6 = self->_aplDimming;
  [coderCopy encodeFloat:@"dimming" forKey:v6];
  [coderCopy encodeInteger:self->_memoryUsage forKey:@"memoryUsage"];
  v7 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{self->_rawSurfaceFrame.origin.x, self->_rawSurfaceFrame.origin.y, self->_rawSurfaceFrame.size.width, self->_rawSurfaceFrame.size.height}];
  [coderCopy encodeObject:v7 forKey:@"rawSurfaceFrame"];

  [coderCopy encodeBool:self->_inverted forKey:@"inverted"];
  [coderCopy encodeObject:self->_specifier forKey:@"specifier"];
  [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
}

- (CGRect)rawSurfaceFrame
{
  x = self->_rawSurfaceFrame.origin.x;
  y = self->_rawSurfaceFrame.origin.y;
  width = self->_rawSurfaceFrame.size.width;
  height = self->_rawSurfaceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BLSDiagnosticFlipbookFrameSurfaceProvider)surfaceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_surfaceProvider);

  return WeakRetained;
}

- (void)initWithXPCDictionary:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5(&dword_21FE25000, v0, v1, "specifier missing from encoding: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithXPCDictionary:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5(&dword_21FE25000, v0, v1, "uuid missing from encoding: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end