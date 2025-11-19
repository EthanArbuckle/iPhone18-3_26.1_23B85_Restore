@interface AFPowerContextPolicy
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5;
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5 platformContext:(unint64_t)a6;
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5 siriUIPolicy:(AFPowerContext *)a6;
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5 siriUIPolicy:(AFPowerContext *)a6 thermalMitigationLevel:(unint64_t)a7;
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5 siriUIPolicy:(AFPowerContext *)a6 thermalMitigationLevel:(unint64_t)a7 platformContext:(unint64_t)a8;
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5 thermalMitigationLevel:(unint64_t)a6;
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5 thermalMitigationLevel:(unint64_t)a6 platformContext:(unint64_t)a7;
- (AFPowerContextPolicy)initWithCoder:(id)a3;
- (AFPowerContextPolicy)initWithEncodedPolicy:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFPowerContextPolicy

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = AFPowerContextPolicy;
  v4 = [(AFPowerContextPolicy *)&v7 description];
  v5 = [v3 stringWithString:v4];

  [v5 appendFormat:@" -\nASR Assistant Power Context { cpu:%lu, ane:%lu, gpu:%lu }\n", self->_asrAssistantPolicy.cpuContext, self->_asrAssistantPolicy.aneContext, self->_asrAssistantPolicy.gpuContext];
  [v5 appendFormat:@"ASR Dictation Power Context { cpu:%lu, ane:%lu, gpu:%lu }\n", self->_asrDictationPolicy.cpuContext, self->_asrDictationPolicy.aneContext, self->_asrDictationPolicy.gpuContext];
  [v5 appendFormat:@"TTS Power Context { cpu:%lu, ane:%lu, gpu:%lu }\n", self->_ttsPolicy.cpuContext, self->_ttsPolicy.aneContext, self->_ttsPolicy.gpuContext];
  [v5 appendFormat:@"SiriUI Power Context { cpu:%lu, ane:%lu, gpu:%lu }\n", self->_siriUIPolicy.cpuContext, self->_siriUIPolicy.aneContext, self->_siriUIPolicy.gpuContext];
  [v5 appendFormat:@"Thermal Mitigation Level #uxm #tml:%lu\n", self->_thermalMitigationLevel];
  [v5 appendFormat:@"Encoded Platform Context:%lu", self->_platformContext];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[AFPowerContextPolicy encodePolicy](self forKey:{"encodePolicy"), @"AFPowerContextPolicy::encodedPolicy"}];
}

