@interface MTRAttributeReport
- (MTRAttributeReport)initWithPath:(const void *)path value:(id)value error:(id)error;
- (MTRAttributeReport)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MTRAttributeReport

- (MTRAttributeReport)initWithPath:(const void *)path value:(id)value error:(id)error
{
  valueCopy = value;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = MTRAttributeReport;
  v11 = [(MTRAttributeReport *)&v15 init];
  if (v11)
  {
    v12 = [[MTRAttributePath alloc] initWithPath:path];
    path = v11->_path;
    v11->_path = v12;

    objc_storeStrong(&v11->_value, value);
    objc_storeStrong(&v11->_error, error);
  }

  return v11;
}

- (MTRAttributeReport)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v28.receiver = self;
  v28.super_class = MTRAttributeReport;
  v7 = [(MTRAttributeReport *)&v28 init];
  if (v7)
  {
    v8 = objc_opt_class();
    if (sub_238EEE250(v6, @"attributePath", v8, @"response-value attribute path is not an MTRAttributePath.", error))
    {
      v9 = [(NSDictionary *)v6 objectForKeyedSubscript:@"attributePath"];
      v10 = [(NSDictionary *)v6 objectForKeyedSubscript:@"error"];
      if (v10)
      {
        v11 = objc_opt_class();
        if (sub_238EEE250(v6, @"error", v11, @"response-value error is not an NSError.", error))
        {
          objc_storeStrong(&v7->_path, v9);
          value = v7->_value;
          v7->_value = 0;

          objc_storeStrong(&v7->_error, v10);
          v13 = v7;
LABEL_19:

          goto LABEL_20;
        }

LABEL_12:
        v13 = 0;
        goto LABEL_19;
      }

      v14 = objc_opt_class();
      if (!sub_238EEE250(v6, @"data", v14, @"response-value data is not a data-value dictionary.", error))
      {
        goto LABEL_12;
      }

      v15 = [(NSDictionary *)v6 objectForKeyedSubscript:@"data"];
      v26 = 0;
      v27 = 0;
      sub_2393C5AAC(v25);
      if ((sub_238EF2604(&v27, &v26, v15, v25, error) & 1) == 0)
      {
        v13 = 0;
LABEL_18:
        sub_238DCCA48(&v26);
        sub_238EA1758(&v27);

        goto LABEL_19;
      }

      _asConcretePath = [v9 _asConcretePath];
      v24 = v16;
      v22 = xmmword_278A72F40;
      v17 = sub_23929E56C(&_asConcretePath, v25, &v22);
      if (v22 == 181)
      {
        v19 = @"No known schema for decoding attribute value.";
        v20 = 12;
      }

      else
      {
        if (!v22)
        {
          objc_storeStrong(&v7->_path, v9);
          objc_storeStrong(&v7->_value, v17);
          v18 = v7->_error;
          v7->_error = 0;

          v13 = v7;
LABEL_17:

          goto LABEL_18;
        }

        v19 = @"Attribute decoding failed schema check.";
        v20 = 13;
      }

      sub_238EEE368(v19, v20, error);
      v13 = 0;
      goto LABEL_17;
    }
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTRAttributeReport alloc];
  path = [(MTRAttributeReport *)self path];
  _asConcretePath = [path _asConcretePath];
  v12 = v6;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  value = [(MTRAttributeReport *)self value];
  error = [(MTRAttributeReport *)self error];
  v9 = [(MTRAttributeReport *)v4 initWithPath:&_asConcretePath value:value error:error];

  return v9;
}

@end