@interface AMSFairPlayDeviceIdentitySession
+ (BOOL)reset:(id *)a3;
+ (id)errorForFPDIStatus:(int)a3 stage:(unint64_t)a4;
+ (id)stringForStage:(unint64_t)a3;
- (AMSFairPlayDeviceIdentitySession)initWithExistingSession:(unint64_t)a3 creationDate:(id)a4 error:(id *)a5;
- (AMSFairPlayDeviceIdentitySession)initWithLevel:(int64_t)a3 error:(id *)a4;
- (BOOL)setupSessionWithInitializationResponseData:(id)a3 error:(id *)a4;
- (id)creationDataWithError:(id *)a3;
- (id)initializationDataWithCreationResponseData:(id)a3 error:(id *)a4;
- (id)signatureForData:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation AMSFairPlayDeviceIdentitySession

+ (BOOL)reset:(id *)a3
{
  plsicnq9qs(0);
  v5 = v4;
  if (a3)
  {
    *a3 = [AMSFairPlayDeviceIdentitySession errorForFPDIStatus:v4 stage:0];
  }

  return v5 == 0;
}

- (AMSFairPlayDeviceIdentitySession)initWithExistingSession:(unint64_t)a3 creationDate:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a3)
  {
    v13.receiver = self;
    v13.super_class = AMSFairPlayDeviceIdentitySession;
    v9 = [(AMSFairPlayDeviceIdentitySession *)&v13 init];
    v10 = v9;
    if (v9)
    {
      v9->_fpdiSession = a3;
      objc_storeStrong(&v9->_creationDate, a4);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (AMSFairPlayDeviceIdentitySession)initWithLevel:(int64_t)a3 error:(id *)a4
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

  if (!a3)
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

  if (a3 == 1)
  {
    v10 = 1379922824;
    goto LABEL_10;
  }

LABEL_11:
  v8 = koqa938msd8(v7[2], 0);
  if (!v8)
  {
LABEL_12:
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = v7[3];
    v7[3] = v11;

    v9 = v7;
    goto LABEL_13;
  }

LABEL_3:
  if (a4)
  {
    [AMSFairPlayDeviceIdentitySession errorForFPDIStatus:v8 stage:0];
    *a4 = v9 = 0;
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

- (id)creationDataWithError:(id *)a3
{
  v10 = 0;
  v9 = 0;
  d2234hmbdf(&self->_fpdiSession, self->_attributes, &v10, &v9);
  if (v4)
  {
    if (a3)
    {
      v5 = [AMSFairPlayDeviceIdentitySession errorForFPDIStatus:v4 stage:1];
      v6 = v5;
      v7 = 0;
      *a3 = v5;
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

- (id)initializationDataWithCreationResponseData:(id)a3 error:(id *)a4
{
  v17 = 0;
  v16 = 0;
  fpdiSession = self->_fpdiSession;
  v7 = a3;
  v8 = a3;
  v9 = [v8 bytes];
  v10 = [v8 length];

  v11 = g9000sds9(fpdiSession, v9, v10, &v17, &v16);
  if (v11)
  {
    if (a4)
    {
      v12 = [AMSFairPlayDeviceIdentitySession errorForFPDIStatus:v11 stage:2];
      v13 = v12;
      v14 = 0;
      *a4 = v12;
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

- (BOOL)setupSessionWithInitializationResponseData:(id)a3 error:(id *)a4
{
  fpdiSession = self->_fpdiSession;
  v7 = a3;
  v8 = a3;
  [v8 bytes];
  [v8 length];

  fsmklk123(fpdiSession);
  v10 = v9;
  if (a4 && v9)
  {
    *a4 = [AMSFairPlayDeviceIdentitySession errorForFPDIStatus:v9 stage:3];
  }

  return v10 == 0;
}

- (id)signatureForData:(id)a3 error:(id *)a4
{
  v17 = 0;
  v16 = 0;
  fpdiSession = self->_fpdiSession;
  v7 = a3;
  v8 = a3;
  v9 = [v8 bytes];
  v10 = [v8 length];

  v11 = sdfspp103e9rf(fpdiSession, v9, v10, &v17, &v16);
  if (v11)
  {
    if (a4)
    {
      v12 = [AMSFairPlayDeviceIdentitySession errorForFPDIStatus:v11 stage:4];
      v13 = v12;
      v14 = 0;
      *a4 = v12;
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

+ (id)errorForFPDIStatus:(int)a3 stage:(unint64_t)a4
{
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AMSErrorDomain" code:a3 userInfo:0];
  v7 = [AMSFairPlayDeviceIdentitySession stringForStage:a4];
  if ((a3 + 44684) > 0x1E)
  {
    goto LABEL_9;
  }

  if (((1 << (a3 - 116)) & 0x40010003) != 0)
  {
    v8 = @"Invalid session - %@";
    v9 = 901;
    goto LABEL_4;
  }

  if (a3 != -44663)
  {
LABEL_9:
    if (a4 == 4)
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

+ (id)stringForStage:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"Attribute init";
  }

  else
  {
    return off_1E73B77D0[a3 - 1];
  }
}

@end