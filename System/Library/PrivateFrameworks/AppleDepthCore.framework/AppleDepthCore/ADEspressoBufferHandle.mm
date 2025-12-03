@interface ADEspressoBufferHandle
- (ADEspressoBufferHandle)initWithName:(id)name buffer:(id *)buffer;
- (ADEspressoBufferHandle)initWithName:(id)name rawData:(void *)data dimensions:(id)dimensions strides:(id)strides;
- (BOOL)copyTo:(id)to;
- (BOOL)writeToFile:(id)file atomically:(BOOL)atomically;
- (unint64_t)dimensionsProduct;
- (void)clearBuffer;
@end

@implementation ADEspressoBufferHandle

- (BOOL)copyTo:(id)to
{
  size = self->_size;
  v4 = *(to + 13);
  if (size == v4)
  {
    memcpy(*(to + 2), self->_rawData, size);
  }

  return size == v4;
}

- (BOOL)writeToFile:(id)file atomically:(BOOL)atomically
{
  v18 = *MEMORY[0x277D85DE8];
  fileCopy = file;
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
  if (fileCopy)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", fileCopy, v8];

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

- (ADEspressoBufferHandle)initWithName:(id)name rawData:(void *)data dimensions:(id)dimensions strides:(id)strides
{
  nameCopy = name;
  dimensionsCopy = dimensions;
  stridesCopy = strides;
  v14 = stridesCopy;
  selfCopy = 0;
  if (nameCopy && data && dimensionsCopy && stridesCopy)
  {
    if ([dimensionsCopy count] && (v16 = objc_msgSend(dimensionsCopy, "count"), v16 == objc_msgSend(v14, "count")))
    {
      v39.receiver = self;
      v39.super_class = ADEspressoBufferHandle;
      v17 = [(ADEspressoBufferHandle *)&v39 init];
      v18 = v17;
      if (v17)
      {
        objc_storeStrong(&v17->_name, name);
        v18->_rawData = data;
        objc_storeStrong(&v18->_dimensions, dimensions);
        objectEnumerator = [dimensionsCopy objectEnumerator];
        nextObject = [objectEnumerator nextObject];
        v21 = nextObject;
        if (nextObject)
        {
          unsignedIntValue = [nextObject unsignedIntValue];
        }

        else
        {
          unsignedIntValue = 1;
        }

        v18->_width = unsignedIntValue;
        nextObject2 = [objectEnumerator nextObject];

        if (nextObject2)
        {
          unsignedIntValue2 = [nextObject2 unsignedIntValue];
        }

        else
        {
          unsignedIntValue2 = 1;
        }

        v18->_height = unsignedIntValue2;
        nextObject3 = [objectEnumerator nextObject];

        if (nextObject3)
        {
          unsignedIntValue3 = [nextObject3 unsignedIntValue];
        }

        else
        {
          unsignedIntValue3 = 1;
        }

        v18->_channels = unsignedIntValue3;
        nextObject4 = [objectEnumerator nextObject];

        if (nextObject4)
        {
          unsignedIntValue4 = [nextObject4 unsignedIntValue];
        }

        else
        {
          unsignedIntValue4 = 1;
        }

        v18->_batches = unsignedIntValue4;
        nextObject5 = [objectEnumerator nextObject];

        if (nextObject5)
        {
          unsignedIntValue5 = [nextObject5 unsignedIntValue];
        }

        else
        {
          unsignedIntValue5 = 1;
        }

        v18->_sequences = unsignedIntValue5;
        lastObject = [v14 lastObject];
        unsignedIntValue6 = [lastObject unsignedIntValue];
        lastObject2 = [dimensionsCopy lastObject];
        v18->_size = [lastObject2 unsignedIntValue] * unsignedIntValue6;

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
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (ADEspressoBufferHandle)initWithName:(id)name buffer:(id *)buffer
{
  v20[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (nameCopy)
  {
    v19.receiver = self;
    v19.super_class = ADEspressoBufferHandle;
    v8 = [(ADEspressoBufferHandle *)&v19 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_name, name);
      v9->_rawData = buffer->var0;
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:buffer->var2[0]];
      v20[0] = v10;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:buffer->var2[1]];
      v20[1] = v11;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:buffer->var2[2]];
      v20[2] = v12;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:buffer->var2[3]];
      v20[3] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
      dimensions = v9->_dimensions;
      v9->_dimensions = v14;

      v9->_width = buffer->var4;
      v9->_height = buffer->var5;
      v9->_channels = buffer->var6;
      v9->_batches = buffer->var7;
      var8 = buffer->var8;
      v9->_sequences = var8;
      v9->_size = var8 * buffer->var3[3];
      v9->_rowBytes = buffer->var3[0];
      v9->_channelBytes = buffer->var3[1];
      v9->_batchBytes = buffer->var3[2];
      v9->_sequenceBytes = buffer->var3[3];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end