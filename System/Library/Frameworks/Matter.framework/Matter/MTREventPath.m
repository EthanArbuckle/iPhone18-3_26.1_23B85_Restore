@interface MTREventPath
+ (MTREventPath)eventPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID eventID:(NSNumber *)eventID;
+ (MTREventPath)eventPathWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId eventId:(NSNumber *)eventId;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEventPath:(id)a3;
- (ConcreteEventPath)_asConcretePath;
- (MTREventPath)initWithCoder:(id)a3;
- (MTREventPath)initWithPath:(const ConcreteEventPath *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTREventPath

- (MTREventPath)initWithPath:(const ConcreteEventPath *)a3
{
  v8.receiver = self;
  v8.super_class = MTREventPath;
  v4 = [(MTRClusterPath *)&v8 initWithPath:?];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var3];
    event = v4->_event;
    v4->_event = v5;
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
  v8 = [(NSNumber *)self->_event unsignedLongLongValue];
  v9 = [(NSNumber *)self->_event unsignedLongLongValue];
  v10 = [(MTRClusterPath *)self cluster];
  v11 = MTREventNameForID([v10 unsignedLongLongValue], -[NSNumber unsignedLongLongValue](self->_event, "unsignedLongLongValue"));
  v12 = [v3 stringWithFormat:@"<MTREventPath endpoint %u cluster 0x%llx (%llu, %@) event 0x%llx (%llu, %@)>", v14, v5, v6, v7, v8, v9, v11];

  return v12;
}

+ (MTREventPath)eventPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID eventID:(NSNumber *)eventID
{
  v7 = endpointID;
  v8 = clusterID;
  v9 = eventID;
  v12 = [(NSNumber *)v7 unsignedShortValue];
  v13 = [(NSNumber *)v8 unsignedLongValue];
  v14 = [(NSNumber *)v9 unsignedLongValue];
  v10 = [[MTREventPath alloc] initWithPath:&v12];

  return v10;
}

- (BOOL)isEqualToEventPath:(id)a3
{
  v4 = a3;
  if ([(MTRClusterPath *)self isEqualToClusterPath:v4])
  {
    event = self->_event;
    v6 = [v4 event];
    v7 = sub_238DB32F8(event, v6);
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
  v6 = v5 == objc_opt_class() && [(MTREventPath *)self isEqualToEventPath:v4];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(MTRClusterPath *)self endpoint];
  v4 = [v3 unsignedShortValue];
  v5 = [(MTRClusterPath *)self cluster];
  v6 = [v5 unsignedLongValue];
  v7 = [(NSNumber *)self->_event unsignedLongValue];

  return v6 ^ v4 ^ v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(MTRClusterPath *)self endpoint];
  v5 = [(MTRClusterPath *)self cluster];
  v6 = [MTREventPath eventPathWithEndpointID:v4 clusterID:v5 eventID:self->_event];

  return v6;
}

- (ConcreteEventPath)_asConcretePath
{
  v3 = [(MTRClusterPath *)self endpoint];
  v4 = [v3 unsignedShortValue];
  v5 = [(MTRClusterPath *)self cluster];
  v6 = [v5 unsignedLongValue];
  v7 = [(MTREventPath *)self event];
  v8 = [v7 unsignedLongValue];

  v9 = v4 | (v6 << 32);
  v10 = v8;
  result.var0 = v9;
  result.var1 = BYTE2(v9);
  result.var2 = HIDWORD(v9);
  result.var3 = v10;
  return result;
}

- (MTREventPath)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MTREventPath;
  v5 = [(MTRClusterPath *)&v14 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventKey"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MTREventPath;
  [(MTRClusterPath *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_event forKey:@"eventKey"];
}

+ (MTREventPath)eventPathWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId eventId:(NSNumber *)eventId
{
  v5 = [a1 eventPathWithEndpointID:endpointId clusterID:clusterId eventID:eventId];

  return v5;
}

@end