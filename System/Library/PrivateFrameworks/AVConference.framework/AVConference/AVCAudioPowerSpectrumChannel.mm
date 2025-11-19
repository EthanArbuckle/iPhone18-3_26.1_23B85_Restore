@interface AVCAudioPowerSpectrumChannel
- (AVCAudioPowerSpectrumChannel)init;
- (AVCAudioPowerSpectrumChannel)initWithCoder:(id)a3;
- (void)applyChannelBins:(_VCAudioPowerSpectrumEntry *)a3 binCount:(unsigned int)a4;
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

- (AVCAudioPowerSpectrumChannel)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = AVCAudioPowerSpectrumChannel;
  v4 = [(AVCAudioPowerSpectrumChannel *)&v6 init];
  if (v4)
  {
    v4->_bins = [a3 decodeObjectForKey:@"bins"];
  }

  return v4;
}

- (void)applyChannelBins:(_VCAudioPowerSpectrumEntry *)a3 binCount:(unsigned int)a4
{
  if (a4)
  {
    v6 = 0;
    v7 = a4;
    do
    {
      if ([(NSMutableArray *)self->_bins count]<= v6)
      {
        v8 = objc_alloc_init(AVCAudioPowerSpectrumBin);
        [(NSMutableArray *)self->_bins addObject:v8];
      }

      [-[NSMutableArray objectAtIndexedSubscript:](self->_bins objectAtIndexedSubscript:{v6++), "assign:", a3++}];
    }

    while (v7 != v6);
  }

  else
  {
    v7 = 0;
  }

  if ([(NSMutableArray *)self->_bins count]> v7)
  {
    v9 = [(NSMutableArray *)self->_bins count]- v7;
    bins = self->_bins;

    [(NSMutableArray *)bins removeObjectsInRange:v7, v9];
  }
}

@end