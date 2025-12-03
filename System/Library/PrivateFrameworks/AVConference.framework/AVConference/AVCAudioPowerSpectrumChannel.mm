@interface AVCAudioPowerSpectrumChannel
- (AVCAudioPowerSpectrumChannel)init;
- (AVCAudioPowerSpectrumChannel)initWithCoder:(id)coder;
- (void)applyChannelBins:(_VCAudioPowerSpectrumEntry *)bins binCount:(unsigned int)count;
- (void)dealloc;
@end

@implementation AVCAudioPowerSpectrumChannel

- (AVCAudioPowerSpectrumChannel)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = AVCAudioPowerSpectrumChannel;
  v2 = [(AVCAudioPowerSpectrumChannel *)&v4 init];
  if (v2)
  {
    v2->_bins = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCAudioPowerSpectrumChannel;
  [(AVCAudioPowerSpectrumChannel *)&v3 dealloc];
}

- (AVCAudioPowerSpectrumChannel)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = AVCAudioPowerSpectrumChannel;
  v4 = [(AVCAudioPowerSpectrumChannel *)&v6 init];
  if (v4)
  {
    v4->_bins = [coder decodeObjectForKey:@"bins"];
  }

  return v4;
}

- (void)applyChannelBins:(_VCAudioPowerSpectrumEntry *)bins binCount:(unsigned int)count
{
  if (count)
  {
    v6 = 0;
    countCopy = count;
    do
    {
      if ([(NSMutableArray *)self->_bins count]<= v6)
      {
        v8 = objc_alloc_init(AVCAudioPowerSpectrumBin);
        [(NSMutableArray *)self->_bins addObject:v8];
      }

      [-[NSMutableArray objectAtIndexedSubscript:](self->_bins objectAtIndexedSubscript:{v6++), "assign:", bins++}];
    }

    while (countCopy != v6);
  }

  else
  {
    countCopy = 0;
  }

  if ([(NSMutableArray *)self->_bins count]> countCopy)
  {
    v9 = [(NSMutableArray *)self->_bins count]- countCopy;
    bins = self->_bins;

    [(NSMutableArray *)bins removeObjectsInRange:countCopy, v9];
  }
}

@end