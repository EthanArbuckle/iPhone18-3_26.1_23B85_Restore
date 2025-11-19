@interface CNLocalAccountSyncRequest
+ (id)argumentsForRequest:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CNLocalAccountSyncRequest)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNLocalAccountSyncRequest

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"retryCount" unsignedInteger:self->_retryCount];
  v5 = [v3 appendName:@"standby" BOOLValue:self->_standby];
  v6 = [v3 appendName:@"resetStandby" BOOLValue:self->_resetStandby];
  v7 = [v3 appendName:@"clearify" BOOLValue:self->_clearify];
  v8 = [v3 build];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_retryCount == v4->_retryCount && self->_standby == v4->_standby && self->_resetStandby == v4->_resetStandby && self->_clearify == v4->_clearify;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = self->_standby - self->_retryCount + 32 * self->_retryCount;
  v3 = self->_resetStandby - v2 + 32 * v2;
  return self->_clearify - v3 + 32 * v3 + 15699857;
}

- (CNLocalAccountSyncRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CNLocalAccountSyncRequest *)self init];
  if (v5)
  {
    -[CNLocalAccountSyncRequest setRetryCount:](v5, "setRetryCount:", [v4 decodeIntegerForKey:@"retryCount"]);
    -[CNLocalAccountSyncRequest setStandby:](v5, "setStandby:", [v4 decodeBoolForKey:@"standby"]);
    -[CNLocalAccountSyncRequest setResetStandby:](v5, "setResetStandby:", [v4 decodeBoolForKey:@"resetStandby"]);
    -[CNLocalAccountSyncRequest setClearify:](v5, "setClearify:", [v4 decodeBoolForKey:@"clearify"]);
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  retryCount = self->_retryCount;
  v5 = a3;
  [v5 encodeInteger:retryCount forKey:@"retryCount"];
  [v5 encodeBool:self->_standby forKey:@"standby"];
  [v5 encodeBool:self->_resetStandby forKey:@"resetStandby"];
  [v5 encodeBool:self->_clearify forKey:@"clearify"];
}

+ (id)argumentsForRequest:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  [v4 addObject:@"--tricklesync"];
  if ([v3 retryCount])
  {
    [v4 addObject:@"--retry"];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v3, "retryCount")];
    [v4 addObject:v5];
  }

  if ([v3 standby])
  {
    [v4 addObject:@"--standby"];
  }

  if ([v3 resetStandby])
  {
    [v4 addObject:@"--reset-standby"];
  }

  if ([v3 clearify])
  {
    [v4 addObject:@"--clearify"];
  }

  return v4;
}

@end