@interface AFPowerContextPolicy
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy;
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy platformContext:(unint64_t)context;
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy siriUIPolicy:(AFPowerContext *)iPolicy;
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy siriUIPolicy:(AFPowerContext *)iPolicy thermalMitigationLevel:(unint64_t)level;
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy siriUIPolicy:(AFPowerContext *)iPolicy thermalMitigationLevel:(unint64_t)level platformContext:(unint64_t)context;
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy thermalMitigationLevel:(unint64_t)level;
- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy thermalMitigationLevel:(unint64_t)level platformContext:(unint64_t)context;
- (AFPowerContextPolicy)initWithCoder:(id)coder;
- (AFPowerContextPolicy)initWithEncodedPolicy:(unint64_t)policy;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[AFPowerContextPolicy encodePolicy](self forKey:{"encodePolicy"), @"AFPowerContextPolicy::encodedPolicy"}];
}

- (AFPowerContextPolicy)initWithCoder:(id)coder
{
  v4 = [coder decodeInt64ForKey:@"AFPowerContextPolicy::encodedPolicy"];

  return [(AFPowerContextPolicy *)self initWithEncodedPolicy:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AFPowerContextPolicy allocWithZone:zone];
  thermalMitigationLevel = self->_thermalMitigationLevel;
  platformContext = self->_platformContext;
  asrAssistantPolicy = self->_asrAssistantPolicy;
  asrDictationPolicy = self->_asrDictationPolicy;
  ttsPolicy = self->_ttsPolicy;
  siriUIPolicy = self->_siriUIPolicy;
  return [(AFPowerContextPolicy *)v4 initWithAsrAssistantPolicy:&asrAssistantPolicy asrDictationPolicy:&asrDictationPolicy ttsPolicy:&ttsPolicy siriUIPolicy:&siriUIPolicy thermalMitigationLevel:thermalMitigationLevel platformContext:platformContext];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  cpuContext = self->_asrAssistantPolicy.cpuContext;
  if (equalCopy)
  {
    [equalCopy asrAssistantPolicy];
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

- (AFPowerContextPolicy)initWithEncodedPolicy:(unint64_t)policy
{
  selfCopy = policy;
  if (policy)
  {
    v8.receiver = self;
    v8.super_class = AFPowerContextPolicy;
    v4 = [(AFPowerContextPolicy *)&v8 init];
    if (v4)
    {
      v5 = vdupq_n_s64(selfCopy);
      *(v4 + 3) = selfCopy & 3;
      v6 = vdupq_n_s64(3uLL);
      *(v4 + 2) = vandq_s8(vshlq_u64(v5, xmmword_1914CFC80), v6);
      *(v4 + 3) = vandq_s8(vshlq_u64(v5, xmmword_1914CFC90), v6);
      *(v4 + 4) = vandq_s8(vshlq_u64(v5, xmmword_1914CFCA0), v6);
      *(v4 + 5) = vandq_s8(vshlq_u64(v5, xmmword_1914CFCB0), v6);
      *(v4 + 6) = vandq_s8(vshlq_u64(v5, xmmword_1914CFCC0), v6);
      *(v4 + 14) = (selfCopy >> 22) & 3;
      *(v4 + 8) = vandq_s8(vshlq_u64(v5, xmmword_1914CFCD0), xmmword_1914CFCE0);
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy platformContext:(unint64_t)context
{
  v10 = *policy;
  v9 = *dictationPolicy;
  v8 = *ttsPolicy;
  memset(v7, 0, sizeof(v7));
  return [(AFPowerContextPolicy *)self initWithAsrAssistantPolicy:&v10 asrDictationPolicy:&v9 ttsPolicy:&v8 siriUIPolicy:v7 thermalMitigationLevel:0 platformContext:context];
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy
{
  v9 = *policy;
  v8 = *dictationPolicy;
  v7 = *ttsPolicy;
  memset(v6, 0, sizeof(v6));
  return [(AFPowerContextPolicy *)self initWithAsrAssistantPolicy:&v9 asrDictationPolicy:&v8 ttsPolicy:&v7 siriUIPolicy:v6 thermalMitigationLevel:0 platformContext:0];
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy thermalMitigationLevel:(unint64_t)level platformContext:(unint64_t)context
{
  v11 = *policy;
  v10 = *dictationPolicy;
  v9 = *ttsPolicy;
  memset(v8, 0, sizeof(v8));
  return [(AFPowerContextPolicy *)self initWithAsrAssistantPolicy:&v11 asrDictationPolicy:&v10 ttsPolicy:&v9 siriUIPolicy:v8 thermalMitigationLevel:level platformContext:context];
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy thermalMitigationLevel:(unint64_t)level
{
  v10 = *policy;
  v9 = *dictationPolicy;
  v8 = *ttsPolicy;
  memset(v7, 0, sizeof(v7));
  return [(AFPowerContextPolicy *)self initWithAsrAssistantPolicy:&v10 asrDictationPolicy:&v9 ttsPolicy:&v8 siriUIPolicy:v7 thermalMitigationLevel:level platformContext:0];
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy siriUIPolicy:(AFPowerContext *)iPolicy
{
  v10 = *policy;
  v9 = *dictationPolicy;
  v8 = *ttsPolicy;
  v7 = *iPolicy;
  return [(AFPowerContextPolicy *)self initWithAsrAssistantPolicy:&v10 asrDictationPolicy:&v9 ttsPolicy:&v8 siriUIPolicy:&v7 thermalMitigationLevel:0 platformContext:0];
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy siriUIPolicy:(AFPowerContext *)iPolicy thermalMitigationLevel:(unint64_t)level
{
  v11 = *policy;
  v10 = *dictationPolicy;
  v9 = *ttsPolicy;
  v8 = *iPolicy;
  return [(AFPowerContextPolicy *)self initWithAsrAssistantPolicy:&v11 asrDictationPolicy:&v10 ttsPolicy:&v9 siriUIPolicy:&v8 thermalMitigationLevel:level platformContext:0];
}

- (AFPowerContextPolicy)initWithAsrAssistantPolicy:(AFPowerContext *)policy asrDictationPolicy:(AFPowerContext *)dictationPolicy ttsPolicy:(AFPowerContext *)ttsPolicy siriUIPolicy:(AFPowerContext *)iPolicy thermalMitigationLevel:(unint64_t)level platformContext:(unint64_t)context
{
  v19.receiver = self;
  v19.super_class = AFPowerContextPolicy;
  result = [(AFPowerContextPolicy *)&v19 init];
  if (result)
  {
    v15 = *&policy->cpuContext;
    result->_asrAssistantPolicy.gpuContext = policy->gpuContext;
    *&result->_asrAssistantPolicy.cpuContext = v15;
    v16 = *&dictationPolicy->cpuContext;
    result->_asrDictationPolicy.gpuContext = dictationPolicy->gpuContext;
    *&result->_asrDictationPolicy.cpuContext = v16;
    v17 = *&ttsPolicy->cpuContext;
    result->_ttsPolicy.gpuContext = ttsPolicy->gpuContext;
    *&result->_ttsPolicy.cpuContext = v17;
    v18 = *&iPolicy->cpuContext;
    result->_siriUIPolicy.gpuContext = iPolicy->gpuContext;
    *&result->_siriUIPolicy.cpuContext = v18;
    result->_thermalMitigationLevel = level;
    result->_platformContext = context;
  }

  return result;
}

@end