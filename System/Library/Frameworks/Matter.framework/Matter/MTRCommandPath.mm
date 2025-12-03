@interface MTRCommandPath
+ (MTRCommandPath)commandPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID commandID:(NSNumber *)commandID;
+ (MTRCommandPath)commandPathWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId commandId:(NSNumber *)commandId;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCommandPath:(id)path;
- (MTRCommandPath)initWithCoder:(id)coder;
- (MTRCommandPath)initWithPath:(const ConcreteCommandPath *)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTRCommandPath

- (MTRCommandPath)initWithPath:(const ConcreteCommandPath *)path
{
  v8.receiver = self;
  v8.super_class = MTRCommandPath;
  v4 = [(MTRClusterPath *)&v8 initWithPath:?];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:path->var3];
    command = v4->_command;
    v4->_command = v5;
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
  v9 = [v3 stringWithFormat:@"<MTRCommandPath endpoint %u cluster 0x%llx (%llu) command 0x%llx (%llu)>", unsignedShortValue, unsignedLongLongValue, objc_msgSend(cluster2, "unsignedLongLongValue"), -[NSNumber unsignedLongLongValue](self->_command, "unsignedLongLongValue"), -[NSNumber unsignedLongLongValue](self->_command, "unsignedLongLongValue")];

  return v9;
}

+ (MTRCommandPath)commandPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID commandID:(NSNumber *)commandID
{
  v7 = endpointID;
  v8 = clusterID;
  v9 = commandID;
  unsignedShortValue = [(NSNumber *)v7 unsignedShortValue];
  unsignedLongValue = [(NSNumber *)v8 unsignedLongValue];
  unsignedLongValue2 = [(NSNumber *)v9 unsignedLongValue];
  v10 = [[MTRCommandPath alloc] initWithPath:&unsignedShortValue];

  return v10;
}

- (BOOL)isEqualToCommandPath:(id)path
{
  pathCopy = path;
  if ([(MTRClusterPath *)self isEqualToClusterPath:pathCopy])
  {
    command = self->_command;
    command = [pathCopy command];
    v7 = sub_238DB32F8(command, command);
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
  v6 = v5 == objc_opt_class() && [(MTRCommandPath *)self isEqualToCommandPath:equalCopy];

  return v6;
}

- (unint64_t)hash
{
  endpoint = [(MTRClusterPath *)self endpoint];
  unsignedShortValue = [endpoint unsignedShortValue];
  cluster = [(MTRClusterPath *)self cluster];
  unsignedLongValue = [cluster unsignedLongValue];
  unsignedLongValue2 = [(NSNumber *)self->_command unsignedLongValue];

  return unsignedLongValue ^ unsignedShortValue ^ unsignedLongValue2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  endpoint = [(MTRClusterPath *)self endpoint];
  cluster = [(MTRClusterPath *)self cluster];
  v6 = [MTRCommandPath commandPathWithEndpointID:endpoint clusterID:cluster commandID:self->_command];

  return v6;
}

- (MTRCommandPath)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MTRCommandPath;
  v5 = [(MTRClusterPath *)&v14 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandKey"];
    command = v5->_command;
    v5->_command = v7;

    if (v5->_command && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = sub_2393D9044(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v6->_command;
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "MTRCommandPath decoded %@ for command, not NSNumber.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v13 = v6->_command;
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
  v5.super_class = MTRCommandPath;
  [(MTRClusterPath *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_command forKey:@"commandKey"];
}

+ (MTRCommandPath)commandPathWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId commandId:(NSNumber *)commandId
{
  v5 = [self commandPathWithEndpointID:endpointId clusterID:clusterId commandID:commandId];

  return v5;
}

@end