- (AFPowerContextPolicy)initWithCoder:(id)a3
{
  v4 = [a3 decodeInt64ForKey:@"AFPowerContextPolicy::encodedPolicy"];

  return [(AFPowerContextPolicy *)self initWithEncodedPolicy:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AFPowerContextPolicy allocWithZone:a3];
  thermalMitigationLevel = self->_thermalMitigationLevel;
  platformContext = self->_platformContext;
  asrAssistantPolicy = self->_asrAssistantPolicy;
  asrDictationPolicy = self->_asrDictationPolicy;
  ttsPolicy = self->_ttsPolicy;
  siriUIPolicy = self->_siriUIPolicy;
  return [(AFPowerContextPolicy *)v4 initWithAsrAssistantPolicy:&asrAssistantPolicy asrDictationPolicy:&asrDictationPolicy ttsPolicy:&ttsPolicy siriUIPolicy:&siriUIPolicy thermalMitigationLevel:thermalMitigationLevel platformContext:platformContext];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  cpuContext = self->_asrAssistantPolicy.cpuContext;
  if (v4)
  {
    [v4 asrAssistantPolicy];
    if (cpuContext != v34)
    {
      goto LABEL_28;
    }

    aneContext = self->_asrAssistantPolicy.aneContext;
    [v5 asrAssistantPolicy];
    if (aneContext != v33)
    {
      goto LABEL_28;
    }

    gpuContext = self->_asrAssistantPolicy.gpuContext;
    [v5 asrAssistantPolicy];
    if (gpuContext != v32)
    {
      goto LABEL_28;
    }

    v9 = self->_asrDictationPolicy.cpuContext;
    [v5 asrDictationPolicy];
    if (v9 != v31)
    {
      goto LABEL_28;
    }

    v10 = self->_asrDictationPolicy.aneContext;
    [v5 asrDictationPolicy];
    if (v10 != v30)
    {
      goto LABEL_28;
    }

    v11 = self->_asrDictationPolicy.gpuContext;
    [v5 asrDictationPolicy];
    if (v11 != v29)
    {
      goto LABEL_28;
    }

    v12 = self->_ttsPolicy.cpuContext;
    [v5 ttsPolicy];
    if (v12 != v28)
    {
      goto LABEL_28;
    }

    v13 = self->_ttsPolicy.aneContext;
    [v5 ttsPolicy];
    if (v13 != v27)
    {
      goto LABEL_28;
    }

    v14 = self->_ttsPolicy.gpuContext;
    [v5 ttsPolicy];
    if (v14 != v26)
    {
      goto LABEL_28;
    }

    v15 = self->_siriUIPolicy.cpuContext;
    [v5 siriUIPolicy];
    if (v15 != v25)
    {
      goto LABEL_28;
    }

    v16 = self->_siriUIPolicy.aneContext;
    [v5 siriUIPolicy];
    if (v16 != v24)
    {
      goto LABEL_28;
    }

    v17 = self->_siriUIPolicy.gpuContext;
    [v5 siriUIPolicy];
    v18 = v23;
  }

  else
  {
    if (cpuContext)
    {
      goto LABEL_28;
    }

    if (self->_asrAssistantPolicy.aneContext)
    {
      goto LABEL_28;
    }

    if (self->_asrAssistantPolicy.gpuContext)
    {
      goto LABEL_28;
    }

    if (self->_asrDictationPolicy.cpuContext)
    {
      goto LABEL_28;
    }

    if (self->_asrDictationPolicy.aneContext)
    {
      goto LABEL_28;
    }

    if (self->_asrDictationPolicy.gpuContext)
    {
      goto LABEL_28;
    }

    if (self->_ttsPolicy.cpuContext)
    {
      goto LABEL_28;
    }

    if (self->_ttsPolicy.aneContext)
    {
      goto LABEL_28;
    }

    if (self->_ttsPolicy.gpuContext)
    {
      goto LABEL_28;
    }

    if (self->_siriUIPolicy.cpuContext)
    {
      goto LABEL_28;
    }

    v18 = self->_siriUIPolicy.aneContext;
    if (v18)
    {
      goto LABEL_28;
    }

    v17 = self->_siriUIPolicy.gpuContext;
  }

  if (v17 != v18 || (thermalMitigationLevel = self->_thermalMitigationLevel, thermalMitigationLevel != [v5 thermalMitigationLevel]))
  {
LABEL_28:
    v21 = 0;
    goto LABEL_29;
  }

  platformContext = self->_platformContext;
  v21 = platformContext == [v5 platformContext];
LABEL_29:

  return v21;
}

