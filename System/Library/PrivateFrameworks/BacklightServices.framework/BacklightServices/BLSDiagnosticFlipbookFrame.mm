@interface BLSDiagnosticFlipbookFrame
+ (id)createWithFrame:(id)a3;
- (BLSDiagnosticFlipbookFrame)initWithCoder:(id)a3;
- (BLSDiagnosticFlipbookFrame)initWithFrame:(id)a3;
- (BLSDiagnosticFlipbookFrame)initWithPresentationTime:(unint64_t)a3 frameId:(unint64_t)a4 apl:(float)a5 aplDimming:(float)a6 memoryUsage:(unint64_t)a7 rawSurfaceFrameRect:(CGRect)a8 inverted:(BOOL)a9 specifier:(id)a10 uuid:(id)a11;
- (BLSDiagnosticFlipbookFrame)initWithXPCDictionary:(id)a3;
- (BLSDiagnosticFlipbookFrameSurfaceProvider)surfaceProvider;
- (BOOL)isEqual:(id)a3;
- (CGRect)rawSurfaceFrame;
- (__IOSurface)rawSurface;
- (__IOSurface)surface;
- (id)bls_loggingString;
- (id)bls_shortLoggingString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSDiagnosticFlipbookFrame

+ (id)createWithFrame:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[a1 alloc] initWithFrame:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BLSDiagnosticFlipbookFrame)initWithFrame:(id)a3
{
  v4 = a3;
  v5 = [v4 presentationTime];
  v6 = [v4 frameId];
  [v4 apl];
  v8 = v7;
  [v4 aplDimming];
  v10 = v9;
  v11 = [v4 memoryUsage];
  [v4 rawSurfaceFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v4 isInverted];
  v21 = [v4 bls_specifier];
  v22 = [v4 bls_uuid];

  LODWORD(v23) = v8;
  LODWORD(v24) = v10;
  v25 = [(BLSDiagnosticFlipbookFrame *)self initWithPresentationTime:v5 frameId:v6 apl:v11 aplDimming:v20 memoryUsage:v21 rawSurfaceFrameRect:v22 inverted:v23 specifier:v24 uuid:v13, v15, v17, v19];

  return v25;
}

- (BLSDiagnosticFlipbookFrame)initWithPresentationTime:(unint64_t)a3 frameId:(unint64_t)a4 apl:(float)a5 aplDimming:(float)a6 memoryUsage:(unint64_t)a7 rawSurfaceFrameRect:(CGRect)a8 inverted:(BOOL)a9 specifier:(id)a10 uuid:(id)a11
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v23 = a10;
  v24 = a11;
  v32.receiver = self;
  v32.super_class = BLSDiagnosticFlipbookFrame;
  v25 = [(BLSDiagnosticFlipbookFrame *)&v32 init];
  v26 = v25;
  if (v25)
  {
    v25->_presentationTime = a3;
    v25->_frameId = a4;
    v25->_apl = a5;
    v25->_aplDimming = a6;
    v25->_memoryUsage = a7;
    v25->_rawSurfaceFrame.origin.x = x;
    v25->_rawSurfaceFrame.origin.y = y;
    v25->_rawSurfaceFrame.size.width = width;
    v25->_rawSurfaceFrame.size.height = height;
    v25->_inverted = a9;
    v27 = [BLSDiagnosticPresentationDateSpecifier createWithSpecifier:v23];
    specifier = v26->_specifier;
    v26->_specifier = v27;

    if (v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = [MEMORY[0x277CCAD78] UUID];
    }

    uuid = v26->_uuid;
    v26->_uuid = v29;
  }

  return v26;
}

- (__IOSurface)surface
{
  v3 = [(BLSDiagnosticFlipbookFrame *)self surfaceProvider];
  v4 = [v3 surfaceForFrame:self];

  return v4;
}

- (__IOSurface)rawSurface
{
  v3 = [(BLSDiagnosticFlipbookFrame *)self surfaceProvider];
  v4 = [v3 rawSurfaceForFrame:self];

  return v4;
}

