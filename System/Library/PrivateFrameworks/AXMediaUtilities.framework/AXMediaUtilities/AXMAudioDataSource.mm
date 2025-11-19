@interface AXMAudioDataSource
- (AXMAudioDataSource)initWithName:(id)a3 sampleRate:(double)a4 circular:(BOOL)a5;
- (id)description;
- (void)dealloc;
- (void)normalizeAudio;
- (void)setCurrentSampleIndex:(unint64_t)a3;
- (void)setLength:(unint64_t)a3;
@end

@implementation AXMAudioDataSource

- (AXMAudioDataSource)initWithName:(id)a3 sampleRate:(double)a4 circular:(BOOL)a5
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = AXMAudioDataSource;
  v8 = [(AXMAudioDataSource *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    name = v8->_name;
    v8->_name = v9;

    v8->_sampleRate = a4;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer)
  {
    v4 = *sampleBuffer;
    if (*sampleBuffer)
    {
      sampleBuffer[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x1B2700150](sampleBuffer, 0x10C402FEFCB83);
  }

  v5.receiver = self;
  v5.super_class = AXMAudioDataSource;
  [(AXMAudioDataSource *)&v5 dealloc];
}

- (void)setCurrentSampleIndex:(unint64_t)a3
{
  if ([(AXMAudioDataSource *)self isCircular])
  {
    currentSampleIndex = self->_currentSampleIndex;
    if (currentSampleIndex <= a3)
    {
      if (currentSampleIndex >= a3)
      {
        goto LABEL_10;
      }

      v8 = (*[(AXMAudioDataSource *)self sampleBuffer]+ 4 * self->_currentSampleIndex);
    }

    else
    {
      v6 = (*[(AXMAudioDataSource *)self sampleBuffer]+ 4 * self->_currentSampleIndex);
      v7 = *([(AXMAudioDataSource *)self sampleBuffer]+ 8) - v6;
      if (v7 >= 1)
      {
        bzero(v6, v7);
      }

      v8 = *[(AXMAudioDataSource *)self sampleBuffer];
    }

    v9 = *[(AXMAudioDataSource *)self sampleBuffer]- v8 + 4 * a3;
    if (v9 >= 1)
    {
      bzero(v8, v9);
    }
  }

LABEL_10:
  self->_currentSampleIndex = a3;
}

- (void)setLength:(unint64_t)a3
{
  self->_length = a3;
  *(self->_sampleBuffer + 1) = *self->_sampleBuffer;
  std::vector<int>::resize(self->_sampleBuffer, a3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AXMAudioDataSource *)self name];
  v6 = [v3 stringWithFormat:@"<%@ %p name=%@ circular=%d currentSample=%lu length=%lu>", v4, self, v5, -[AXMAudioDataSource isCircular](self, "isCircular"), -[AXMAudioDataSource currentSampleIndex](self, "currentSampleIndex"), -[AXMAudioDataSource length](self, "length")];

  return v6;
}

- (void)normalizeAudio
{
  v3 = [(AXMAudioDataSource *)self sampleBuffer];
  if ([(AXMAudioDataSource *)self length])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*(*v3 + 4 * v5) > v4)
      {
        v4 = *(*v3 + 4 * v5);
      }

      ++v5;
    }

    while (v5 < [(AXMAudioDataSource *)self length]);
    v6 = v4;
  }

  else
  {
    v6 = 0.0;
  }

  if ([(AXMAudioDataSource *)self length])
  {
    v7 = 0;
    v8 = v6 / 32500.0;
    do
    {
      *(*v3 + 4 * v7) = (*(*v3 + 4 * v7) / v8);
      ++v7;
    }

    while (v7 < [(AXMAudioDataSource *)self length]);
  }
}

@end