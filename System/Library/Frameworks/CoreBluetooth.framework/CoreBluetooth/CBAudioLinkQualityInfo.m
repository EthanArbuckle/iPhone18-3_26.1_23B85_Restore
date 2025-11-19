@interface CBAudioLinkQualityInfo
- (BOOL)isEqual:(id)a3;
- (CBAudioLinkQualityInfo)initWithCoder:(id)a3;
- (CBAudioLinkQualityInfo)initWithDictionary:(id)a3 error:(id *)a4;
- (CBAudioLinkQualityInfo)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation CBAudioLinkQualityInfo

- (CBAudioLinkQualityInfo)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  objc_opt_class();
  NSDecodeNSDictionaryOfClassesIfPresent();

  v5 = [(CBAudioLinkQualityInfo *)self initWithDictionary:0 error:0];
  return v5;
}

- (CBAudioLinkQualityInfo)initWithDictionary:(id)a3 error:(id *)a4
{
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  if (v12)
  {
    self = [(CBAudioLinkQualityInfo *)self initWithXPCObject:v12 error:a4];
    v13 = self;
  }

  else if (a4)
  {
    CBErrorF(-6700, "CBControllerInfo convert XPC dict failed", v6, v7, v8, v9, v10, v11, v15);
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dictionaryRepresentation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(CBAudioLinkQualityInfo *)self encodeWithXPCObject:v3];
  v4 = CUXPCCreateCFObjectFromXPCObject();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = v6;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CBAudioLinkQualityInfo *)self dictionaryRepresentation];
  if (v4)
  {
    [v5 encodeObject:v4 forKey:@"auLQ"];
  }
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_aosState)
  {
    xpc_dictionary_set_uint64(v4, "aos", self->_aosState);
  }

  bitRate = self->_bitRate;
  if (bitRate)
  {
    xpc_dictionary_set_uint64(v5, "auBR", bitRate);
  }

  if (self->_btBand)
  {
    xpc_dictionary_set_uint64(v5, "btBd", self->_btBand);
  }

  if (self->_codecType)
  {
    xpc_dictionary_set_int64(v5, "auCT", self->_codecType);
  }

  deviceName = self->_deviceName;
  xdict = v5;
  v8 = [(NSString *)deviceName UTF8String];
  if (v8)
  {
    xpc_dictionary_set_string(xdict, "dvNm", v8);
  }

  jitterBufferSeconds = self->_jitterBufferSeconds;
  if (jitterBufferSeconds != 0.0)
  {
    xpc_dictionary_set_double(xdict, "jtBf", jitterBufferSeconds);
  }

  if (self->_noiseFloor90)
  {
    xpc_dictionary_set_int64(xdict, "noFl", self->_noiseFloor90);
  }

  retransmitRate = self->_retransmitRate;
  v11 = xdict;
  if (retransmitRate != 0.0)
  {
    xpc_dictionary_set_double(xdict, "rtmR", retransmitRate);
    v11 = xdict;
  }

  if (self->_rssiAverage)
  {
    xpc_dictionary_set_int64(xdict, "rsAv", self->_rssiAverage);
    v11 = xdict;
  }

  if (self->_signalToNoiseRatio)
  {
    xpc_dictionary_set_int64(xdict, "snr", self->_signalToNoiseRatio);
    v11 = xdict;
  }
}

- (id)descriptionWithLevel:(int)a3
{
  v4 = a3;
  if (qword_1ED7C1F90 != -1)
  {
    [CBAudioLinkQualityInfo descriptionWithLevel:];
  }

  v5 = qword_1ED7C1F88;
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 stringFromDate:v6];

  if (v4 > 0x14)
  {
    v46 = 0;
    NSAppendPrintF_safe();
    v45 = 0;
    aosState = self->_aosState;
    NSAppendPrintF_safe();
    v10 = v45;

    v44 = v10;
    v31 = self->_bitRate / 0x3E8uLL;
    NSAppendPrintF_safe();
    v11 = v10;

    v43 = v11;
    if (self->_codecType <= 0x1Du)
    {
      self->_codecType;
    }

    NSAppendPrintF_safe();
    v13 = v43;

    v42[6] = v13;
    self->_btBand;
    NSAppendPrintF_safe();
    v20 = v13;

    v42[5] = v20;
    self->_deviceName;
    NSAppendPrintF_safe();
    v21 = v20;

    v42[4] = v21;
    v37 = self->_jitterBufferSeconds * 1000.0;
    NSAppendPrintF_safe();
    v22 = v21;

    v42[3] = v22;
    noiseFloor90 = self->_noiseFloor90;
    NSAppendPrintF_safe();
    v23 = v22;

    v42[2] = v23;
    v39 = self->_retransmitRate * 100.0;
    NSAppendPrintF_safe();
    v24 = v23;

    v42[1] = v24;
    rssiAverage = self->_rssiAverage;
    NSAppendPrintF_safe();
    v18 = v24;

    signalToNoiseRatio = self->_signalToNoiseRatio;
    v42[0] = v18;
    v19 = v42;
  }

  else
  {
    v51 = 0;
    NSAppendPrintF_safe();
    v50 = 0;
    self->_aosState;
    NSAppendPrintF_safe();
    v8 = v50;

    v49 = v8;
    v29 = self->_bitRate / 0x3E8uLL;
    NSAppendPrintF_safe();
    v9 = v8;

    v48 = v9;
    if (self->_codecType <= 0x1Du)
    {
      self->_codecType;
    }

    NSAppendPrintF_safe();
    v12 = v48;

    v47[5] = v12;
    self->_btBand;
    NSAppendPrintF_safe();
    v14 = v12;

    v47[4] = v14;
    v32 = self->_jitterBufferSeconds * 1000.0;
    NSAppendPrintF_safe();
    v15 = v14;

    v47[3] = v15;
    v33 = self->_noiseFloor90;
    NSAppendPrintF_safe();
    v16 = v15;

    v47[2] = v16;
    v34 = self->_retransmitRate * 100.0;
    NSAppendPrintF_safe();
    v17 = v16;

    v47[1] = v17;
    v35 = self->_rssiAverage;
    NSAppendPrintF_safe();
    v18 = v17;

    v47[0] = v18;
    v36 = self->_signalToNoiseRatio;
    v19 = v47;
  }

  NSAppendPrintF_safe();
  v25 = *v19;

  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = &stru_1F40009C8;
  }

  v27 = v26;

  return v26;
}

