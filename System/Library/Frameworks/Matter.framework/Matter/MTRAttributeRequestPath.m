@interface MTRAttributeRequestPath
+ (MTRAttributeRequestPath)requestPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAttributeRequestPath:(id)a3;
- (MTRAttributeRequestPath)initWithCoder:(id)a3;
- (MTRAttributeRequestPath)initWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)convertToAttributePathParams:(AttributePathParams *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTRAttributeRequestPath

- (MTRAttributeRequestPath)initWithEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 copy];
  endpoint = self->_endpoint;
  self->_endpoint = v11;

  v13 = [v9 copy];
  cluster = self->_cluster;
  self->_cluster = v13;

  v15 = [v10 copy];
  attribute = self->_attribute;
  self->_attribute = v15;

  return self;
}

- (id)description
{
  v3 = sub_238EEEF30(self->_endpoint);
  v4 = sub_238EEEFC0(self->_cluster);
  v5 = sub_238EEF098(self->_cluster, self->_attribute, &unk_284BA9A80);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"<MTRAttributeRequestPath endpoint %@ cluster %@ attribute %@>", v3, v4, v5];

  return v6;
}

+ (MTRAttributeRequestPath)requestPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID
{
  v7 = endpointID;
  v8 = clusterID;
  v9 = attributeID;
  v10 = [[MTRAttributeRequestPath alloc] initWithEndpointID:v7 clusterID:v8 attributeID:v9];

  return v10;
}

- (BOOL)isEqualToAttributeRequestPath:(id)a3
{
  v4 = a3;
  endpoint = self->_endpoint;
  v6 = [v4 endpoint];
  if (sub_238DB32F8(endpoint, v6))
  {
    cluster = self->_cluster;
    v8 = [v4 cluster];
    if (sub_238DB32F8(cluster, v8))
    {
      attribute = self->_attribute;
      v10 = [v4 attribute];
      v11 = sub_238DB32F8(attribute, v10);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(MTRAttributeRequestPath *)self isEqualToAttributeRequestPath:v4];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_endpoint unsignedShortValue];
  v4 = [(NSNumber *)self->_cluster unsignedLongValue];
  return v4 ^ [(NSNumber *)self->_attribute unsignedLongValue]^ v3;
}

- (void)convertToAttributePathParams:(AttributePathParams *)a3
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    v6 = [(NSNumber *)endpoint unsignedShortValue];
  }

  else
  {
    v6 = -1;
  }

  a3->var2 = v6;
  cluster = self->_cluster;
  if (cluster)
  {
    v8 = [(NSNumber *)cluster unsignedLongValue];
  }

  else
  {
    v8 = -1;
  }

  a3->var0 = v8;
  attribute = self->_attribute;
  if (attribute)
  {
    v10 = [(NSNumber *)attribute unsignedLongValue];
  }

  else
  {
    a3->var3 = -1;
    v10 = -1;
  }

  a3->var1 = v10;
}

- (MTRAttributeRequestPath)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MTRAttributeRequestPath;
  v5 = [(MTRAttributeRequestPath *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpointIDKey"];
    endpoint = v5->_endpoint;
    v5->_endpoint = v7;

    if (v5->_endpoint && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = sub_2393D9044(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        attribute = v5->_attribute;
        *buf = 138412290;
        v25 = attribute;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "MTRAttributeRequestPath decoded %@ for endpoint, not NSNumber.", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_21;
      }

      p_attribute = &v5->_attribute;
    }

    else
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterIDKey"];
      cluster = v5->_cluster;
      v5->_cluster = v9;

      if (v5->_cluster && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v16 = sub_2393D9044(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = v5->_attribute;
          *buf = 138412290;
          v25 = v17;
          _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "MTRAttributeRequestPath decoded %@ for cluster, not NSNumber.", buf, 0xCu);
        }

        if (!sub_2393D5398(1u))
        {
          goto LABEL_21;
        }

        p_attribute = &v5->_attribute;
      }

      else
      {
        v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributeIDKey"];
        p_attribute = &v5->_attribute;
        v12 = v5->_attribute;
        v5->_attribute = v11;

        if (!v5->_attribute || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v5 = v5;
          goto LABEL_22;
        }

        v18 = sub_2393D9044(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = *p_attribute;
          *buf = 138412290;
          v25 = v19;
          _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "MTRAttributeRequestPath decoded %@ for attribute, not NSNumber.", buf, 0xCu);
        }

        if (!sub_2393D5398(1u))
        {
LABEL_21:
          v5 = 0;
          goto LABEL_22;
        }
      }
    }

    v22 = *p_attribute;
    sub_2393D5320(0, 1);
    goto LABEL_21;
  }

LABEL_22:

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  endpoint = self->_endpoint;
  if (endpoint)
  {
    [v7 encodeObject:endpoint forKey:@"endpointIDKey"];
  }

  cluster = self->_cluster;
  if (cluster)
  {
    [v7 encodeObject:cluster forKey:@"clusterIDKey"];
  }

  attribute = self->_attribute;
  if (attribute)
  {
    [v7 encodeObject:attribute forKey:@"attributeIDKey"];
  }
}

@end