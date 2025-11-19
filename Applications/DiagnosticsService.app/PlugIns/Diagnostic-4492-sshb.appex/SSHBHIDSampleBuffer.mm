@interface SSHBHIDSampleBuffer
- (SSHBHIDSampleBuffer)init;
- (SSHBHIDSampleBuffer)initWithSize:(unint64_t)a3;
- (id)csv;
- (id)removeSample;
- (id)sampleBuffer;
- (void)addSample:(id)a3;
- (void)writeSamplesWithFilePath:(id)a3;
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

- (SSHBHIDSampleBuffer)initWithSize:(unint64_t)a3
{
  result = [(SSHBHIDSampleBuffer *)self init];
  if (result)
  {
    v5 = 0xFFFFFFFFLL;
    if (a3)
    {
      v5 = a3;
    }

    result->_bufferSize = v5;
  }

  return result;
}

- (id)sampleBuffer
{
  v2 = [(SSHBHIDSampleBuffer *)self buffer];
  v3 = [v2 copy];

  return v3;
}

- (void)addSample:(id)a3
{
  v4 = a3;
  v5 = [(SSHBHIDSampleBuffer *)self buffer];
  [v5 addObject:v4];

  v6 = [(SSHBHIDSampleBuffer *)self buffer];
  v7 = [v6 count];
  v8 = [(SSHBHIDSampleBuffer *)self bufferSize];

  if (v7 > v8)
  {
    v9 = [(SSHBHIDSampleBuffer *)self removeSample];
  }

  v10 = [(SSHBHIDSampleBuffer *)self buffer];
  -[SSHBHIDSampleBuffer setIsFull:](self, "setIsFull:", [v10 count] >= -[SSHBHIDSampleBuffer bufferSize](self, "bufferSize"));
}

- (id)removeSample
{
  v3 = [(SSHBHIDSampleBuffer *)self buffer];
  v4 = [v3 objectAtIndex:0];

  v5 = [(SSHBHIDSampleBuffer *)self buffer];
  [v5 removeObjectAtIndex:0];

  v6 = [(SSHBHIDSampleBuffer *)self buffer];
  -[SSHBHIDSampleBuffer setIsFull:](self, "setIsFull:", [v6 count] >= -[SSHBHIDSampleBuffer bufferSize](self, "bufferSize"));

  return v4;
}

- (id)csv
{
  v3 = objc_alloc_init(NSMutableString);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(SSHBHIDSampleBuffer *)self buffer];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) csv];
        [v3 appendFormat:@"%@\n", v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)writeSamplesWithFilePath:(id)a3
{
  v13 = a3;
  v4 = [(SSHBHIDSampleBuffer *)self csv];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v13];

  v7 = v13;
  if (v6)
  {
    v8 = 1;
    v9 = v13;
    do
    {
      v10 = [v13 stringByDeletingPathExtension];
      v11 = [v13 pathExtension];
      v7 = [NSString stringWithFormat:@"%@-%u.%@", v10, v8, v11];

      v12 = +[NSFileManager defaultManager];
      LOBYTE(v11) = [v12 fileExistsAtPath:v7];

      v8 = (v8 + 1);
      v9 = v7;
    }

    while ((v11 & 1) != 0);
  }

  [v4 writeToFile:v7 atomically:1 encoding:4 error:0];
}

@end