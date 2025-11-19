@interface MTRCommandPath
+ (MTRCommandPath)commandPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID commandID:(NSNumber *)commandID;
+ (MTRCommandPath)commandPathWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId commandId:(NSNumber *)commandId;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCommandPath:(id)a3;
- (MTRCommandPath)initWithCoder:(id)a3;
- (MTRCommandPath)initWithPath:(const ConcreteCommandPath *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTRCommandPath

- (MTRCommandPath)initWithPath:(const ConcreteCommandPath *)a3
{
  v8.receiver = self;
  v8.super_class = MTRCommandPath;
  v4 = [(MTRClusterPath *)&v8 initWithPath:?];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var3];
    command = v4->_command;
    v4->_command = v5;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MTRClusterPath *)self endpoint];
  v5 = [v4 unsignedShortValue];
  v6 = [(MTRClusterPath *)self cluster];
  v7 = [v6 unsignedLongLongValue];
  v8 = [(MTRClusterPath *)self cluster];
  v9 = [v3 stringWithFormat:@"<MTRCommandPath endpoint %u cluster 0x%llx (%llu) command 0x%llx (%llu)>", v5, v7, objc_msgSend(v8, "unsignedLongLongValue"), -[NSNumber unsignedLongLongValue](self->_command, "unsignedLongLongValue"), -[NSNumber unsignedLongLongValue](self->_command, "unsignedLongLongValue")];

  return v9;
}

+ (MTRCommandPath)commandPathWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID commandID:(NSNumber *)commandID
{
  v7 = endpointID;
  v8 = clusterID;
  v9 = commandID;
  v12 = [(NSNumber *)v7 unsignedShortValue];
  v13 = [(NSNumber *)v8 unsignedLongValue];
  v14 = [(NSNumber *)v9 unsignedLongValue];
  v10 = [[MTRCommandPath alloc] initWithPath:&v12];

  return v10;
}

- (BOOL)isEqualToCommandPath:(id)a3
{
  v4 = a3;
  if ([(MTRClusterPath *)self isEqualToClusterPath:v4])
  {
    command = self->_command;
    v6 = [v4 command];
    v7 = sub_238DB32F8(command, v6);
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
  v6 = v5 == objc_opt_class() && [(MTRCommandPath *)self isEqualToCommandPath:v4];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(MTRClusterPath *)self endpoint];
  v4 = [v3 unsignedShortValue];
  v5 = [(MTRClusterPath *)self cluster];
  v6 = [v5 unsignedLongValue];
  v7 = [(NSNumber *)self->_command unsignedLongValue];

  return v6 ^ v4 ^ v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(MTRClusterPath *)self endpoint];
  v5 = [(MTRClusterPath *)self cluster];
  v6 = [MTRCommandPath commandPathWithEndpointID:v4 clusterID:v5 commandID:self->_command];

  return v6;
}

- (MTRCommandPath)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MTRCommandPath;
  v5 = [(MTRClusterPath *)&v14 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandKey"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MTRCommandPath;
  [(MTRClusterPath *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_command forKey:@"commandKey"];
}

+ (MTRCommandPath)commandPathWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId commandId:(NSNumber *)commandId
{
  v5 = [a1 commandPathWithEndpointID:endpointId clusterID:clusterId commandID:commandId];

  return v5;
}

@end