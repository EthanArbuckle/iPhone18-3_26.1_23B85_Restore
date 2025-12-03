@interface MTRCommandWithRequiredResponse
- (BOOL)_isEqualToOther:(id)other;
- (BOOL)isEqual:(id)equal;
- (MTRCommandWithRequiredResponse)initWithCoder:(id)coder;
- (MTRCommandWithRequiredResponse)initWithPath:(id)path commandFields:(id)fields requiredResponse:(id)response;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTRCommandWithRequiredResponse

- (MTRCommandWithRequiredResponse)initWithPath:(id)path commandFields:(id)fields requiredResponse:(id)response
{
  pathCopy = path;
  fieldsCopy = fields;
  responseCopy = response;
  v14.receiver = self;
  v14.super_class = MTRCommandWithRequiredResponse;
  v11 = [(MTRCommandWithRequiredResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MTRCommandWithRequiredResponse *)v11 setPath:pathCopy];
    [(MTRCommandWithRequiredResponse *)v12 setCommandFields:fieldsCopy];
    [(MTRCommandWithRequiredResponse *)v12 setRequiredResponse:responseCopy];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTRCommandWithRequiredResponse alloc];
  path = [(MTRCommandWithRequiredResponse *)self path];
  commandFields = [(MTRCommandWithRequiredResponse *)self commandFields];
  requiredResponse = [(MTRCommandWithRequiredResponse *)self requiredResponse];
  v8 = [(MTRCommandWithRequiredResponse *)v4 initWithPath:path commandFields:commandFields requiredResponse:requiredResponse];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  path = [(MTRCommandWithRequiredResponse *)self path];
  commandFields = [(MTRCommandWithRequiredResponse *)self commandFields];
  requiredResponse = [(MTRCommandWithRequiredResponse *)self requiredResponse];
  v9 = [v3 stringWithFormat:@"<%@: %p, path: %@, fields: %@, requiredResponse: %@", v5, self, path, commandFields, requiredResponse];

  return v9;
}

- (MTRCommandWithRequiredResponse)initWithCoder:(id)coder
{
  v51[5] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v45.receiver = self;
  v45.super_class = MTRCommandWithRequiredResponse;
  v5 = [(MTRCommandWithRequiredResponse *)&v45 init];
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pathKey"];
  p_path = &v5->_path;
  path = v5->_path;
  v5->_path = v6;

  if (!v5->_path || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v23 = sub_2393D9044(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *p_path;
      *buf = 138412290;
      v47 = v24;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "MTRCommandWithRequiredResponse decoded %@ for endpoint, not MTRCommandPath.", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((atomic_load_explicit(&qword_27DF77650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF77650))
  {
    v36 = MEMORY[0x277CBEB98];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v51[2] = objc_opt_class();
    v51[3] = objc_opt_class();
    v51[4] = objc_opt_class();
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:5];
    qword_27DF77648 = [v36 setWithArray:v37];

    __cxa_guard_release(&qword_27DF77650);
  }

  v9 = [coderCopy decodeObjectOfClasses:qword_27DF77648 forKey:@"fieldsKey"];
  p_path = &v5->_commandFields;
  commandFields = v5->_commandFields;
  v5->_commandFields = v9;

  if (v5->_commandFields)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (sub_238EE7184(*p_path))
      {
        v11 = [*p_path objectForKeyedSubscript:@"type"];
        v12 = [@"Structure" isEqual:v11];

        if (v12)
        {
          goto LABEL_9;
        }
      }

      v29 = sub_2393D9044(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = *p_path;
        *buf = 138412290;
        v47 = v30;
        _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "MTRCommandWithRequiredResponse decoded %@ for commandFields, not a structure-typed data-value dictionary.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v27 = sub_2393D9044(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = *p_path;
        *buf = 138412290;
        v47 = v28;
        _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "MTRCommandWithRequiredResponse decoded %@ for commandFields, not NSDictionary.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    v38 = *p_path;
    sub_2393D5320(0, 1);
LABEL_27:
    v22 = 0;
    goto LABEL_28;
  }

LABEL_9:
  v13 = [coderCopy decodeObjectOfClasses:qword_27DF77648 forKey:@"requiredResponseKey"];
  p_path = &v5->_requiredResponse;
  requiredResponse = v5->_requiredResponse;
  v5->_requiredResponse = v13;

  if (!v5->_requiredResponse)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = sub_2393D9044(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = *p_path;
      *buf = 138412290;
      v47 = v32;
      _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "MTRCommandWithRequiredResponse decoded %@ for requiredResponse, not NSDictionary.", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = *p_path;
  v15 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *v42;
  while (2)
  {
    v17 = 0;
    do
    {
      if (*v42 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v41 + 1) + 8 * v17);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = sub_2393D9044(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v47 = v18;
          _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_ERROR, "MTRCommandWithRequiredResponse decoded key %@ in requiredResponse", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1);
        }

        goto LABEL_50;
      }

      v19 = [*p_path objectForKeyedSubscript:v18];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

LABEL_46:
        v34 = sub_2393D9044(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = [*p_path objectForKeyedSubscript:v18];
          *buf = 138412546;
          v47 = v35;
          v48 = 2112;
          v49 = v18;
          _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "MTRCommandWithRequiredResponse decoded value %@ for key %@ in requiredResponse", buf, 0x16u);
        }

        if (sub_2393D5398(1u))
        {
          v39 = [*p_path objectForKeyedSubscript:v18];
          sub_2393D5320(0, 1);
        }

LABEL_50:

        goto LABEL_27;
      }

      v20 = [*p_path objectForKeyedSubscript:v18];
      v21 = sub_238EE7184(v20);

      if (!v21)
      {
        goto LABEL_46;
      }

      ++v17;
    }

    while (v15 != v17);
    v15 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_21:

LABEL_22:
  v22 = v5;
LABEL_28:

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  path = [(MTRCommandWithRequiredResponse *)self path];

  if (path)
  {
    path2 = [(MTRCommandWithRequiredResponse *)self path];
    [coderCopy encodeObject:path2 forKey:@"pathKey"];
  }

  commandFields = [(MTRCommandWithRequiredResponse *)self commandFields];

  if (commandFields)
  {
    commandFields2 = [(MTRCommandWithRequiredResponse *)self commandFields];
    [coderCopy encodeObject:commandFields2 forKey:@"fieldsKey"];
  }

  requiredResponse = [(MTRCommandWithRequiredResponse *)self requiredResponse];

  if (requiredResponse)
  {
    requiredResponse2 = [(MTRCommandWithRequiredResponse *)self requiredResponse];
    [coderCopy encodeObject:requiredResponse2 forKey:@"requiredResponseKey"];
  }
}

- (BOOL)_isEqualToOther:(id)other
{
  otherCopy = other;
  path = self->_path;
  path = [otherCopy path];
  if (sub_238DB32F8(path, path))
  {
    commandFields = self->_commandFields;
    commandFields = [otherCopy commandFields];
    if (sub_238DB32F8(commandFields, commandFields))
    {
      requiredResponse = self->_requiredResponse;
      requiredResponse = [otherCopy requiredResponse];
      v11 = sub_238DB32F8(requiredResponse, requiredResponse);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(MTRCommandWithRequiredResponse *)self _isEqualToOther:equalCopy];

  return v6;
}

@end