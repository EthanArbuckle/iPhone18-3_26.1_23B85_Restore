@interface HMMMRequestOptions
- (HMMMRequestOptions)initWithTimeout:(id)a3 transportRestriction:(int64_t)a4;
- (id)attributeDescriptions;
@end

@implementation HMMMRequestOptions

- (id)attributeDescriptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMMMRequestOptions *)self transportRestriction];
  if (v4 > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E7548998[v4];
  }

  v6 = [v3 initWithName:@"TransportRestriction" value:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HMMMRequestOptions)initWithTimeout:(id)a3 transportRestriction:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMMMRequestOptions;
  v8 = [(HMMMRequestOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_timeout, a3);
    v9->_transportRestriction = a4;
    v9->_oneWay = 1;
  }

  return v9;
}

@end