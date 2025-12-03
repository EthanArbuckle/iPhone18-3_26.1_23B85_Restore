@interface RPBroadcastConfiguration
- (RPBroadcastConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RPBroadcastConfiguration

- (RPBroadcastConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RPBroadcastConfiguration;
  v5 = [(RPBroadcastConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clipDuration"];
    [v6 doubleValue];
    v5->_clipDuration = v7;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"videoCompressionProperties"];
    videoCompressionProperties = v5->_videoCompressionProperties;
    v5->_videoCompressionProperties = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clipDuration];
  [coderCopy encodeObject:v4 forKey:@"clipDuration"];

  allValues = [(NSDictionary *)self->_videoCompressionProperties allValues];
  v6 = [allValues count];

  if (v6)
  {
    [coderCopy encodeObject:self->_videoCompressionProperties forKey:@"videoCompressionProperties"];
  }
}

@end