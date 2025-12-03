@interface BCError
- (BCError)initWithCode:(id)code domain:(id)domain message:(id)message;
- (BCError)initWithCoder:(id)coder;
- (BCError)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCError

- (BCError)initWithCode:(id)code domain:(id)domain message:(id)message
{
  codeCopy = code;
  domainCopy = domain;
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = BCError;
  v11 = [(BCError *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(BCError *)v11 setCode:codeCopy];
    [(BCError *)v12 setDomain:domainCopy];
    [(BCError *)v12 setMessage:messageCopy];
  }

  return v12;
}

- (BCError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = BCError;
  v5 = [(BCError *)&v20 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"code"];
  null = [MEMORY[0x277CBEB68] null];
  if (v6 == null)
  {
    v8 = 0;
  }

  else
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"code"];
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
  null2 = [MEMORY[0x277CBEB68] null];
  if (v9 == null2)
  {
    v11 = 0;
  }

  else
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"message"];
  null3 = [MEMORY[0x277CBEB68] null];
  if (v12 == null3)
  {
    v14 = 0;
  }

  else
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:@"message"];
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

- (void)encodeWithCoder:(id)coder
{
  code = self->_code;
  coderCopy = coder;
  [coderCopy encodeObject:code forKey:@"code"];
  [coderCopy encodeObject:self->_domain forKey:@"domain"];
  [coderCopy encodeObject:self->_message forKey:@"message"];
}

- (BCError)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BCError;
  v5 = [(BCError *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"code"];
    code = v5->_code;
    v5->_code = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
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