@interface AXMAudioDataSourceMixer
- (AXMAudioDataSourceMixer)initWithName:(id)name sampleRate:(double)rate circular:(BOOL)circular;
- (id)description;
- (void)addDataSource:(id)source;
- (void)prepareNextSamples:(unint64_t)samples;
- (void)removeAllDataSources;
- (void)removeDataSource:(id)source;
- (void)setCurrentSampleIndex:(unint64_t)index;
@end

@implementation AXMAudioDataSourceMixer

- (AXMAudioDataSourceMixer)initWithName:(id)name sampleRate:(double)rate circular:(BOOL)circular
{
  circularCopy = circular;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = AXMAudioDataSourceMixer;
  v9 = [(AXMAudioDataSource *)&v14 initWithName:nameCopy sampleRate:circularCopy circular:rate];
  v10 = v9;
  if (v9)
  {
    v9->_panning = 0.5;
    v11 = [MEMORY[0x1E695DFD8] set];
    dataSources = v10->_dataSources;
    v10->_dataSources = v11;
  }

  return v10;
}

- (void)setCurrentSampleIndex:(unint64_t)index
{
  v19 = *MEMORY[0x1E69E9840];
  currentSampleIndex = [(AXMAudioDataSource *)self currentSampleIndex];
  if ([(AXMAudioDataSource *)self isCircular])
  {
    indexCopy = index % [(AXMAudioDataSource *)self length];
  }

  else if ((index & 0x8000000000000000) != 0)
  {
    indexCopy = 0;
  }

  else
  {
    v7 = [(AXMAudioDataSource *)self length]- 1;
    indexCopy = index;
    if (v7 < index)
    {
      indexCopy = [(AXMAudioDataSource *)self length]- 1;
    }
  }

  v17.receiver = self;
  v17.super_class = AXMAudioDataSourceMixer;
  [(AXMAudioDataSource *)&v17 setCurrentSampleIndex:indexCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataSources = [(AXMAudioDataSourceMixer *)self dataSources];
  v9 = [dataSources countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = index - currentSampleIndex;
    v11 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(dataSources);
        }

        [*(*(&v13 + 1) + 8 * i) setCurrentSampleIndex:{v10 + objc_msgSend(*(*(&v13 + 1) + 8 * i), "currentSampleIndex")}];
      }

      v9 = [dataSources countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)addDataSource:(id)source
{
  sourceCopy = source;
  [sourceCopy setCurrentSampleIndex:{-[AXMAudioDataSource currentSampleIndex](self, "currentSampleIndex")}];
  v4 = MEMORY[0x1E695DFA8];
  dataSources = [(AXMAudioDataSourceMixer *)self dataSources];
  v6 = [v4 setWithSet:dataSources];

  [v6 addObject:sourceCopy];
  v7 = [v6 copy];
  dataSources = self->_dataSources;
  self->_dataSources = v7;
}

- (void)removeDataSource:(id)source
{
  sourceCopy = source;
  v4 = MEMORY[0x1E695DFA8];
  dataSources = [(AXMAudioDataSourceMixer *)self dataSources];
  v6 = [v4 setWithSet:dataSources];

  [v6 removeObject:sourceCopy];
  v7 = [v6 copy];
  dataSources = self->_dataSources;
  self->_dataSources = v7;
}

- (void)removeAllDataSources
{
  v3 = [MEMORY[0x1E695DFD8] set];
  dataSources = self->_dataSources;
  self->_dataSources = v3;
}

- (void)prepareNextSamples:(unint64_t)samples
{
  v33 = *MEMORY[0x1E69E9840];
  sampleBuffer = [(AXMAudioDataSource *)self sampleBuffer];
  if (samples)
  {
    v4 = 0;
    do
    {
      isCircular = [(AXMAudioDataSource *)self isCircular];
      v6 = [(AXMAudioDataSource *)self currentSampleIndex]+ v4;
      if (isCircular)
      {
        v6 %= [(AXMAudioDataSource *)self length];
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      dataSources = [(AXMAudioDataSourceMixer *)self dataSources];
      v8 = [dataSources countByEnumeratingWithState:&v28 objects:v32 count:16];
      v27 = v6;
      v9 = 0;
      if (v8)
      {
        v10 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(dataSources);
            }

            v12 = *(*(&v28 + 1) + 8 * i);
            if ([v12 isCircular])
            {
              currentSampleIndex = [v12 currentSampleIndex];
              v14 = (currentSampleIndex + v4) % [v12 length];
            }

            else
            {
              v14 = [v12 currentSampleIndex] + v4;
            }

            sampleBuffer2 = [v12 sampleBuffer];
            if (v14 < [v12 length])
            {
              [v12 level];
              v17 = v16;
              v18 = *(*sampleBuffer2 + 4 * v14);
              [(AXMAudioDataSource *)self level];
              v20 = v19 * (v9 + v17 * v18);
              v9 = v20;
              v21 = v20 >= 0 ? v20 : -v9;
              if (v21 >= 0x7EF5)
              {
                if (v9 > 0)
                {
                  v9 = 32500;
                }

                else
                {
                  v9 = -32500;
                }
              }
            }
          }

          v8 = [dataSources countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v8);
      }

      if (v27 < (sampleBuffer[1] - *sampleBuffer) >> 2)
      {
        if ([(AXMAudioDataSourceMixer *)self isMonoOutput])
        {
          *(*sampleBuffer + 4 * v27) = v9;
        }

        else
        {
          [(AXMAudioDataSourceMixer *)self panning];
          v23 = v22;
          [(AXMAudioDataSourceMixer *)self panning];
          *(*sampleBuffer + 4 * v27) = ((1.0 - v23) * v9) + ((v24 * v9) << 16);
        }
      }

      ++v4;
    }

    while (v4 != samples);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(AXMAudioDataSourceMixer *)self name];
  isCircular = [(AXMAudioDataSource *)self isCircular];
  currentSampleIndex = [(AXMAudioDataSource *)self currentSampleIndex];
  v8 = [(AXMAudioDataSource *)self length];
  dataSources = [(AXMAudioDataSourceMixer *)self dataSources];
  v10 = [v3 stringWithFormat:@"<%@ %p name=%@ circular=%d currentSample=%lu length=%lu sources=\n%@>", v4, self, name, isCircular, currentSampleIndex, v8, dataSources];

  return v10;
}

@end