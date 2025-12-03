@interface CNLocalAccountSyncRequest
+ (id)argumentsForRequest:(id)request;
- (BOOL)isEqual:(id)equal;
- (CNLocalAccountSyncRequest)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNLocalAccountSyncRequest

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"retryCount" unsignedInteger:self->_retryCount];
  v5 = [v3 appendName:@"standby" BOOLValue:self->_standby];
  v6 = [v3 appendName:@"resetStandby" BOOLValue:self->_resetStandby];
  v7 = [v3 appendName:@"clearify" BOOLValue:self->_clearify];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_retryCount == equalCopy->_retryCount && self->_standby == equalCopy->_standby && self->_resetStandby == equalCopy->_resetStandby && self->_clearify == equalCopy->_clearify;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = self->_standby - self->_retryCount + 32 * self->_retryCount;
  v3 = self->_resetStandby - v2 + 32 * v2;
  return self->_clearify - v3 + 32 * v3 + 15699857;
}

- (CNLocalAccountSyncRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CNLocalAccountSyncRequest *)self init];
  if (v5)
  {
    -[CNLocalAccountSyncRequest setRetryCount:](v5, "setRetryCount:", [coderCopy decodeIntegerForKey:@"retryCount"]);
    -[CNLocalAccountSyncRequest setStandby:](v5, "setStandby:", [coderCopy decodeBoolForKey:@"standby"]);
    -[CNLocalAccountSyncRequest setResetStandby:](v5, "setResetStandby:", [coderCopy decodeBoolForKey:@"resetStandby"]);
    -[CNLocalAccountSyncRequest setClearify:](v5, "setClearify:", [coderCopy decodeBoolForKey:@"clearify"]);
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  retryCount = self->_retryCount;
  coderCopy = coder;
  [coderCopy encodeInteger:retryCount forKey:@"retryCount"];
  [coderCopy encodeBool:self->_standby forKey:@"standby"];
  [coderCopy encodeBool:self->_resetStandby forKey:@"resetStandby"];
  [coderCopy encodeBool:self->_clearify forKey:@"clearify"];
}

+ (id)argumentsForRequest:(id)request
{
  requestCopy = request;
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:@"--tricklesync"];
  if ([requestCopy retryCount])
  {
    [array addObject:@"--retry"];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(requestCopy, "retryCount")];
    [array addObject:v5];
  }

  if ([requestCopy standby])
  {
    [array addObject:@"--standby"];
  }

  if ([requestCopy resetStandby])
  {
    [array addObject:@"--reset-standby"];
  }

  if ([requestCopy clearify])
  {
    [array addObject:@"--clearify"];
  }

  return array;
}

@end