@interface ATResponse
- (ATResponse)initWithCoder:(id)a3;
- (id)additionalDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATResponse

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ATResponse;
  v4 = a3;
  [(ATMessage *)&v6 encodeWithCoder:v4];
  v5 = [(NSError *)self->_error msv_errorByRemovingUnsafeUserInfo:v6.receiver];
  [v4 encodeObject:v5 forKey:@"error"];

  [v4 encodeBool:self->_partial forKey:@"isPartial"];
}

- (ATResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATResponse;
  v5 = [(ATMessage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v5->_partial = [v4 decodeBoolForKey:@"isPartial"];
  }

  return v5;
}

- (id)additionalDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ATResponse *)self error];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

@end