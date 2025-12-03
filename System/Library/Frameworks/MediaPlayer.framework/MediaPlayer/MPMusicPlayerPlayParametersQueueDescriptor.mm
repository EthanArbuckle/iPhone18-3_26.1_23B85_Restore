@interface MPMusicPlayerPlayParametersQueueDescriptor
- (BOOL)isEqual:(id)equal;
- (MPMusicPlayerPlayParametersQueueDescriptor)initWithCoder:(id)coder;
- (MPMusicPlayerPlayParametersQueueDescriptor)initWithPlayParametersQueue:(NSArray *)playParametersQueue;
- (NSArray)playParametersQueue;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setContainerPlayParameters:(id)parameters;
- (void)setEndTime:(NSTimeInterval)endTime forItemWithPlayParameters:(MPMusicPlayerPlayParameters *)playParameters;
- (void)setStartTime:(NSTimeInterval)startTime forItemWithPlayParameters:(MPMusicPlayerPlayParameters *)playParameters;
@end

@implementation MPMusicPlayerPlayParametersQueueDescriptor

- (void)setContainerPlayParameters:(id)parameters
{
  v4 = [parameters copy];
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
  identifiers = [(MPMusicPlayerPlayParameters *)playParameters identifiers];
  [(MPMusicPlayerQueueDescriptor *)self _setEndTime:identifiers forIdentifiers:endTime];
}

- (void)setStartTime:(NSTimeInterval)startTime forItemWithPlayParameters:(MPMusicPlayerPlayParameters *)playParameters
{
  identifiers = [(MPMusicPlayerPlayParameters *)playParameters identifiers];
  [(MPMusicPlayerQueueDescriptor *)self _setStartTime:identifiers forIdentifiers:startTime];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = MPMusicPlayerPlayParametersQueueDescriptor;
  v4 = [(MPMusicPlayerQueueDescriptor *)&v12 copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPMusicPlayerPlayParametersQueueDescriptor;
  coderCopy = coder;
  [(MPMusicPlayerQueueDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_playParametersQueue forKey:{@"MPMusicPlayerPlayParametersQueueDescriptorPlayParameters", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_startItemPlayParameters forKey:@"MPMusicPlayerPlayParametersQueueDescriptorStartItemPlayParameters"];
  [coderCopy encodeObject:self->_containerPlayParameters forKey:@"MPMusicPlayerPlayParametersQueueDescriptorContainerPlayParameters"];
}

- (MPMusicPlayerPlayParametersQueueDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MPMusicPlayerPlayParametersQueueDescriptor;
  v5 = [(MPMusicPlayerQueueDescriptor *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MPMusicPlayerPlayParametersQueueDescriptorPlayParameters"];
    playParametersQueue = v5->_playParametersQueue;
    v5->_playParametersQueue = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerPlayParametersQueueDescriptorStartItemPlayParameters"];
    startItemPlayParameters = v5->_startItemPlayParameters;
    v5->_startItemPlayParameters = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerPlayParametersQueueDescriptorContainerPlayParameters"];
    containerPlayParameters = v5->_containerPlayParameters;
    v5->_containerPlayParameters = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v20.receiver = self;
  v20.super_class = MPMusicPlayerPlayParametersQueueDescriptor;
  if ([(MPMusicPlayerQueueDescriptor *)&v20 isEqual:equalCopy])
  {
    v5 = equalCopy;
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
  _init = [(MPMusicPlayerQueueDescriptor *)&v9 _init];
  if (_init)
  {
    v6 = [(NSArray *)v4 copy];
    v7 = _init->_playParametersQueue;
    _init->_playParametersQueue = v6;
  }

  return _init;
}

@end