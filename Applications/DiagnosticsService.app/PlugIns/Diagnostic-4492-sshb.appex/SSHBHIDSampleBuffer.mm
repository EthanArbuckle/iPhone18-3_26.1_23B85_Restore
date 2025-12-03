@interface SSHBHIDSampleBuffer
- (SSHBHIDSampleBuffer)init;
- (SSHBHIDSampleBuffer)initWithSize:(unint64_t)size;
- (id)csv;
- (id)removeSample;
- (id)sampleBuffer;
- (void)addSample:(id)sample;
- (void)writeSamplesWithFilePath:(id)path;
@end

@implementation SSHBHIDSampleBuffer

- (SSHBHIDSampleBuffer)init
{
  v6.receiver = self;
  v6.super_class = SSHBHIDSampleBuffer;
  v2 = [(SSHBHIDSampleBuffer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    buffer = v2->_buffer;
    v2->_buffer = v3;

    v2->_isFull = 0;
    v2->_bufferSize = 0xFFFFFFFFLL;
  }

  return v2;
}

- (SSHBHIDSampleBuffer)initWithSize:(unint64_t)size
{
  result = [(SSHBHIDSampleBuffer *)self init];
  if (result)
  {
    sizeCopy = 0xFFFFFFFFLL;
    if (size)
    {
      sizeCopy = size;
    }

    result->_bufferSize = sizeCopy;
  }

  return result;
}

- (id)sampleBuffer
{
  buffer = [(SSHBHIDSampleBuffer *)self buffer];
  v3 = [buffer copy];

  return v3;
}

- (void)addSample:(id)sample
{
  sampleCopy = sample;
  buffer = [(SSHBHIDSampleBuffer *)self buffer];
  [buffer addObject:sampleCopy];

  buffer2 = [(SSHBHIDSampleBuffer *)self buffer];
  v7 = [buffer2 count];
  bufferSize = [(SSHBHIDSampleBuffer *)self bufferSize];

  if (v7 > bufferSize)
  {
    removeSample = [(SSHBHIDSampleBuffer *)self removeSample];
  }

  buffer3 = [(SSHBHIDSampleBuffer *)self buffer];
  -[SSHBHIDSampleBuffer setIsFull:](self, "setIsFull:", [buffer3 count] >= -[SSHBHIDSampleBuffer bufferSize](self, "bufferSize"));
}

- (id)removeSample
{
  buffer = [(SSHBHIDSampleBuffer *)self buffer];
  v4 = [buffer objectAtIndex:0];

  buffer2 = [(SSHBHIDSampleBuffer *)self buffer];
  [buffer2 removeObjectAtIndex:0];

  buffer3 = [(SSHBHIDSampleBuffer *)self buffer];
  -[SSHBHIDSampleBuffer setIsFull:](self, "setIsFull:", [buffer3 count] >= -[SSHBHIDSampleBuffer bufferSize](self, "bufferSize"));

  return v4;
}

- (id)csv
{
  v3 = objc_alloc_init(NSMutableString);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  buffer = [(SSHBHIDSampleBuffer *)self buffer];
  v5 = [buffer countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(buffer);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) csv];
        [v3 appendFormat:@"%@\n", v9];
      }

      v6 = [buffer countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)writeSamplesWithFilePath:(id)path
{
  pathCopy = path;
  v4 = [(SSHBHIDSampleBuffer *)self csv];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:pathCopy];

  v7 = pathCopy;
  if (v6)
  {
    v8 = 1;
    v9 = pathCopy;
    do
    {
      stringByDeletingPathExtension = [pathCopy stringByDeletingPathExtension];
      pathExtension = [pathCopy pathExtension];
      v7 = [NSString stringWithFormat:@"%@-%u.%@", stringByDeletingPathExtension, v8, pathExtension];

      v12 = +[NSFileManager defaultManager];
      LOBYTE(pathExtension) = [v12 fileExistsAtPath:v7];

      v8 = (v8 + 1);
      v9 = v7;
    }

    while ((pathExtension & 1) != 0);
  }

  [v4 writeToFile:v7 atomically:1 encoding:4 error:0];
}

@end