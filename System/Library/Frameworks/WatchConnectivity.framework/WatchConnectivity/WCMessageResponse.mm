@interface WCMessageResponse
- (BOOL)isEqual:(id)equal;
- (WCMessageResponse)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WCMessageResponse

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WCMessageResponse;
  coderCopy = coder;
  [(WCMessage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_error forKey:{@"error", v5.receiver, v5.super_class}];
}

- (WCMessageResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = WCMessageResponse;
  v5 = [(WCMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WCMessage *)self identifier];
  data = [(WCMessage *)self data];
  v8 = [data length];
  error = [(WCMessageResponse *)self error];
  v10 = NSPrintF();
  v11 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, dataLength: %lu, error: %@>", v5, self, identifier, v8, v10];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = WCMessageResponse;
  return [(WCMessage *)&v4 isEqual:equal];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = WCMessageResponse;
  return [(WCMessage *)&v3 hash];
}

@end