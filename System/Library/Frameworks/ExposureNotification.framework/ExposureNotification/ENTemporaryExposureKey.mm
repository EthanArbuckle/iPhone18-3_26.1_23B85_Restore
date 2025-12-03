@interface ENTemporaryExposureKey
- (ENTemporaryExposureKey)init;
- (ENTemporaryExposureKey)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)deriveRollingProximityIdentifiersWithBuffer:(id *)buffer count:(unint64_t)count;
- (void)encodeWithXPCObject:(id)object;
- (void)getAEMBytes:(void *)bytes input:(const void *)input length:(unint64_t)length RPI:(id *)i;
@end

@implementation ENTemporaryExposureKey

- (ENTemporaryExposureKey)init
{
  v6.receiver = self;
  v6.super_class = ENTemporaryExposureKey;
  v2 = [(ENTemporaryExposureKey *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_daysSinceOnsetOfSymptoms = 0x7FFFFFFFFFFFFFFFLL;
    v2->_rollingPeriod = 144;
    v4 = v2;
  }

  return v3;
}

- (void)encodeWithXPCObject:(id)object
{
  xdict = object;
  daysSinceOnsetOfSymptoms = self->_daysSinceOnsetOfSymptoms;
  if (daysSinceOnsetOfSymptoms != 0x7FFFFFFFFFFFFFFFLL)
  {
    xpc_dictionary_set_int64(xdict, "dSOS", daysSinceOnsetOfSymptoms);
  }

  diagnosisReportType = self->_diagnosisReportType;
  if (diagnosisReportType)
  {
    xpc_dictionary_set_uint64(xdict, "dRT", diagnosisReportType);
  }

  keyData = self->_keyData;
  if (keyData)
  {
    v7 = keyData;
    v8 = xdict;
    v9 = keyData;
    bytes = [(NSData *)v9 bytes];
    if (bytes)
    {
      v11 = bytes;
    }

    else
    {
      v11 = "";
    }

    v12 = [(NSData *)v9 length];

    xpc_dictionary_set_data(v8, "keyD", v11, v12);
  }

  rollingStartNumber = self->_rollingStartNumber;
  if (rollingStartNumber)
  {
    xpc_dictionary_set_uint64(xdict, "rlSN", rollingStartNumber);
  }

  v14 = xdict;
  if (self->_transmissionRiskLevel)
  {
    xpc_dictionary_set_uint64(xdict, "trRL", self->_transmissionRiskLevel);
    v14 = xdict;
  }

  variantOfConcernType = self->_variantOfConcernType;
  if (variantOfConcernType)
  {
    xpc_dictionary_set_uint64(xdict, "vcRT", variantOfConcernType);
    v14 = xdict;
  }

  xpc_dictionary_set_BOOL(v14, "tekRv", self->_revised);
  xpc_dictionary_set_uint64(xdict, "rlgP", self->_rollingPeriod);
  xpc_dictionary_set_BOOL(xdict, "vaccinated", self->_vaccinated);
}

- (void)deriveRollingProximityIdentifiersWithBuffer:(id *)buffer count:(unint64_t)count
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (![(ENTemporaryExposureKey *)self isValid])
  {
    [ENTemporaryExposureKey deriveRollingProximityIdentifiersWithBuffer:a2 count:self];
  }

  v9[2] = 0;
  v9[3] = 0;
  [(NSData *)self->_keyData bytes];
  if ([(NSData *)self->_keyData length]<= 0xF)
  {
    [(NSData *)self->_keyData length];
  }

  __memcpy_chk();
  v9[0] = 0;
  v9[1] = 0;
  ENRPIKDerive();
  ENRPIDeriveBatch(buffer, v9, self->_rollingStartNumber, count);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getAEMBytes:(void *)bytes input:(const void *)input length:(unint64_t)length RPI:(id *)i
{
  v9 = *MEMORY[0x277D85DE8];
  if (![(ENTemporaryExposureKey *)self isValid])
  {
    [ENTemporaryExposureKey getAEMBytes:a2 input:self length:? RPI:?];
  }

  [(NSData *)self->_keyData bytes];
  if ([(NSData *)self->_keyData length]<= 0xF)
  {
    [(NSData *)self->_keyData length];
  }

  __memcpy_chk();
  ENAEMKDerive();
  ENAEMCrypt();
  v8 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v30 = 0;
  NSAppendPrintF_safe();
  v3 = 0;
  v4 = v3;
  if (self->_revised)
  {
    v29 = v3;
    v21 = "yes";
    NSAppendPrintF_safe();
    v5 = v29;

    v4 = v5;
  }

  v28[2] = v4;
  [(NSData *)self->_keyData bytes];
  [(NSData *)self->_keyData length];
  NSAppendPrintF();
  v6 = v4;

  v28[1] = v6;
  NSAppendPrintF_safe();
  v7 = v6;

  if (self->_daysSinceOnsetOfSymptoms == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = v7;
    v8 = &v27;
  }

  else
  {
    v28[0] = v7;
    v8 = v28;
  }

  NSAppendPrintF_safe();
  v9 = *v8;

  diagnosisReportType = self->_diagnosisReportType;
  if (diagnosisReportType <= 5)
  {
    v11 = off_278A4AFD0[diagnosisReportType];
  }

  v22 = self->_diagnosisReportType;
  NSAppendPrintF_safe();
  v12 = v9;

  rollingPeriod = self->_rollingPeriod;
  NSAppendPrintF_safe();
  v13 = v12;

  rollingStartNumber = self->_rollingStartNumber;
  NSAppendPrintF_safe();
  v14 = v13;

  transmissionRiskLevel = self->_transmissionRiskLevel;
  NSAppendPrintF_safe();
  v15 = v14;

  self->_vaccinated;
  NSAppendPrintF_safe();
  v16 = v15;

  variantOfConcernType = self->_variantOfConcernType;
  if (variantOfConcernType <= 4)
  {
    v18 = off_278A4B000[variantOfConcernType];
  }

  v26 = self->_variantOfConcernType;
  NSAppendPrintF_safe();
  v19 = v16;

  return v16;
}

- (ENTemporaryExposureKey)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ENTemporaryExposureKey *)self init];
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_25;
    }

