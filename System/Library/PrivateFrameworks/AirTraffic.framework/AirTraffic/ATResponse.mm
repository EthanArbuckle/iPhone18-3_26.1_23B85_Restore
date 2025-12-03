@interface ATResponse
- (ATResponse)initWithCoder:(id)coder;
- (id)additionalDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATResponse

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ATResponse;
  coderCopy = coder;
  [(ATMessage *)&v6 encodeWithCoder:coderCopy];
  v5 = [(NSError *)self->_error msv_errorByRemovingUnsafeUserInfo:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"error"];

  [coderCopy encodeBool:self->_partial forKey:@"isPartial"];
}

- (ATResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ATResponse;
  v5 = [(ATMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v5->_partial = [coderCopy decodeBoolForKey:@"isPartial"];
  }

  return v5;
}

- (id)additionalDescription
{
  v2 = MEMORY[0x277CCACA8];
  error = [(ATResponse *)self error];
  v4 = [v2 stringWithFormat:@"%@", error];

  return v4;
}

@end