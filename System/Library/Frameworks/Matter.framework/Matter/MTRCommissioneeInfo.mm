@interface MTRCommissioneeInfo
- (BOOL)isEqual:(id)equal;
- (MTRCommissioneeInfo)initWithCoder:(id)coder;
- (MTREndpointInfo)rootEndpoint;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTRCommissioneeInfo

- (MTRCommissioneeInfo)initWithCoder:(id)coder
{
  v42 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = MTRCommissioneeInfo;
  v5 = [(MTRCommissioneeInfo *)&v38 init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pi"];
  productIdentity = v5->_productIdentity;
  v5->_productIdentity = v6;

  if (!v5->_productIdentity)
  {
    goto LABEL_31;
  }

  v8 = objc_opt_class();
  v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"ep"];
  endpointsById = v5->_endpointsById;
  v5->_endpointsById = v9;

  if ((atomic_load_explicit(&qword_27DF77540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF77540))
  {
    v26 = v5;
    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    qword_27DF77538 = [v27 setWithObjects:{v28, v29, v30, v31, v32, objc_opt_class(), 0}];
    __cxa_guard_release(&qword_27DF77540);
    v5 = v26;
  }

  v11 = [coderCopy decodeObjectOfClasses:qword_27DF77538 forKey:@"at"];
  attributes = v5->_attributes;
  v5->_attributes = v11;

  if (v5->_attributes)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v13 = v5->_attributes;
      v14 = [(NSDictionary *)v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v14)
      {
        v15 = *v35;
        while (2)
        {
          v16 = 0;
          do
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v34 + 1) + 8 * v16);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v23 = sub_2393D9044(0);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v41 = v17;
                _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "MTRCommissioneeInfo decoding: expected MTRAttributePath but found %@", buf, 0xCu);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(0, 1);
              }

              goto LABEL_30;
            }

            v18 = [(NSDictionary *)v5->_attributes objectForKeyedSubscript:v17];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || !sub_238EE7184(v18))
            {
              v22 = sub_2393D9044(0);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v41 = v18;
                _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "MTRCommissioneeInfo decoding: expected data-value dictionary but found %@", buf, 0xCu);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(0, 1);
              }

LABEL_30:
              goto LABEL_31;
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [(NSDictionary *)v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_16;
    }

    v20 = sub_2393D9044(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = v5->_attributes;
      *buf = 138412290;
      v41 = v21;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "MTRCommissioneeInfo decoding: attributes are not a dictionary: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v33 = v5->_attributes;
      sub_2393D5320(0, 1);
    }

LABEL_31:
    v19 = 0;
    goto LABEL_32;
  }

LABEL_16:
  v19 = v5;
LABEL_32:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_productIdentity forKey:@"pi"];
  [coderCopy encodeObject:self->_endpointsById forKey:@"ep"];
  [coderCopy encodeObject:self->_attributes forKey:@"at"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    if ((sub_238DB32F8(self->_productIdentity, v7[1]) & 1) != 0 && sub_238DB32F8(self->_endpointsById, v7[2]))
    {
      v6 = sub_238DB32F8(self->_attributes, v7[3]);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MTREndpointInfo)rootEndpoint
{
  endpointsById = [(MTRCommissioneeInfo *)self endpointsById];
  v3 = [endpointsById objectForKeyedSubscript:&unk_284C3E3A8];

  return v3;
}

@end