- (id)bls_loggingString
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = BLSLoggingStringForMachTime([(BLSDiagnosticFlipbookFrame *)self presentationTime]);
  [v3 appendString:v4 withName:@"presentationTime"];

  v5 = [v3 appendUInt64:-[BLSDiagnosticFlipbookFrame frameId](self withName:{"frameId"), @"frameId"}];
  v6 = [(BLSDiagnosticFlipbookFrame *)self bls_specifier];
  v7 = [v6 bls_loggingString];
  v8 = [v3 appendObject:v7 withName:@"specifier"];

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
  v18 = [(BLSDiagnosticFlipbookFrame *)self uuid];
  v19 = [v18 UUIDString];
  v20 = [v3 appendObject:v19 withName:@"uuid"];

  v21 = [v3 build];

  return v21;
}

- (id)bls_shortLoggingString
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUInt64:-[BLSDiagnosticFlipbookFrame frameId](self withName:{"frameId"), @"frameId"}];
  v5 = [(BLSDiagnosticFlipbookFrame *)self bls_specifier];
  if (v5)
  {
    v6 = [(BLSDiagnosticFlipbookFrame *)self bls_specifier];
    v7 = [v6 bls_shortLoggingString];
    [v3 appendString:v7 withName:&stru_28339C970];
  }

  else
  {
    v6 = BLSShortLoggingStringForMachTime([(BLSDiagnosticFlipbookFrame *)self presentationTime]);
    [v3 appendString:v6 withName:&stru_28339C970];
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
  v17 = [(BLSDiagnosticFlipbookFrame *)self uuid];
  v18 = [v17 UUIDString];
  v19 = [v3 appendObject:v18 withName:@"uuid"];

  v20 = [v3 build];

  return v20;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInt64:{-[BLSDiagnosticFlipbookFrame presentationTime](self, "presentationTime")}];
  v5 = [v3 appendInt64:{-[BLSDiagnosticFlipbookFrame frameId](self, "frameId")}];
  v6 = [(BLSDiagnosticFlipbookFrame *)self bls_specifier];
  v7 = [v3 appendUnsignedInteger:{objc_msgSend(v6, "hash")}];

  v8 = [v3 appendUnsignedInteger:{-[BLSDiagnosticFlipbookFrame memoryUsage](self, "memoryUsage")}];
  [(BLSDiagnosticFlipbookFrame *)self rawSurfaceFrame];
  v9 = [v3 appendCGRect:?];
  [(BLSDiagnosticFlipbookFrame *)self apl];
  v10 = [v3 appendFloat:?];
  [(BLSDiagnosticFlipbookFrame *)self aplDimming];
  v11 = [v3 appendFloat:?];
  v12 = [v3 appendBool:{-[BLSDiagnosticFlipbookFrame isInverted](self, "isInverted")}];
  v13 = [v3 hash];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(BLSDiagnosticFlipbookFrame *)self presentationTime];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke;
  v57[3] = &unk_278428B28;
  v7 = v4;
  v58 = v7;
  v8 = [v5 appendInt64:v6 counterpart:v57];
  v9 = [(BLSDiagnosticFlipbookFrame *)self frameId];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke_2;
  v55[3] = &unk_278428B28;
  v10 = v7;
  v56 = v10;
  v11 = [v5 appendInt64:v9 counterpart:v55];
  v12 = [(BLSDiagnosticFlipbookFrame *)self bls_specifier];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke_3;
  v53[3] = &unk_278428FD0;
  v13 = v10;
  v54 = v13;
  v14 = [v5 appendObject:v12 counterpart:v53];

  v15 = [(BLSDiagnosticFlipbookFrame *)self memoryUsage];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke_4;
  v51[3] = &unk_278428FF8;
  v16 = v13;
  v52 = v16;
  v17 = [v5 appendUnsignedInteger:v15 counterpart:v51];
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
  v36 = [(BLSDiagnosticFlipbookFrame *)self isInverted];
  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = __38__BLSDiagnosticFlipbookFrame_isEqual___block_invoke_8;
  v43 = &unk_278428FA8;
  v44 = v33;
  v37 = v33;
  v38 = [v5 appendBool:v36 counterpart:&v40];
  LOBYTE(v33) = [v5 isEqual];

  return v33;
}

