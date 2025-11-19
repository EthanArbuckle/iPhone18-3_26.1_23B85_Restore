@interface DiagnosticMessage
- (DiagnosticMessage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DiagnosticMessage

- (void)encodeWithCoder:(id)a3
{
  code = self->_code;
  v5 = a3;
  [v5 encodeInteger:code forKey:@"code"];
  [v5 encodeObject:self->_dictionary forKey:@"dictionary"];
}

- (DiagnosticMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DiagnosticMessage;
  v5 = [(DiagnosticMessage *)&v16 init];
  if (v5)
  {
    v5->_code = [v4 decodeIntegerForKey:@"code"];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v6, v7, v8, v9, v10, objc_opt_class(), 0];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"dictionary"];
    v13 = [v12 mutableCopy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v13;
  }

  return v5;
}

@end