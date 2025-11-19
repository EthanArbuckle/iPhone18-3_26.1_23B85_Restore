@interface AXMAudioDataSourceMixer
- (AXMAudioDataSourceMixer)initWithName:(id)a3 sampleRate:(double)a4 circular:(BOOL)a5;
- (id)description;
- (void)addDataSource:(id)a3;
- (void)prepareNextSamples:(unint64_t)a3;
- (void)removeAllDataSources;
- (void)removeDataSource:(id)a3;
- (void)setCurrentSampleIndex:(unint64_t)a3;
@end

@implementation AXMAudioDataSourceMixer

- (AXMAudioDataSourceMixer)initWithName:(id)a3 sampleRate:(double)a4 circular:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v14.receiver = self;
  v14.super_class = AXMAudioDataSourceMixer;
  v9 = [(AXMAudioDataSource *)&v14 initWithName:v8 sampleRate:v5 circular:a4];
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

- (void)setCurrentSampleIndex:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(AXMAudioDataSource *)self currentSampleIndex];
  if ([(AXMAudioDataSource *)self isCircular])
  {
    v6 = a3 % [(AXMAudioDataSource *)self length];
  }

  else if ((a3 & 0x8000000000000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(AXMAudioDataSource *)self length]- 1;
    v6 = a3;
    if (v7 < a3)
    {
      v6 = [(AXMAudioDataSource *)self length]- 1;
    }
  }

  v17.receiver = self;
  v17.super_class = AXMAudioDataSourceMixer;
  [(AXMAudioDataSource *)&v17 setCurrentSampleIndex:v6];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(AXMAudioDataSourceMixer *)self dataSources];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = a3 - v5;
    v11 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * i) setCurrentSampleIndex:{v10 + objc_msgSend(*(*(&v13 + 1) + 8 * i), "currentSampleIndex")}];
      }

      v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)addDataSource:(id)a3
{
  v9 = a3;
  [v9 setCurrentSampleIndex:{-[AXMAudioDataSource currentSampleIndex](self, "currentSampleIndex")}];
  v4 = MEMORY[0x1E695DFA8];
  v5 = [(AXMAudioDataSourceMixer *)self dataSources];
  v6 = [v4 setWithSet:v5];

  [v6 addObject:v9];
  v7 = [v6 copy];
  dataSources = self->_dataSources;
  self->_dataSources = v7;
}

- (void)removeDataSource:(id)a3
{
  v9 = a3;
  v4 = MEMORY[0x1E695DFA8];
  v5 = [(AXMAudioDataSourceMixer *)self dataSources];
  v6 = [v4 setWithSet:v5];

  [v6 removeObject:v9];
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

- (void)prepareNextSamples:(unint64_t)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = [(AXMAudioDataSource *)self sampleBuffer];
  if (a3)
  {
    v4 = 0;
    do
    {
      v5 = [(AXMAudioDataSource *)self isCircular];
      v6 = [(AXMAudioDataSource *)self currentSampleIndex]+ v4;
      if (v5)
      {
        v6 %= [(AXMAudioDataSource *)self length];
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v7 = [(AXMAudioDataSourceMixer *)self dataSources];
      v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v28 + 1) + 8 * i);
            if ([v12 isCircular])
            {
              v13 = [v12 currentSampleIndex];
              v14 = (v13 + v4) % [v12 length];
            }

            else
            {
              v14 = [v12 currentSampleIndex] + v4;
            }

            v15 = [v12 sampleBuffer];
            if (v14 < [v12 length])
            {
              [v12 level];
              v17 = v16;
              v18 = *(*v15 + 4 * v14);
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

          v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v8);
      }

      if (v27 < (v26[1] - *v26) >> 2)
      {
        if ([(AXMAudioDataSourceMixer *)self isMonoOutput])
        {
          *(*v26 + 4 * v27) = v9;
        }

        else
        {
          [(AXMAudioDataSourceMixer *)self panning];
          v23 = v22;
          [(AXMAudioDataSourceMixer *)self panning];
          *(*v26 + 4 * v27) = ((1.0 - v23) * v9) + ((v24 * v9) << 16);
        }
      }

      ++v4;
    }

    while (v4 != a3);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AXMAudioDataSourceMixer *)self name];
  v6 = [(AXMAudioDataSource *)self isCircular];
  v7 = [(AXMAudioDataSource *)self currentSampleIndex];
  v8 = [(AXMAudioDataSource *)self length];
  v9 = [(AXMAudioDataSourceMixer *)self dataSources];
  v10 = [v3 stringWithFormat:@"<%@ %p name=%@ circular=%d currentSample=%lu length=%lu sources=\n%@>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

@end