- (BLSDiagnosticFlipbookFrame)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  uint64 = xpc_dictionary_get_uint64(v4, [@"presentationTime" UTF8String]);
  v6 = xpc_dictionary_get_uint64(v4, [@"frameId" UTF8String]);
  v7 = xpc_dictionary_get_double(v4, [@"apl" UTF8String]);
  v8 = xpc_dictionary_get_double(v4, [@"dimming" UTF8String]);
  v9 = xpc_dictionary_get_uint64(v4, [@"memoryUsage" UTF8String]);
  [@"rawSurfaceFrame" UTF8String];
  BSDeserializeCGRectFromXPCDictionaryWithKey();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = xpc_dictionary_get_BOOL(v4, [@"inverted" UTF8String]);
  v19 = xpc_dictionary_get_dictionary(v4, [@"specifier" UTF8String]);
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

  v22 = xpc_dictionary_get_value(v4, [@"uuid" UTF8String]);
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

- (void)encodeWithXPCDictionary:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  xpc_dictionary_set_uint64(v4, [@"presentationTime" UTF8String], self->_presentationTime);
  xpc_dictionary_set_uint64(v4, [@"frameId" UTF8String], self->_frameId);
  xpc_dictionary_set_double(v4, [@"apl" UTF8String], self->_apl);
  xpc_dictionary_set_double(v4, [@"dimming" UTF8String], self->_aplDimming);
  xpc_dictionary_set_uint64(v4, [@"memoryUsage" UTF8String], self->_memoryUsage);
  [@"rawSurfaceFrame" UTF8String];
  x = self->_rawSurfaceFrame.origin.x;
  y = self->_rawSurfaceFrame.origin.y;
  width = self->_rawSurfaceFrame.size.width;
  height = self->_rawSurfaceFrame.size.height;
  BSSerializeCGRectToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(v4, [@"inverted" UTF8String], self->_inverted);
  v9 = [@"specifier" UTF8String];
  v10 = xpc_dictionary_create(0, 0, 0);
  [(BLSDiagnosticPresentationDateSpecifier *)self->_specifier encodeWithXPCDictionary:v10];
  xpc_dictionary_set_value(v4, v9, v10);
  v11 = [@"uuid" UTF8String];
  *uuid = 0;
  v15 = 0;
  [(NSUUID *)self->_uuid getUUIDBytes:uuid];
  v12 = xpc_uuid_create(uuid);
  xpc_dictionary_set_value(v4, v11, v12);

  v13 = *MEMORY[0x277D85DE8];
}

- (BLSDiagnosticFlipbookFrame)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"presentationTime"];
  v6 = [v4 decodeInt64ForKey:@"frameId"];
  [v4 decodeFloatForKey:@"apl"];
  v8 = v7;
  [v4 decodeFloatForKey:@"dimming"];
  v10 = v9;
  v11 = [v4 decodeIntegerForKey:@"memoryUsage"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawSurfaceFrame"];
  [v12 bs_CGRectValue];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v4 decodeBoolForKey:@"inverted"];
  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"specifier"];
  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];

  LODWORD(v24) = v8;
  LODWORD(v25) = v10;
  v26 = [(BLSDiagnosticFlipbookFrame *)self initWithPresentationTime:v5 frameId:v6 apl:v11 aplDimming:v21 memoryUsage:v22 rawSurfaceFrameRect:v23 inverted:v24 specifier:v25 uuid:v14, v16, v18, v20];

  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  presentationTime = self->_presentationTime;
  v8 = a3;
  [v8 encodeInt64:presentationTime forKey:@"presentationTime"];
  [v8 encodeInt64:self->_frameId forKey:@"frameId"];
  *&v5 = self->_apl;
  [v8 encodeFloat:@"apl" forKey:v5];
  *&v6 = self->_aplDimming;
  [v8 encodeFloat:@"dimming" forKey:v6];
  [v8 encodeInteger:self->_memoryUsage forKey:@"memoryUsage"];
  v7 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{self->_rawSurfaceFrame.origin.x, self->_rawSurfaceFrame.origin.y, self->_rawSurfaceFrame.size.width, self->_rawSurfaceFrame.size.height}];
  [v8 encodeObject:v7 forKey:@"rawSurfaceFrame"];

  [v8 encodeBool:self->_inverted forKey:@"inverted"];
  [v8 encodeObject:self->_specifier forKey:@"specifier"];
  [v8 encodeObject:self->_uuid forKey:@"uuid"];
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