- (AFPowerContextPolicy)initWithEncodedPolicy:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v8.receiver = self;
    v8.super_class = AFPowerContextPolicy;
    v4 = [(AFPowerContextPolicy *)&v8 init];
    if (v4)
    {
      v5 = vdupq_n_s64(v3);
      *(v4 + 3) = v3 & 3;
      v6 = vdupq_n_s64(3uLL);
      *(v4 + 2) = vandq_s8(vshlq_u64(v5, xmmword_1914CFC80), v6);
      *(v4 + 3) = vandq_s8(vshlq_u64(v5, xmmword_1914CFC90), v6);
      *(v4 + 4) = vandq_s8(vshlq_u64(v5, xmmword_1914CFCA0), v6);
      *(v4 + 5) = vandq_s8(vshlq_u64(v5, xmmword_1914CFCB0), v6);
      *(v4 + 6) = vandq_s8(vshlq_u64(v5, xmmword_1914CFCC0), v6);
      *(v4 + 14) = (v3 >> 22) & 3;
      *(v4 + 8) = vandq_s8(vshlq_u64(v5, xmmword_1914CFCD0), xmmword_1914CFCE0);
    }

    self = v4;
    v3 = self;
  }

  return v3;
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5 platformContext:(unint64_t)a6
{
  v10 = *a3;
  v9 = *a4;
  v8 = *a5;
  memset(v7, 0, sizeof(v7));
  return [(AFPowerContextPolicy *)self initWithAsrAssistantPolicy:&v10 asrDictationPolicy:&v9 ttsPolicy:&v8 siriUIPolicy:v7 thermalMitigationLevel:0 platformContext:a6];
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5
{
  v9 = *a3;
  v8 = *a4;
  v7 = *a5;
  memset(v6, 0, sizeof(v6));
  return [(AFPowerContextPolicy *)self initWithAsrAssistantPolicy:&v9 asrDictationPolicy:&v8 ttsPolicy:&v7 siriUIPolicy:v6 thermalMitigationLevel:0 platformContext:0];
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5 thermalMitigationLevel:(unint64_t)a6 platformContext:(unint64_t)a7
{
  v11 = *a3;
  v10 = *a4;
  v9 = *a5;
  memset(v8, 0, sizeof(v8));
  return [(AFPowerContextPolicy *)self initWithAsrAssistantPolicy:&v11 asrDictationPolicy:&v10 ttsPolicy:&v9 siriUIPolicy:v8 thermalMitigationLevel:a6 platformContext:a7];
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5 thermalMitigationLevel:(unint64_t)a6
{
  v10 = *a3;
  v9 = *a4;
  v8 = *a5;
  memset(v7, 0, sizeof(v7));
  return [(AFPowerContextPolicy *)self initWithAsrAssistantPolicy:&v10 asrDictationPolicy:&v9 ttsPolicy:&v8 siriUIPolicy:v7 thermalMitigationLevel:a6 platformContext:0];
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5 siriUIPolicy:(AFPowerContext *)a6
{
  v10 = *a3;
  v9 = *a4;
  v8 = *a5;
  v7 = *a6;
  return [(AFPowerContextPolicy *)self initWithAsrAssistantPolicy:&v10 asrDictationPolicy:&v9 ttsPolicy:&v8 siriUIPolicy:&v7 thermalMitigationLevel:0 platformContext:0];
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5 siriUIPolicy:(AFPowerContext *)a6 thermalMitigationLevel:(unint64_t)a7
{
  v11 = *a3;
  v10 = *a4;
  v9 = *a5;
  v8 = *a6;
  return [(AFPowerContextPolicy *)self initWithAsrAssistantPolicy:&v11 asrDictationPolicy:&v10 ttsPolicy:&v9 siriUIPolicy:&v8 thermalMitigationLevel:a7 platformContext:0];
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)a3 asrDictationPolicy:(AFPowerContext *)a4 ttsPolicy:(AFPowerContext *)a5 siriUIPolicy:(AFPowerContext *)a6 thermalMitigationLevel:(unint64_t)a7 platformContext:(unint64_t)a8
{
  v19.receiver = self;
  v19.super_class = AFPowerContextPolicy;
  result = [(AFPowerContextPolicy *)&v19 init];
  if (result)
  {
    v15 = *&a3->cpuContext;
    result->_asrAssistantPolicy.gpuContext = a3->gpuContext;
    *&result->_asrAssistantPolicy.cpuContext = v15;
    v16 = *&a4->cpuContext;
    result->_asrDictationPolicy.gpuContext = a4->gpuContext;
    *&result->_asrDictationPolicy.cpuContext = v16;
    v17 = *&a5->cpuContext;
    result->_ttsPolicy.gpuContext = a5->gpuContext;
    *&result->_ttsPolicy.cpuContext = v17;
    v18 = *&a6->cpuContext;
    result->_siriUIPolicy.gpuContext = a6->gpuContext;
    *&result->_siriUIPolicy.cpuContext = v18;
    result->_thermalMitigationLevel = a7;
    result->_platformContext = a8;
  }

  return result;
}

@end