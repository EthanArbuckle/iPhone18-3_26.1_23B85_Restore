@interface MTApnsDictionaryProcessor
- (MTApnsDictionaryProcessor)initWithDictionary:(id)dictionary;
- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version;
@end

@implementation MTApnsDictionaryProcessor

- (MTApnsDictionaryProcessor)initWithDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = MTApnsDictionaryProcessor;
  dictionaryCopy = dictionary;
  v4 = [(MTApnsDictionaryProcessor *)&v6 init];
  [(MTApnsDictionaryProcessor *)v4 setDictionary:dictionaryCopy, v6.receiver, v6.super_class];

  return v4;
}

- (id)dataForSetTransaction:(id)transaction key:(id)key version:(id *)version
{
  keyCopy = key;
  dictionary = [(MTApnsDictionaryProcessor *)self dictionary];
  v8 = [dictionary objectForKeyedSubscript:keyCopy];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 conformsToProtocol:&OBJC_PROTOCOL___NSCoding])
    {
      v9 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
      goto LABEL_11;
    }

    v10 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = keyCopy;
      v11 = "Processor was asked for value for key %@ that doesn't conform to NSCoding!";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, &v13, 0xCu);
    }
  }

  else
  {
    v10 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = keyCopy;
      v11 = "Processor was asked for key %@ that's missing from the provided dictionary!";
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

@end