LABEL_24:
    ENErrorF(2);
    *error = v13 = 0;
    goto LABEL_20;
  }

  if (MEMORY[0x2383EE9C0](objectCopy) != MEMORY[0x277D86468])
  {
    if (!error)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v8 = CUXPCDecodeSInt64RangedEx();
  if (v8 == 6)
  {
    v7->_daysSinceOnsetOfSymptoms = 0;
  }

  else if (v8 == 5)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_0();
  v9 = CUXPCDecodeUInt64RangedEx();
  if (v9 == 6)
  {
    v7->_diagnosisReportType = 0;
  }

  else if (v9 == 5)
  {
    goto LABEL_25;
  }

  if (!CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_0();
  v10 = CUXPCDecodeUInt64RangedEx();
  if (v10 == 6)
  {
    v7->_rollingStartNumber = 0;
  }

  else if (v10 == 5)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_0();
  v11 = CUXPCDecodeUInt64RangedEx();
  if (v11 == 6)
  {
    v7->_transmissionRiskLevel = 0;
  }

  else if (v11 == 5)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_0();
  v12 = CUXPCDecodeUInt64RangedEx();
  if (v12 != 6)
  {
    if (v12 != 5)
    {
      goto LABEL_19;
    }

LABEL_25:
    v13 = 0;
    goto LABEL_20;
  }

  v7->_variantOfConcernType = 0;
LABEL_19:
  v7->_revised = xpc_dictionary_get_BOOL(objectCopy, "tekRv");
  v7->_rollingPeriod = xpc_dictionary_get_uint64(objectCopy, "rlgP");
  v7->_vaccinated = xpc_dictionary_get_BOOL(objectCopy, "vaccinated");
  v13 = v7;
LABEL_20:

  return v13;
}

- (void)deriveRollingProximityIdentifiersWithBuffer:(uint64_t)a1 count:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENCommon.m" lineNumber:558 description:{@"Invalid parameter not satisfying: %@", @"self.valid"}];
}

- (void)getAEMBytes:(uint64_t)a1 input:(uint64_t)a2 length:RPI:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENCommon.m" lineNumber:575 description:{@"Invalid parameter not satisfying: %@", @"self.valid"}];
}

@end