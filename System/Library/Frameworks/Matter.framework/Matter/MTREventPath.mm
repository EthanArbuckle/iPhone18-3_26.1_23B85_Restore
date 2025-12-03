@interface MTREventPath
+ (MTREventPath)eventPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID eventID:(NSNumber *)eventID;
+ (MTREventPath)eventPathWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId eventId:(NSNumber *)eventId;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEventPath:(id)path;
- (ConcreteEventPath)_asConcretePath;
- (MTREventPath)initWithCoder:(id)coder;
- (MTREventPath)initWithPath:(const ConcreteEventPath *)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTREventPath

- (MTREventPath)initWithPath:(const ConcreteEventPath *)path
{
  v8.receiver = self;
  v8.super_class = MTREventPath;
  v4 = [(MTRClusterPath *)&v8 initWithPath:?];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:path->var3];
    event = v4->_event;
    v4->_event = v5;
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
  unsignedLongLongValue3 = [(NSNumber *)self->_event unsignedLongLongValue];
  unsignedLongLongValue4 = [(NSNumber *)self->_event unsignedLongLongValue];
  cluster3 = [(MTRClusterPath *)self cluster];
  v11 = MTREventNameForID([cluster3 unsignedLongLongValue], -[NSNumber unsignedLongLongValue](self->_event, "unsignedLongLongValue"));
  v12 = [v3 stringWithFormat:@"<MTREventPath endpoint %u cluster 0x%llx (%llu, %@) event 0x%llx (%llu, %@)>", v14, unsignedLongLongValue, unsignedLongLongValue2, v7, unsignedLongLongValue3, unsignedLongLongValue4, v11];

  return v12;
}

+ (MTREventPath)eventPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID eventID:(NSNumber *)eventID
{
  v7 = endpointID;
  v8 = clusterID;
  v9 = eventID;
  unsignedShortValue = [(NSNumber *)v7 unsignedShortValue];
  unsignedLongValue = [(NSNumber *)v8 unsignedLongValue];
  unsignedLongValue2 = [(NSNumber *)v9 unsignedLongValue];
  v10 = [[MTREventPath alloc] initWithPath:&unsignedShortValue];

  return v10;
}

- (BOOL)isEqualToEventPath:(id)path
{
  pathCopy = path;
  if ([(MTRClusterPath *)self isEqualToClusterPath:pathCopy])
  {
    event = self->_event;
    event = [pathCopy event];
    v7 = sub_238DB32F8(event, event);
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
  v6 = v5 == objc_opt_class() && [(MTREventPath *)self isEqualToEventPath:equalCopy];

  return v6;
}

- (unint64_t)hash
{
  endpoint = [(MTRClusterPath *)self endpoint];
  unsignedShortValue = [endpoint unsignedShortValue];
  cluster = [(MTRClusterPath *)self cluster];
  unsignedLongValue = [cluster unsignedLongValue];
  unsignedLongValue2 = [(NSNumber *)self->_event unsignedLongValue];

  return unsignedLongValue ^ unsignedShortValue ^ unsignedLongValue2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  endpoint = [(MTRClusterPath *)self endpoint];
  cluster = [(MTRClusterPath *)self cluster];
  v6 = [MTREventPath eventPathWithEndpointID:endpoint clusterID:cluster eventID:self->_event];

  return v6;
}

- (ConcreteEventPath)_asConcretePath
{
  endpoint = [(MTRClusterPath *)self endpoint];
  unsignedShortValue = [endpoint unsignedShortValue];
  cluster = [(MTRClusterPath *)self cluster];
  unsignedLongValue = [cluster unsignedLongValue];
  event = [(MTREventPath *)self event];
  unsignedLongValue2 = [event unsignedLongValue];

  v9 = unsignedShortValue | (unsignedLongValue << 32);
  v10 = unsignedLongValue2;
  result.var0 = v9;
  result.var1 = BYTE2(v9);
  result.var2 = HIDWORD(v9);
  result.var3 = v10;
  return result;
}

- (MTREventPath)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MTREventPath;
  v5 = [(MTRClusterPath *)&v14 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventKey"];
    event = v5->_event;
    v5->_event = v7;

    if (v5->_event && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = sub_2393D9044(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v6->_event;
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "MTREventPath decoded %@ for event, not NSNumber.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v13 = v6->_event;
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
  v5.super_class = MTREventPath;
  [(MTRClusterPath *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_event forKey:@"eventKey"];
}

+ (MTREventPath)eventPathWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId eventId:(NSNumber *)eventId
{
  v5 = [self eventPathWithEndpointID:endpointId clusterID:clusterId eventID:eventId];

  return v5;
}

@end