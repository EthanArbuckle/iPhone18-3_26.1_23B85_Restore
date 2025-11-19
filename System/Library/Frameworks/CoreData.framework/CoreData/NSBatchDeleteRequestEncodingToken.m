@interface NSBatchDeleteRequestEncodingToken
- (NSBatchDeleteRequestEncodingToken)initWithCoder:(id)a3;
- (id)initForRequest:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSBatchDeleteRequestEncodingToken

- (id)initForRequest:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSBatchDeleteRequestEncodingToken;
  v4 = [(NSBatchDeleteRequestEncodingToken *)&v6 init];
  if (v4)
  {
    v4->_fetchData = [objc_msgSend(a3 "fetchRequest")];
    v4->_resultType = [a3 resultType];
    v4->_secure = [a3 _secureOperation];
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

- (NSBatchDeleteRequestEncodingToken)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = NSBatchDeleteRequestEncodingToken;
  v4 = [(NSBatchDeleteRequestEncodingToken *)&v8 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_fetchData = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"fetch"}];
    v4->_resultType = [a3 decodeIntegerForKey:@"resultType"];
    v4->_secure = [a3 decodeBoolForKey:@"secure"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_fetchData forKey:@"fetch"];
  [a3 encodeInteger:self->_resultType forKey:@"resultType"];
  secure = self->_secure;

  [a3 encodeBool:secure forKey:@"secure"];
}

@end