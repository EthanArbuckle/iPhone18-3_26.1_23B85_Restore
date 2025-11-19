@interface MPMusicPlayerPlayParametersQueueDescriptor
- (BOOL)isEqual:(id)a3;
- (MPMusicPlayerPlayParametersQueueDescriptor)initWithCoder:(id)a3;
- (MPMusicPlayerPlayParametersQueueDescriptor)initWithPlayParametersQueue:(NSArray *)playParametersQueue;
- (NSArray)playParametersQueue;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setContainerPlayParameters:(id)a3;
- (void)setEndTime:(NSTimeInterval)endTime forItemWithPlayParameters:(MPMusicPlayerPlayParameters *)playParameters;
- (void)setStartTime:(NSTimeInterval)startTime forItemWithPlayParameters:(MPMusicPlayerPlayParameters *)playParameters;
@end

@implementation MPMusicPlayerPlayParametersQueueDescriptor

- (void)setContainerPlayParameters:(id)a3
{
  v4 = [a3 copy];
  containerPlayParameters = self->_containerPlayParameters;
  self->_containerPlayParameters = v4;
}

- (NSArray)playParametersQueue
{
  v2 = [(NSArray *)self->_playParametersQueue copy];

  return v2;
}

- (void)setEndTime:(NSTimeInterval)endTime forItemWithPlayParameters:(MPMusicPlayerPlayParameters *)playParameters
{
  v6 = [(MPMusicPlayerPlayParameters *)playParameters identifiers];
  [(MPMusicPlayerQueueDescriptor *)self _setEndTime:v6 forIdentifiers:endTime];
}

- (void)setStartTime:(NSTimeInterval)startTime forItemWithPlayParameters:(MPMusicPlayerPlayParameters *)playParameters
{
  v6 = [(MPMusicPlayerPlayParameters *)playParameters identifiers];
  [(MPMusicPlayerQueueDescriptor *)self _setStartTime:v6 forIdentifiers:startTime];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = MPMusicPlayerPlayParametersQueueDescriptor;
  v4 = [(MPMusicPlayerQueueDescriptor *)&v12 copyWithZone:a3];
  v5 = [(NSArray *)self->_playParametersQueue copy];
  v6 = v4[11];
  v4[11] = v5;

  v7 = [(MPMusicPlayerPlayParameters *)self->_startItemPlayParameters copy];
  v8 = v4[12];
  v4[12] = v7;

  v9 = [(MPMusicPlayerPlayParameters *)self->_containerPlayParameters copy];
  v10 = v4[13];
  v4[13] = v9;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPMusicPlayerPlayParametersQueueDescriptor;
  v4 = a3;
  [(MPMusicPlayerQueueDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_playParametersQueue forKey:{@"MPMusicPlayerPlayParametersQueueDescriptorPlayParameters", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_startItemPlayParameters forKey:@"MPMusicPlayerPlayParametersQueueDescriptorStartItemPlayParameters"];
  [v4 encodeObject:self->_containerPlayParameters forKey:@"MPMusicPlayerPlayParametersQueueDescriptorContainerPlayParameters"];
}

- (MPMusicPlayerPlayParametersQueueDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MPMusicPlayerPlayParametersQueueDescriptor;
  v5 = [(MPMusicPlayerQueueDescriptor *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"MPMusicPlayerPlayParametersQueueDescriptorPlayParameters"];
    playParametersQueue = v5->_playParametersQueue;
    v5->_playParametersQueue = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerPlayParametersQueueDescriptorStartItemPlayParameters"];
    startItemPlayParameters = v5->_startItemPlayParameters;
    v5->_startItemPlayParameters = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerPlayParametersQueueDescriptorContainerPlayParameters"];
    containerPlayParameters = v5->_containerPlayParameters;
    v5->_containerPlayParameters = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MPMusicPlayerPlayParametersQueueDescriptor;
  if ([(MPMusicPlayerQueueDescriptor *)&v20 isEqual:v4])
  {
    v5 = v4;
    v6 = v5[11];
    v7 = self->_playParametersQueue;
    v8 = v7;
    if (v7 == v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = [(NSArray *)v7 isEqual:v6];
    }

    v11 = v5[12];
    v12 = self->_startItemPlayParameters;
    v13 = v12;
    if (v12 == v11)
    {
      v14 = 1;
    }

    else
    {
      v14 = [(MPMusicPlayerPlayParameters *)v12 isEqual:v11];
    }

    v15 = v5[13];
    v16 = self->_containerPlayParameters;
    v17 = v16;
    if (v16 == v15)
    {
      v18 = 1;
    }

    else
    {
      v18 = [(MPMusicPlayerPlayParameters *)v16 isEqual:v15];
    }

    v10 = v9 & v14 & v18;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MPMusicPlayerPlayParametersQueueDescriptor)initWithPlayParametersQueue:(NSArray *)playParametersQueue
{
  v4 = playParametersQueue;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerPlayParametersQueueDescriptor;
  v5 = [(MPMusicPlayerQueueDescriptor *)&v9 _init];
  if (v5)
  {
    v6 = [(NSArray *)v4 copy];
    v7 = v5->_playParametersQueue;
    v5->_playParametersQueue = v6;
  }

  return v5;
}

@end