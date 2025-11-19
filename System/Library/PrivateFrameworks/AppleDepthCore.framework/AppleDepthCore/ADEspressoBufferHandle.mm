@interface ADEspressoBufferHandle
- (ADEspressoBufferHandle)initWithName:(id)a3 buffer:(id *)a4;
- (ADEspressoBufferHandle)initWithName:(id)a3 rawData:(void *)a4 dimensions:(id)a5 strides:(id)a6;
- (BOOL)copyTo:(id)a3;
- (BOOL)writeToFile:(id)a3 atomically:(BOOL)a4;
- (unint64_t)dimensionsProduct;
- (void)clearBuffer;
@end

@implementation ADEspressoBufferHandle

- (BOOL)copyTo:(id)a3
{
  size = self->_size;
  v4 = *(a3 + 13);
  if (size == v4)
  {
    memcpy(*(a3 + 2), self->_rawData, size);
  }

  return size == v4;
}

- (BOOL)writeToFile:(id)a3 atomically:(BOOL)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15 = xmmword_278CA6028;
  v16 = *off_278CA6038;
  v17 = @"rgba";
  channels = self->_channels;
  if (channels > 4)
  {
    v7 = @"raw";
  }

  else
  {
    v7 = *(&v15 + channels);
  }

  v8 = v7;
  v9 = [(NSString *)self->_name stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
  if (v5)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v5, v8];

    v11 = v10;
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%zux%zu.%@", v9, self->_width, self->_height, v8, v15, v16, v17, v18];
  }

  printf("Saving Espresso Buffer:\x1B[1m %s \x1B[22m\n", [v11 UTF8String]);
  v12 = fopen([v11 UTF8String], "wb");
  if (v12)
  {
    fwrite(self->_rawData, 1uLL, self->_size, v12);
  }

  fclose(v12);

  for (i = 32; i != -8; i -= 8)
  {
  }

  return 1;
}

- (void)clearBuffer
{
  rawData = self->_rawData;
  if (rawData)
  {
    bzero(rawData, self->_size);
  }
}

- (unint64_t)dimensionsProduct
{
  if (![(NSArray *)self->_dimensions count])
  {
    return 1;
  }

  v3 = 0;
  v4 = 1;
  LODWORD(v5) = 1;
  do
  {
    v6 = [(NSArray *)self->_dimensions objectAtIndexedSubscript:v3];
    v5 = [v6 intValue] * v5;

    v3 = v4;
  }

  while ([(NSArray *)self->_dimensions count]> v4++);
  return v5;
}

- (ADEspressoBufferHandle)initWithName:(id)a3 rawData:(void *)a4 dimensions:(id)a5 strides:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  v15 = 0;
  if (v11 && a4 && v12 && v13)
  {
    if ([v12 count] && (v16 = objc_msgSend(v12, "count"), v16 == objc_msgSend(v14, "count")))
    {
      v39.receiver = self;
      v39.super_class = ADEspressoBufferHandle;
      v17 = [(ADEspressoBufferHandle *)&v39 init];
      v18 = v17;
      if (v17)
      {
        objc_storeStrong(&v17->_name, a3);
        v18->_rawData = a4;
        objc_storeStrong(&v18->_dimensions, a5);
        v19 = [v12 objectEnumerator];
        v20 = [v19 nextObject];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 unsignedIntValue];
        }

        else
        {
          v22 = 1;
        }

        v18->_width = v22;
        v23 = [v19 nextObject];

        if (v23)
        {
          v24 = [v23 unsignedIntValue];
        }

        else
        {
          v24 = 1;
        }

        v18->_height = v24;
        v25 = [v19 nextObject];

        if (v25)
        {
          v26 = [v25 unsignedIntValue];
        }

        else
        {
          v26 = 1;
        }

        v18->_channels = v26;
        v27 = [v19 nextObject];

        if (v27)
        {
          v28 = [v27 unsignedIntValue];
        }

        else
        {
          v28 = 1;
        }

        v18->_batches = v28;
        v29 = [v19 nextObject];

        if (v29)
        {
          v30 = [v29 unsignedIntValue];
        }

        else
        {
          v30 = 1;
        }

        v18->_sequences = v30;
        v31 = [v14 lastObject];
        v32 = [v31 unsignedIntValue];
        v33 = [v12 lastObject];
        v18->_size = [v33 unsignedIntValue] * v32;

        if ([v14 count] < 2)
        {
          v18->_rowBytes = v18->_size;
        }

        else
        {
          v34 = [v14 objectAtIndexedSubscript:1];
          v18->_rowBytes = [v34 unsignedLongValue];
        }

        if ([v14 count] < 3)
        {
          v18->_channelBytes = v18->_size;
        }

        else
        {
          v35 = [v14 objectAtIndexedSubscript:2];
          v18->_channelBytes = [v35 unsignedLongValue];
        }

        if ([v14 count] < 4)
        {
          v18->_batchBytes = v18->_size;
        }

        else
        {
          v36 = [v14 objectAtIndexedSubscript:3];
          v18->_batchBytes = [v36 unsignedLongValue];
        }

        if ([v14 count] < 5)
        {
          v18->_sequenceBytes = v18->_size;
        }

        else
        {
          v37 = [v14 objectAtIndexedSubscript:4];
          v18->_sequenceBytes = [v37 unsignedLongValue];
        }
      }

      self = v18;
      v15 = self;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (ADEspressoBufferHandle)initWithName:(id)a3 buffer:(id *)a4
{
  v20[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    v19.receiver = self;
    v19.super_class = ADEspressoBufferHandle;
    v8 = [(ADEspressoBufferHandle *)&v19 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_name, a3);
      v9->_rawData = a4->var0;
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4->var2[0]];
      v20[0] = v10;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4->var2[1]];
      v20[1] = v11;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4->var2[2]];
      v20[2] = v12;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4->var2[3]];
      v20[3] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
      dimensions = v9->_dimensions;
      v9->_dimensions = v14;

      v9->_width = a4->var4;
      v9->_height = a4->var5;
      v9->_channels = a4->var6;
      v9->_batches = a4->var7;
      var8 = a4->var8;
      v9->_sequences = var8;
      v9->_size = var8 * a4->var3[3];
      v9->_rowBytes = a4->var3[0];
      v9->_channelBytes = a4->var3[1];
      v9->_batchBytes = a4->var3[2];
      v9->_sequenceBytes = a4->var3[3];
    }

    self = v9;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end