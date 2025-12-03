@interface MTRCASESessionResumptionInfo
- (MTRCASESessionResumptionInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTRCASESessionResumptionInfo

- (MTRCASESessionResumptionInfo)initWithCoder:(id)coder
{
  v45 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = MTRCASESessionResumptionInfo;
  v5 = [(MTRCASESessionResumptionInfo *)&v41 init];
  if (!v5)
  {
    goto LABEL_43;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nodeID"];
  p_nodeID = &v5->_nodeID;
  nodeID = v5->_nodeID;
  v5->_nodeID = v6;

  if (v5->_nodeID)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = sub_2393D9044(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = *p_nodeID;
        *buf = 138412290;
        v44 = v28;
        _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "MTRCASESessionResumptionInfo got %@ for node ID, not NSNumber.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_43;
      }

LABEL_42:
      v36 = *p_nodeID;
      sub_2393D5320(0, 1);
LABEL_43:
      v24 = 0;
      goto LABEL_44;
    }

    v9 = *p_nodeID;
  }

  else
  {
    v9 = 0;
  }

  if (!sub_23920B288(v9))
  {
    v25 = sub_2393D9044(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *p_nodeID;
      *buf = 138412290;
      v44 = v26;
      _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "MTRCASESessionResumptionInfo node ID has invalid value: %@", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resumptionID"];
  p_nodeID = &v5->_resumptionID;
  resumptionID = v5->_resumptionID;
  v5->_resumptionID = v10;

  if (v5->_resumptionID)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = sub_2393D9044(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = *p_nodeID;
        *buf = 138412290;
        v44 = v30;
        _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "MTRCASESessionResumptionInfo got %@ for resumption ID, not NSData.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedSecret"];
  p_nodeID = &v5->_sharedSecret;
  sharedSecret = v5->_sharedSecret;
  v5->_sharedSecret = v12;

  if (v5->_sharedSecret)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = sub_2393D9044(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = *p_nodeID;
        *buf = 138412290;
        v44 = v32;
        _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "MTRCASESessionResumptionInfo got %@ for shared secret, not NSData.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"CATs"];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v14 = v38 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v15)
  {
    v16 = *v38;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        if (!sub_2392130E4(v18))
        {

LABEL_46:
          v35 = sub_2393D9044(0);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v44 = v18;
            _os_log_impl(&dword_238DAE000, v35, OS_LOG_TYPE_ERROR, "MTRCASESessionResumptionInfo CASE tag has invalid value: %@", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1);
          }

          v24 = 0;
          goto LABEL_51;
        }

        unsignedLongLongValue = [v18 unsignedLongLongValue];
        if (unsignedLongLongValue)
        {
          v20 = HIDWORD(unsignedLongLongValue) == 0;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        if ((v21 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v22 = [MEMORY[0x277CBEB98] setWithArray:v14];
  caseAuthenticatedTags = v5->_caseAuthenticatedTags;
  v5->_caseAuthenticatedTags = v22;

  v24 = v5;
LABEL_51:

LABEL_44:
  v33 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nodeID = [(MTRCASESessionResumptionInfo *)self nodeID];
  [coderCopy encodeObject:nodeID forKey:@"nodeID"];

  resumptionID = [(MTRCASESessionResumptionInfo *)self resumptionID];
  [coderCopy encodeObject:resumptionID forKey:@"resumptionID"];

  sharedSecret = [(MTRCASESessionResumptionInfo *)self sharedSecret];
  [coderCopy encodeObject:sharedSecret forKey:@"sharedSecret"];

  caseAuthenticatedTags = [(MTRCASESessionResumptionInfo *)self caseAuthenticatedTags];
  allObjects = [caseAuthenticatedTags allObjects];
  [coderCopy encodeObject:allObjects forKey:@"CATs"];
}

@end