@interface MTRAttributePath
+ (MTRAttributePath)attributePathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID;
+ (MTRAttributePath)attributePathWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId attributeId:(NSNumber *)attributeId;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAttributePath:(id)a3;
- (ConcreteAttributePath)_asConcretePath;
- (MTRAttributePath)initWithCoder:(id)a3;
- (MTRAttributePath)initWithPath:(const ConcreteAttributePath *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTRAttributePath

- (MTRAttributePath)initWithPath:(const ConcreteAttributePath *)a3
{
  v8.receiver = self;
  v8.super_class = MTRAttributePath;
  v4 = [(MTRClusterPath *)&v8 initWithPath:?];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var3];
    attribute = v4->_attribute;
    v4->_attribute = v5;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v18 = [(MTRClusterPath *)self endpoint];
  v4 = [v18 unsignedShortValue];
  v17 = [(MTRClusterPath *)self cluster];
  v5 = [v17 unsignedLongLongValue];
  v16 = [(MTRClusterPath *)self cluster];
  v6 = [v16 unsignedLongLongValue];
  [(MTRClusterPath *)self cluster];
  v15 = v14 = v4;
  v7 = MTRClusterNameForID([v15 unsignedLongLongValue]);
  v8 = [(NSNumber *)self->_attribute unsignedLongLongValue];
  v9 = [(NSNumber *)self->_attribute unsignedLongLongValue];
  v10 = [(MTRClusterPath *)self cluster];
  v11 = MTRAttributeNameForID([v10 unsignedLongLongValue], -[NSNumber unsignedLongLongValue](self->_attribute, "unsignedLongLongValue"));
  v12 = [v3 stringWithFormat:@"<MTRAttributePath endpoint %u cluster 0x%llx (%llu, %@) attribute 0x%llx (%llu, %@)>", v14, v5, v6, v7, v8, v9, v11];

  return v12;
}

+ (MTRAttributePath)attributePathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID
{
  v7 = endpointID;
  v8 = clusterID;
  v9 = attributeID;
  v12 = [(NSNumber *)v7 unsignedShortValue];
  v14 = [(NSNumber *)v8 unsignedLongValue];
  v15 = [(NSNumber *)v9 unsignedLongValue];
  v13 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v10 = [[MTRAttributePath alloc] initWithPath:&v12];

  return v10;
}

- (BOOL)isEqualToAttributePath:(id)a3
{
  v4 = a3;
  if ([(MTRClusterPath *)self isEqualToClusterPath:v4])
  {
    attribute = self->_attribute;
    v6 = [v4 attribute];
    v7 = sub_238DB32F8(attribute, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(MTRAttributePath *)self isEqualToAttributePath:v4];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(MTRClusterPath *)self endpoint];
  v4 = [v3 unsignedShortValue];
  v5 = [(MTRClusterPath *)self cluster];
  v6 = [v5 unsignedLongValue];
  v7 = [(NSNumber *)self->_attribute unsignedLongValue];

  return v6 ^ v4 ^ v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(MTRClusterPath *)self endpoint];
  v5 = [(MTRClusterPath *)self cluster];
  v6 = [MTRAttributePath attributePathWithEndpointID:v4 clusterID:v5 attributeID:self->_attribute];

  return v6;
}

- (ConcreteAttributePath)_asConcretePath
{
  v3 = [(MTRClusterPath *)self endpoint];
  v4 = [v3 unsignedShortValue];
  v5 = [(MTRClusterPath *)self cluster];
  v6 = [v5 unsignedLongValue];
  v7 = [(MTRAttributePath *)self attribute];
  v8 = [v7 unsignedLongValue];

  v9 = v4 | (v6 << 32);
  v10 = v8;
  result.var0 = v9;
  result.var1 = BYTE2(v9);
  result.var2 = HIDWORD(v9);
  result.var3 = v10;
  return result;
}

- (MTRAttributePath)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MTRAttributePath;
  v5 = [(MTRClusterPath *)&v14 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributeKey"];
    attribute = v5->_attribute;
    v5->_attribute = v7;

    if (v5->_attribute && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = sub_2393D9044(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v6->_attribute;
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "MTRAttributePath decoded %@ for attribute, not NSNumber.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v13 = v6->_attribute;
        sub_2393D5320(0, 1);
      }

      v5 = 0;
    }

    else
    {
      v5 = v5;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MTRAttributePath;
  [(MTRClusterPath *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_attribute forKey:@"attributeKey"];
}

+ (MTRAttributePath)attributePathWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId attributeId:(NSNumber *)attributeId
{
  v5 = [a1 attributePathWithEndpointID:endpointId clusterID:clusterId attributeID:attributeId];

  return v5;
}

@end