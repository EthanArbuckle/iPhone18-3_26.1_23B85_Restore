@interface MTApnsDictionaryProcessor
- (MTApnsDictionaryProcessor)initWithDictionary:(id)a3;
- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5;
@end

@implementation MTApnsDictionaryProcessor

- (MTApnsDictionaryProcessor)initWithDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = MTApnsDictionaryProcessor;
  v3 = a3;
  v4 = [(MTApnsDictionaryProcessor *)&v6 init];
  [(MTApnsDictionaryProcessor *)v4 setDictionary:v3, v6.receiver, v6.super_class];

  return v4;
}

- (id)dataForSetTransaction:(id)a3 key:(id)a4 version:(id *)a5
{
  v6 = a4;
  v7 = [(MTApnsDictionaryProcessor *)self dictionary];
  v8 = [v7 objectForKeyedSubscript:v6];

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
      v14 = v6;
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
      v14 = v6;
      v11 = "Processor was asked for key %@ that's missing from the provided dictionary!";
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

@end