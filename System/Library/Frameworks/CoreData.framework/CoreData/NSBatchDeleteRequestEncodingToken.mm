@interface NSBatchDeleteRequestEncodingToken
- (NSBatchDeleteRequestEncodingToken)initWithCoder:(id)coder;
- (id)initForRequest:(id)request;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSBatchDeleteRequestEncodingToken

- (id)initForRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = NSBatchDeleteRequestEncodingToken;
  v4 = [(NSBatchDeleteRequestEncodingToken *)&v6 init];
  if (v4)
  {
    v4->_fetchData = [objc_msgSend(request "fetchRequest")];
    v4->_resultType = [request resultType];
    v4->_secure = [request _secureOperation];
  }

  return v4;
}

- (void)dealloc
{
  self->_fetchData = 0;
  v3.receiver = self;
  v3.super_class = NSBatchDeleteRequestEncodingToken;
  [(NSBatchDeleteRequestEncodingToken *)&v3 dealloc];
}

- (NSBatchDeleteRequestEncodingToken)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = NSBatchDeleteRequestEncodingToken;
  v4 = [(NSBatchDeleteRequestEncodingToken *)&v8 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_fetchData = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"fetch"}];
    v4->_resultType = [coder decodeIntegerForKey:@"resultType"];
    v4->_secure = [coder decodeBoolForKey:@"secure"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_fetchData forKey:@"fetch"];
  [coder encodeInteger:self->_resultType forKey:@"resultType"];
  secure = self->_secure;

  [coder encodeBool:secure forKey:@"secure"];
}

@end