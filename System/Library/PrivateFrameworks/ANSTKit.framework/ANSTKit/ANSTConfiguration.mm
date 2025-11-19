@interface ANSTConfiguration
+ (id)new;
- (ANSTConfiguration)init;
- (ANSTConfiguration)initWithVersion:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ANSTConfiguration

+ (id)new
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___ANSTConfiguration;
  return objc_msgSendSuper2(&v3, "new");
}

- (ANSTConfiguration)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTConfiguration)initWithVersion:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ANSTConfiguration;
  result = [(ANSTConfiguration *)&v5 init];
  if (result)
  {
    result->_version = a3;
    result->_networkEngineType = 0;
    result->_qualityOfService = 21;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ANSTConfiguration alloc];
  v6 = objc_msgSend_initWithVersion_(v4, v5, self->_version);
  objc_msgSend_setNetworkEngineType_(v6, v7, self->_networkEngineType);
  objc_msgSend_setQualityOfService_(v6, v8, self->_qualityOfService);
  return v6;
}

@end