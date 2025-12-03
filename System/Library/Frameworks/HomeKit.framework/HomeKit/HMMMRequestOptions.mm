@interface HMMMRequestOptions
- (HMMMRequestOptions)initWithTimeout:(id)timeout transportRestriction:(int64_t)restriction;
- (id)attributeDescriptions;
@end

@implementation HMMMRequestOptions

- (id)attributeDescriptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  transportRestriction = [(HMMMRequestOptions *)self transportRestriction];
  if (transportRestriction > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E7548998[transportRestriction];
  }

  v6 = [v3 initWithName:@"TransportRestriction" value:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HMMMRequestOptions)initWithTimeout:(id)timeout transportRestriction:(int64_t)restriction
{
  timeoutCopy = timeout;
  v11.receiver = self;
  v11.super_class = HMMMRequestOptions;
  v8 = [(HMMMRequestOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_timeout, timeout);
    v9->_transportRestriction = restriction;
    v9->_oneWay = 1;
  }

  return v9;
}

@end