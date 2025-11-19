@interface NSStream(NSSocketStreamCreationExtensions)
+ (const)getStreamsToHost:()NSSocketStreamCreationExtensions port:inputStream:outputStream:;
+ (void)getStreamsToHostWithName:()NSSocketStreamCreationExtensions port:inputStream:outputStream:;
@end

@implementation NSStream(NSSocketStreamCreationExtensions)

+ (void)getStreamsToHostWithName:()NSSocketStreamCreationExtensions port:inputStream:outputStream:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13[0] = 0;
  if (host)
  {
    v8 = v13;
    if (!a5)
    {
      v8 = 0;
    }

    if (a6)
    {
      v9 = &v12;
    }

    else
    {
      v9 = 0;
    }

    CFStreamCreatePairWithSocketToHost(*MEMORY[0x1E695E480], host, port, v8, v9);
    if (v13[0])
    {
      v10 = v13[0];
      if (a5)
      {
        *a5 = v13[0];
      }
    }

    if (v12)
    {
      v11 = v12;
      if (a6)
      {
        *a6 = v12;
      }
    }
  }
}

+ (const)getStreamsToHost:()NSSocketStreamCreationExtensions port:inputStream:outputStream:
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (getStreamsToHost_port_inputStream_outputStream__onceToken != -1)
  {
    dispatch_once(&getStreamsToHost_port_inputStream_outputStream__onceToken, &__block_literal_global_49);
  }

  v14 = 0;
  v15[0] = 0;
  result = [a3 name];
  if (result || (result = [a3 address]) != 0 || (result = objc_msgSend(a3, "_thingToResolve")) != 0)
  {
    if (a5)
    {
      v11 = v15;
    }

    else
    {
      v11 = 0;
    }

    if (a6)
    {
      v12 = &v14;
    }

    else
    {
      v12 = 0;
    }

    CFStreamCreatePairWithSocketToHost(*MEMORY[0x1E695E480], result, a4, v11, v12);
    if (v15[0])
    {
      v13 = v15[0];
      if (a5)
      {
        *a5 = v15[0];
      }
    }

    result = v14;
    if (v14)
    {
      result = v14;
      if (a6)
      {
        *a6 = v14;
      }
    }
  }

  return result;
}

@end