@interface NSStream(NSStreamBoundPairCreationExtensions)
+ (__CFWriteStream)getBoundStreamsWithBufferSize:()NSStreamBoundPairCreationExtensions inputStream:outputStream:;
@end

@implementation NSStream(NSStreamBoundPairCreationExtensions)

+ (__CFWriteStream)getBoundStreamsWithBufferSize:()NSStreamBoundPairCreationExtensions inputStream:outputStream:
{
  readStream[1] = *MEMORY[0x1E69E9840];
  writeStream = 0;
  readStream[0] = 0;
  CFStreamCreateBoundPair(*MEMORY[0x1E695E480], readStream, &writeStream, transferBufferSize);
  if (readStream[0])
  {
    v7 = readStream[0];
    if (a4)
    {
      *a4 = readStream[0];
    }
  }

  result = writeStream;
  if (writeStream)
  {
    result = writeStream;
    if (a5)
    {
      *a5 = writeStream;
    }
  }

  return result;
}

@end