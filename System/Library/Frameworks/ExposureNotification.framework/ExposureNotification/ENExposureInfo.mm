@interface ENExposureInfo
- (ENExposureInfo)init;
- (ENExposureInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ENExposureInfo

- (ENExposureInfo)init
{
  v7.receiver = self;
  v7.super_class = ENExposureInfo;
  v2 = [(ENExposureInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    attenuationDurations = v2->_attenuationDurations;
    v2->_attenuationDurations = &unk_284B0F1F8;

    v3->_daysSinceOnsetOfSymptoms = 0x7FFFFFFFFFFFFFFFLL;
    v5 = v3;
  }

  return v3;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  attenuationDurations = self->_attenuationDurations;
  xdict = objectCopy;
  CUXPCEncodeNSArrayOfNSNumber();
  if (self->_attenuationValue)
  {
    xpc_dictionary_set_uint64(xdict, "attV", self->_attenuationValue);
  }

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

  v8 = self->_date;
  v9 = v8;
  if (v8)
  {
    [(NSDate *)v8 timeIntervalSinceReferenceDate];
    if (v10 != 0.0)
    {
      xpc_dictionary_set_double(xdict, "tims", v10);
    }
  }

  duration = self->_duration;
  if (duration != 0.0)
  {
    xpc_dictionary_set_double(xdict, "dura", duration);
  }

  v12 = xdict;
  if (self->_totalRiskScore)
  {
    xpc_dictionary_set_uint64(xdict, "toRS", self->_totalRiskScore);
    v12 = xdict;
  }

  totalRiskScoreFullRange = self->_totalRiskScoreFullRange;
  if (totalRiskScoreFullRange == 0.0)
  {
    metadata = self->_metadata;
    CFDictionaryGetDouble();
    v12 = xdict;
  }

  if (totalRiskScoreFullRange != 0.0)
  {
    xpc_dictionary_set_double(xdict, "toRSFR", totalRiskScoreFullRange);
    v12 = xdict;
  }

  xpc_dictionary_set_uint64(v12, "trRL", self->_transmissionRiskLevel);
}

- (id)description
{
  NSAppendPrintF_safe();
  v3 = 0;
  v4 = v3;
  if (self->_attenuationValue)
  {
    v25 = v3;
    attenuationValue = self->_attenuationValue;
    NSAppendPrintF_safe();
    v5 = v25;

    v4 = v5;
  }

  v6 = self->_attenuationDurations;
  if ([(NSArray *)v6 count])
  {
    NSAppendPrintF();
    v7 = v4;

    v4 = v7;
  }

  date = self->_date;
  if (date)
  {
    v19 = date;
    NSAppendPrintF_safe();
    v9 = v4;

    v4 = v9;
  }

  if (self->_duration > 0.0)
  {
    duration = self->_duration;
    NSAppendPrintF_safe();
    v10 = v4;

    v4 = v10;
  }

  if (self->_daysSinceOnsetOfSymptoms != 0x7FFFFFFFFFFFFFFFLL)
  {
    daysSinceOnsetOfSymptoms = self->_daysSinceOnsetOfSymptoms;
    NSAppendPrintF_safe();
    v11 = v4;

    v4 = v11;
  }

  diagnosisReportType = self->_diagnosisReportType;
  if (diagnosisReportType)
  {
    if (diagnosisReportType <= 5)
    {
      v13 = off_278A4B258[diagnosisReportType - 1];
    }

    NSAppendPrintF_safe();
    v14 = v4;

    v4 = v14;
  }

  transmissionRiskLevel = self->_transmissionRiskLevel;
  NSAppendPrintF_safe();
  v15 = v4;

  if (self->_totalRiskScore)
  {
    totalRiskScoreFullRange = self->_totalRiskScoreFullRange;
    totalRiskScore = self->_totalRiskScore;
    NSAppendPrintF_safe();
    v16 = v15;

    v15 = v16;
  }

  return v15;
}

- (ENExposureInfo)initWithXPCObject:(id)object error:(id *)error
{
  v21[2] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = [(ENExposureInfo *)self init];
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_30;
    }

LABEL_29:
    ENErrorF(2);
    *error = v17 = 0;
    goto LABEL_25;
  }

  if (MEMORY[0x2383EE9C0](objectCopy) != MEMORY[0x277D86468])
  {
    if (!error)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1();
  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 == 6)
  {
    v7->_attenuationValue = 0;
  }

  else if (v8 == 5)
  {
    goto LABEL_30;
  }

  if (!OUTLINED_FUNCTION_2())
  {
    goto LABEL_30;
  }

  v9 = OUTLINED_FUNCTION_4();
  if (v9 == 6)
  {
    v7->_daysSinceOnsetOfSymptoms = 0;
  }

  else if (v9 == 5)
  {
    goto LABEL_30;
  }

  v10 = CUXPCDecodeUInt64RangedEx();
  if (v10 == 6)
  {
    v7->_diagnosisReportType = 0;
  }

  else if (v10 == 5)
  {
    goto LABEL_30;
  }

  if (!OUTLINED_FUNCTION_2())
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1();
  v11 = CUXPCDecodeUInt64RangedEx();
  if (v11 == 6)
  {
    v7->_totalRiskScore = 0;
  }

  else if (v11 == 5)
  {
    goto LABEL_30;
  }

  if (!OUTLINED_FUNCTION_2())
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1();
  v12 = CUXPCDecodeUInt64RangedEx();
  if (v12 != 6)
  {
    if (v12 != 5)
    {
      goto LABEL_22;
    }

LABEL_30:
    v17 = 0;
    goto LABEL_25;
  }

  v7->_transmissionRiskLevel = 0;
LABEL_22:
  attenuationDurations = v7->_attenuationDurations;
  if (!attenuationDurations)
  {
    attenuationDurations = MEMORY[0x277CBEBF8];
  }

  v20[1] = @"totalRiskScoreFullRange";
  v21[0] = attenuationDurations;
  v20[0] = @"attenuationDurations";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v7->_totalRiskScoreFullRange];
  v21[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  metadata = v7->_metadata;
  v7->_metadata = v15;

  v17 = v7;
LABEL_25:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

@end