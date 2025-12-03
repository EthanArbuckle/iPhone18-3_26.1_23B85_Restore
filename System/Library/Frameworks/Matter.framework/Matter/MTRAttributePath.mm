@interface MTRAttributePath
+ (MTRAttributePath)attributePathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID;
+ (MTRAttributePath)attributePathWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId attributeId:(NSNumber *)attributeId;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAttributePath:(id)path;
- (ConcreteAttributePath)_asConcretePath;
- (MTRAttributePath)initWithCoder:(id)coder;
- (MTRAttributePath)initWithPath:(const ConcreteAttributePath *)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTRAttributePath

- (MTRAttributePath)initWithPath:(const ConcreteAttributePath *)path
{
  v8.receiver = self;
  v8.super_class = MTRAttributePath;
  v4 = [(MTRClusterPath *)&v8 initWithPath:?];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:path->var3];
    attribute = v4->_attribute;
    v4->_attribute = v5;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  endpoint = [(MTRClusterPath *)self endpoint];
  unsignedShortValue = [endpoint unsignedShortValue];
  cluster = [(MTRClusterPath *)self cluster];
  unsignedLongLongValue = [cluster unsignedLongLongValue];
  cluster2 = [(MTRClusterPath *)self cluster];
  unsignedLongLongValue2 = [cluster2 unsignedLongLongValue];
  [(MTRClusterPath *)self cluster];
  v15 = v14 = unsignedShortValue;
  v7 = MTRClusterNameForID([v15 unsignedLongLongValue]);
  unsignedLongLongValue3 = [(NSNumber *)self->_attribute unsignedLongLongValue];
  unsignedLongLongValue4 = [(NSNumber *)self->_attribute unsignedLongLongValue];
  cluster3 = [(MTRClusterPath *)self cluster];
  v11 = MTRAttributeNameForID([cluster3 unsignedLongLongValue], -[NSNumber unsignedLongLongValue](self->_attribute, "unsignedLongLongValue"));
  v12 = [v3 stringWithFormat:@"<MTRAttributePath endpoint %u cluster 0x%llx (%llu, %@) attribute 0x%llx (%llu, %@)>", v14, unsignedLongLongValue, unsignedLongLongValue2, v7, unsignedLongLongValue3, unsignedLongLongValue4, v11];

  return v12;
}

+ (MTRAttributePath)attributePathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID
{
  v7 = endpointID;
  v8 = clusterID;
  v9 = attributeID;
  unsignedShortValue = [(NSNumber *)v7 unsignedShortValue];
  unsignedLongValue = [(NSNumber *)v8 unsignedLongValue];
  unsignedLongValue2 = [(NSNumber *)v9 unsignedLongValue];
  v13 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v10 = [[MTRAttributePath alloc] initWithPath:&unsignedShortValue];

  return v10;
}

- (BOOL)isEqualToAttributePath:(id)path
{
  pathCopy = path;
  if ([(MTRClusterPath *)self isEqualToClusterPath:pathCopy])
  {
    attribute = self->_attribute;
    attribute = [pathCopy attribute];
    v7 = sub_238DB32F8(attribute, attribute);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(MTRAttributePath *)self isEqualToAttributePath:equalCopy];

  return v6;
}

- (unint64_t)hash
{
  endpoint = [(MTRClusterPath *)self endpoint];
  unsignedShortValue = [endpoint unsignedShortValue];
  cluster = [(MTRClusterPath *)self cluster];
  unsignedLongValue = [cluster unsignedLongValue];
  unsignedLongValue2 = [(NSNumber *)self->_attribute unsignedLongValue];

  return unsignedLongValue ^ unsignedShortValue ^ unsignedLongValue2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  endpoint = [(MTRClusterPath *)self endpoint];
  cluster = [(MTRClusterPath *)self cluster];
  v6 = [MTRAttributePath attributePathWithEndpointID:endpoint clusterID:cluster attributeID:self->_attribute];

  return v6;
}

- (ConcreteAttributePath)_asConcretePath
{
  endpoint = [(MTRClusterPath *)self endpoint];
  unsignedShortValue = [endpoint unsignedShortValue];
  cluster = [(MTRClusterPath *)self cluster];
  unsignedLongValue = [cluster unsignedLongValue];
  attribute = [(MTRAttributePath *)self attribute];
  unsignedLongValue2 = [attribute unsignedLongValue];

  v9 = unsignedShortValue | (unsignedLongValue << 32);
  v10 = unsignedLongValue2;
  result.var0 = v9;
  result.var1 = BYTE2(v9);
  result.var2 = HIDWORD(v9);
  result.var3 = v10;
  return result;
}

- (MTRAttributePath)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MTRAttributePath;
  v5 = [(MTRClusterPath *)&v14 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributeKey"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MTRAttributePath;
  [(MTRClusterPath *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_attribute forKey:@"attributeKey"];
}

+ (MTRAttributePath)attributePathWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId attributeId:(NSNumber *)attributeId
{
  v5 = [self attributePathWithEndpointID:endpointId clusterID:clusterId attributeID:attributeId];

  return v5;
}

@end