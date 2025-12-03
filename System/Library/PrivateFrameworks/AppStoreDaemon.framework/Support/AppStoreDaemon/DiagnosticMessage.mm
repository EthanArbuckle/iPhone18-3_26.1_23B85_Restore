@interface DiagnosticMessage
- (DiagnosticMessage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DiagnosticMessage

- (void)encodeWithCoder:(id)coder
{
  code = self->_code;
  coderCopy = coder;
  [coderCopy encodeInteger:code forKey:@"code"];
  [coderCopy encodeObject:self->_dictionary forKey:@"dictionary"];
}

- (DiagnosticMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = DiagnosticMessage;
  v5 = [(DiagnosticMessage *)&v16 init];
  if (v5)
  {
    v5->_code = [coderCopy decodeIntegerForKey:@"code"];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v6, v7, v8, v9, v10, objc_opt_class(), 0];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"dictionary"];
    v13 = [v12 mutableCopy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v13;
  }

  return v5;
}

@end