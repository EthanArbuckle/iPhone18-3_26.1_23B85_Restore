@interface AMSFairPlayDeviceIdentitySession
+ (BOOL)reset:(id *)reset;
+ (id)errorForFPDIStatus:(int)status stage:(unint64_t)stage;
+ (id)stringForStage:(unint64_t)stage;
- (AMSFairPlayDeviceIdentitySession)initWithExistingSession:(unint64_t)session creationDate:(id)date error:(id *)error;
- (AMSFairPlayDeviceIdentitySession)initWithLevel:(int64_t)level error:(id *)error;
- (BOOL)setupSessionWithInitializationResponseData:(id)data error:(id *)error;
- (id)creationDataWithError:(id *)error;
- (id)initializationDataWithCreationResponseData:(id)data error:(id *)error;
- (id)signatureForData:(id)data error:(id *)error;
- (void)dealloc;
@end

@implementation AMSFairPlayDeviceIdentitySession

+ (BOOL)reset:(id *)reset
{
  plsicnq9qs(0);
  v5 = v4;
  if (reset)
  {
    *reset = [AMSFairPlayDeviceIdentitySession errorForFPDIStatus:v4 stage:0];
  }

  return v5 == 0;
}

- (AMSFairPlayDeviceIdentitySession)initWithExistingSession:(unint64_t)session creationDate:(id)date error:(id *)error
{
  dateCopy = date;
  if (session)
  {
    v13.receiver = self;
    v13.super_class = AMSFairPlayDeviceIdentitySession;
    v9 = [(AMSFairPlayDeviceIdentitySession *)&v13 init];
    v10 = v9;
    if (v9)
    {
      v9->_fpdiSession = session;
      objc_storeStrong(&v9->_creationDate, date);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (AMSFairPlayDeviceIdentitySession)initWithLevel:(int64_t)level error:(id *)error
{
  v14.receiver = self;
  v14.super_class = AMSFairPlayDeviceIdentitySession;
  v6 = [(AMSFairPlayDeviceIdentitySession *)&v14 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = jsf09djfs0df(&v6->_attributes);
  if (v8)
  {
    goto LABEL_3;
  }

  if (!level)
  {
    v10 = 1011340354;
LABEL_10:
    v8 = RXm4IJLE3xR(v7[2], v10);
    if (v8)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  if (level == 1)
  {
    v10 = 1379922824;
    goto LABEL_10;
  }

LABEL_11:
  v8 = koqa938msd8(v7[2], 0);
  if (!v8)
  {
LABEL_12:
    date = [MEMORY[0x1E695DF00] date];
    v12 = v7[3];
    v7[3] = date;

    v9 = v7;
    goto LABEL_13;
  }

LABEL_3:
  if (error)
  {
    [AMSFairPlayDeviceIdentitySession errorForFPDIStatus:v8 stage:0];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (void)dealloc
{
  fpdiSession = self->_fpdiSession;
  p_fpdiSession = &self->_fpdiSession;
  if (fpdiSession)
  {
    sldksmfm1n(p_fpdiSession);
  }

  if (self->_attributes)
  {
    fdf324tt5(&self->_attributes);
  }

  v5.receiver = self;
  v5.super_class = AMSFairPlayDeviceIdentitySession;
  [(AMSFairPlayDeviceIdentitySession *)&v5 dealloc];
}

- (id)creationDataWithError:(id *)error
{
  v10 = 0;
  v9 = 0;
  d2234hmbdf(&self->_fpdiSession, self->_attributes, &v10, &v9);
  if (v4)
  {
    if (error)
    {
      v5 = [AMSFairPlayDeviceIdentitySession errorForFPDIStatus:v4 stage:1];
      v6 = v5;
      v7 = 0;
      *error = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DEF0] ams_createDataWithFPDIResult:v10 length:v9];
  }

  return v7;
}

- (id)initializationDataWithCreationResponseData:(id)data error:(id *)error
{
  v17 = 0;
  v16 = 0;
  fpdiSession = self->_fpdiSession;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v10 = [dataCopy2 length];

  v11 = g9000sds9(fpdiSession, bytes, v10, &v17, &v16);
  if (v11)
  {
    if (error)
    {
      v12 = [AMSFairPlayDeviceIdentitySession errorForFPDIStatus:v11 stage:2];
      v13 = v12;
      v14 = 0;
      *error = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E695DEF0] ams_createDataWithFPDIResult:v17 length:v16];
  }

  return v14;
}

- (BOOL)setupSessionWithInitializationResponseData:(id)data error:(id *)error
{
  fpdiSession = self->_fpdiSession;
  dataCopy = data;
  dataCopy2 = data;
  [dataCopy2 bytes];
  [dataCopy2 length];

  fsmklk123(fpdiSession);
  v10 = v9;
  if (error && v9)
  {
    *error = [AMSFairPlayDeviceIdentitySession errorForFPDIStatus:v9 stage:3];
  }

  return v10 == 0;
}

- (id)signatureForData:(id)data error:(id *)error
{
  v17 = 0;
  v16 = 0;
  fpdiSession = self->_fpdiSession;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v10 = [dataCopy2 length];

  v11 = sdfspp103e9rf(fpdiSession, bytes, v10, &v17, &v16);
  if (v11)
  {
    if (error)
    {
      v12 = [AMSFairPlayDeviceIdentitySession errorForFPDIStatus:v11 stage:4];
      v13 = v12;
      v14 = 0;
      *error = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E695DEF0] ams_createDataWithFPDIResult:v17 length:v16];
  }

  return v14;
}

+ (id)errorForFPDIStatus:(int)status stage:(unint64_t)stage
{
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AMSErrorDomain" code:status userInfo:0];
  v7 = [AMSFairPlayDeviceIdentitySession stringForStage:stage];
  if ((status + 44684) > 0x1E)
  {
    goto LABEL_9;
  }

  if (((1 << (status - 116)) & 0x40010003) != 0)
  {
    v8 = @"Invalid session - %@";
    v9 = 901;
    goto LABEL_4;
  }

  if (status != -44663)
  {
LABEL_9:
    if (stage == 4)
    {
      v9 = 902;
    }

    else
    {
      v9 = 900;
    }

    v8 = @"Error in %@";
    goto LABEL_4;
  }

  v8 = @"Invalid session - %@";
  v9 = 905;
LABEL_4:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v8, v7];
  v11 = AMSError(v9, @"FPDI Error", v10, v6);

  return v11;
}

+ (id)stringForStage:(unint64_t)stage
{
  if (stage - 1 > 4)
  {
    return @"Attribute init";
  }

  else
  {
    return off_1E73B77D0[stage - 1];
  }
}

@end