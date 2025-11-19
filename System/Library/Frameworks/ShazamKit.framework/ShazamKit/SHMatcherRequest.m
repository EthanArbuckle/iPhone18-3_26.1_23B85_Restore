@interface SHMatcherRequest
+ (id)requestOnceWithAppIntentForRequestID:(id)a3;
+ (id)requestSignatureGenerationOnce;
+ (id)requestSignatureGenerationOnceForRequestID:(id)a3;
+ (id)requestSignatureGenerationUntilDeadline:(id)a3;
+ (id)requestSignatureGenerationUntilDeadline:(id)a3 forRequestID:(id)a4;
- (BOOL)hasHitDeadline;
- (NSString)installationID;
- (SHMatcherRequest)initWithCoder:(id)a3;
- (SHMatcherRequest)initWithSignature:(id)a3 deadline:(id)a4 sendNotifications:(BOOL)a5 stopCondition:(int64_t)a6 requestType:(int64_t)a7 requestID:(id)a8;
- (double)watchdogTimeout;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHMatcherRequest

+ (id)requestSignatureGenerationOnce
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [a1 requestSignatureGenerationOnceForRequestID:v3];

  return v4;
}

+ (id)requestSignatureGenerationOnceForRequestID:(id)a3
{
  v3 = a3;
  v4 = [[SHMatcherRequest alloc] initWithSignature:0 deadline:0 sendNotifications:0 stopCondition:0 requestType:1 requestID:v3];

  return v4;
}

+ (id)requestSignatureGenerationUntilDeadline:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [a1 requestSignatureGenerationUntilDeadline:v5 forRequestID:v6];

  return v7;
}

+ (id)requestSignatureGenerationUntilDeadline:(id)a3 forRequestID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SHMatcherRequest alloc] initWithSignature:0 deadline:v6 sendNotifications:0 stopCondition:3 requestType:1 requestID:v5];

  return v7;
}

+ (id)requestOnceWithAppIntentForRequestID:(id)a3
{
  v3 = a3;
  v4 = [[SHMatcherRequest alloc] initWithSignature:0 deadline:0 sendNotifications:0 stopCondition:2 requestType:3 requestID:v3];

  return v4;
}

- (SHMatcherRequest)initWithSignature:(id)a3 deadline:(id)a4 sendNotifications:(BOOL)a5 stopCondition:(int64_t)a6 requestType:(int64_t)a7 requestID:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = SHMatcherRequest;
  v18 = [(SHMatcherRequest *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_signature, a3);
    objc_storeStrong(&v19->_deadline, a4);
    v19->_sendNotifications = a5;
    v19->_stopCondition = a6;
    v19->_type = a7;
    objc_storeStrong(&v19->_requestID, a8);
  }

  return v19;
}

- (SHMatcherRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SHMatcherRequest;
  v5 = [(SHMatcherRequest *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deadline"];
    deadline = v5->_deadline;
    v5->_deadline = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installationID"];
    installationID = v5->_installationID;
    v5->_installationID = v10;

    v5->_sendNotifications = [v4 decodeBoolForKey:@"sendNotifications"];
    v5->_stopCondition = [v4 decodeIntegerForKey:@"stopCondition"];
    v5->_type = [v4 decodeIntegerForKey:@"requestType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestID"];
    requestID = v5->_requestID;
    v5->_requestID = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requestID = self->_requestID;
  v5 = a3;
  [v5 encodeObject:requestID forKey:@"requestID"];
  [v5 encodeObject:self->_signature forKey:@"signature"];
  [v5 encodeObject:self->_deadline forKey:@"deadline"];
  [v5 encodeObject:self->_installationID forKey:@"installationID"];
  [v5 encodeBool:self->_sendNotifications forKey:@"sendNotifications"];
  [v5 encodeInteger:self->_stopCondition forKey:@"stopCondition"];
  [v5 encodeInteger:self->_type forKey:@"requestType"];
}

- (NSString)installationID
{
  installationID = self->_installationID;
  if (installationID)
  {
    v3 = installationID;
  }

  else
  {
    v3 = [SHRotatingInstallationID cachedInstallationForDays:31];
  }

  return v3;
}

- (BOOL)hasHitDeadline
{
  v3 = [(SHMatcherRequest *)self deadline];

  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(SHMatcherRequest *)self deadline];
  v6 = [v4 laterDate:v5];
  v7 = v6 == v4;

  return v7;
}

- (double)watchdogTimeout
{
  v3 = [(SHMatcherRequest *)self deadline];
  if (v3)
  {
    v4 = [(SHMatcherRequest *)self deadline];
    [v4 timeIntervalSinceNow];
    v6 = v5;
  }

  else
  {
    v6 = 45.0;
  }

  return v6;
}

@end