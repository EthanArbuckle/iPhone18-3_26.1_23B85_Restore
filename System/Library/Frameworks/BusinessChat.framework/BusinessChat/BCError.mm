@interface BCError
- (BCError)initWithCode:(id)a3 domain:(id)a4 message:(id)a5;
- (BCError)initWithCoder:(id)a3;
- (BCError)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCError

- (BCError)initWithCode:(id)a3 domain:(id)a4 message:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BCError;
  v11 = [(BCError *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(BCError *)v11 setCode:v8];
    [(BCError *)v12 setDomain:v9];
    [(BCError *)v12 setMessage:v10];
  }

  return v12;
}

- (BCError)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = BCError;
  v5 = [(BCError *)&v20 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [v4 objectForKeyedSubscript:@"code"];
  v7 = [MEMORY[0x277CBEB68] null];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"code"];
  }

  v9 = [v4 objectForKeyedSubscript:@"domain"];
  v10 = [MEMORY[0x277CBEB68] null];
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v4 objectForKeyedSubscript:@"domain"];
  }

  v12 = [v4 objectForKeyedSubscript:@"message"];
  v13 = [MEMORY[0x277CBEB68] null];
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v4 objectForKeyedSubscript:@"message"];
  }

  if (!v8)
  {
    v16 = LogCategory_Daemon();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v19 = 0;
    v17 = "Unable to create BCError: missing 'code' in payload";
LABEL_22:
    _os_log_error_impl(&dword_236EA0000, v16, OS_LOG_TYPE_ERROR, v17, v19, 2u);
    goto LABEL_23;
  }

  if (!v11)
  {
    v16 = LogCategory_Daemon();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v19 = 0;
    v17 = "Unable to create BCError: missing 'domain' in payload";
    goto LABEL_22;
  }

  if (!v14)
  {
    v16 = LogCategory_Daemon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      v17 = "Unable to create BCError: missing 'message' in payload";
      goto LABEL_22;
    }

LABEL_23:

    v15 = 0;
    goto LABEL_24;
  }

  [(BCError *)v5 setCode:v8];
  [(BCError *)v5 setDomain:v11];
  [(BCError *)v5 setMessage:v14];

LABEL_15:
  v15 = v5;
LABEL_24:

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  code = self->_code;
  v5 = a3;
  [v5 encodeObject:code forKey:@"code"];
  [v5 encodeObject:self->_domain forKey:@"domain"];
  [v5 encodeObject:self->_message forKey:@"message"];
}

- (BCError)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BCError;
  v5 = [(BCError *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"code"];
    code = v5->_code;
    v5->_code = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v10;
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  [v3 setObject:self->_code forKeyedSubscript:@"code"];
  [v3 setObject:self->_domain forKeyedSubscript:@"domain"];
  [v3 setObject:self->_message forKeyedSubscript:@"message"];
  v4 = [v3 copy];

  return v4;
}

@end