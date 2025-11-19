@interface WCMessageResponse
- (BOOL)isEqual:(id)a3;
- (WCMessageResponse)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WCMessageResponse

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WCMessageResponse;
  v4 = a3;
  [(WCMessage *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_error forKey:{@"error", v5.receiver, v5.super_class}];
}

- (WCMessageResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WCMessageResponse;
  v5 = [(WCMessage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
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
  v6 = [(WCMessage *)self identifier];
  v7 = [(WCMessage *)self data];
  v8 = [v7 length];
  v9 = [(WCMessageResponse *)self error];
  v10 = NSPrintF();
  v11 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, dataLength: %lu, error: %@>", v5, self, v6, v8, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = WCMessageResponse;
  return [(WCMessage *)&v4 isEqual:a3];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = WCMessageResponse;
  return [(WCMessage *)&v3 hash];
}

@end