void __47__CBAudioLinkQualityInfo_descriptionWithLevel___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED7C1F88;
  qword_1ED7C1F88 = v0;

  [qword_1ED7C1F88 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v2 = qword_1ED7C1F88;
  v3 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v2 setTimeZone:v3];
}

- (CBAudioLinkQualityInfo)initWithXPCObject:(id)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_19(self, a2, a3);
  v7 = OUTLINED_FUNCTION_18();
  if (!v7)
  {
    if (v5)
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_3_4();
      *v5 = CBErrorF(-6756, "%@ init failed", v43, v44, v45, v46, v47, v48, v50);
    }

    goto LABEL_33;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v49 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v50);
      OUTLINED_FUNCTION_16(v49);
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_0();
  v14 = OUTLINED_FUNCTION_3_1();
  if (v14 == 6)
  {
    OUTLINED_FUNCTION_5_4(v14, v15, v16, v17, v18, v19, v20, v21, v50, 0);
  }

  else if (v14 == 5)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_0();
  v22 = OUTLINED_FUNCTION_5();
  if (v22 == 6)
  {
    *(v7 + 16) = 0;
  }

  else if (v22 == 5)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_0();
  v23 = OUTLINED_FUNCTION_3_1();
  if (v23 == 6)
  {
    OUTLINED_FUNCTION_11(v23, v24, v25, v26, v27, v28, v29, v30, v50, 0);
  }

  else if (v23 == 5)
  {
    goto LABEL_33;
  }

  v31 = OUTLINED_FUNCTION_1_3();
  if (v31 == 6)
  {
    OUTLINED_FUNCTION_10_1(v31, v32, v33, v34, v35, v36, v37, v38, v50, 0);
  }

  else if (v31 == 5)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_33;
  }

  v39 = OUTLINED_FUNCTION_1_3();
  if (v39 == 6)
  {
    *(v7 + 11) = 0;
  }

  else if (v39 == 5)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_33;
  }

  v40 = OUTLINED_FUNCTION_1_3();
  if (v40 == 6)
  {
    *(v7 + 12) = 0;
  }

  else if (v40 == 5)
  {
    goto LABEL_33;
  }

  v41 = OUTLINED_FUNCTION_1_3();
  if (v41 != 6)
  {
    if (v41 != 5)
    {
      goto LABEL_27;
    }

LABEL_33:
    v6 = 0;
    goto LABEL_28;
  }

  *(v7 + 13) = 0;
LABEL_27:
  v6 = v7;
LABEL_28:

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = 0;
    goto LABEL_19;
  }

  v5 = v4;
  aosState = self->_aosState;
  if (aosState != [v5 aosState])
  {
    goto LABEL_17;
  }

  bitRate = self->_bitRate;
  if (bitRate != [v5 bitRate])
  {
    goto LABEL_17;
  }

  btBand = self->_btBand;
  if (btBand != [v5 btBand])
  {
    goto LABEL_17;
  }

  codecType = self->_codecType;
  if (codecType != [v5 codecType])
  {
    goto LABEL_17;
  }

  deviceName = self->_deviceName;
  v11 = [v5 deviceName];
  v12 = deviceName;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if ((v12 != 0) == (v13 == 0))
    {

LABEL_17:
      v23 = 0;
      goto LABEL_18;
    }

    v15 = [(NSString *)v12 isEqual:v13];

    if (!v15)
    {
      goto LABEL_17;
    }
  }

  jitterBufferSeconds = self->_jitterBufferSeconds;
  [v5 jitterBufferSeconds];
  if (jitterBufferSeconds != v17)
  {
    goto LABEL_17;
  }

  noiseFloor90 = self->_noiseFloor90;
  if (noiseFloor90 != [v5 noiseFloor90])
  {
    goto LABEL_17;
  }

  retransmitRate = self->_retransmitRate;
  [v5 retransmitRate];
  if (retransmitRate != v20)
  {
    goto LABEL_17;
  }

  rssiAverage = self->_rssiAverage;
  if (rssiAverage != [v5 rssiAverage])
  {
    goto LABEL_17;
  }

  signalToNoiseRatio = self->_signalToNoiseRatio;
  v23 = signalToNoiseRatio == [v5 signalToNoiseRatio];
LABEL_18:

LABEL_19:
  return v23;
}

@end