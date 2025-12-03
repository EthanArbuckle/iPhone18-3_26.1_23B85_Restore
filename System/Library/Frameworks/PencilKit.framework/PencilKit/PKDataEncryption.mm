@interface PKDataEncryption
+ (id)decryptFile:(void *)file key:(uint64_t)key error:;
+ (id)encryptData:(void *)data key:;
+ (uint64_t)encryptData:(void *)data to:(void *)to key:(uint64_t)key error:;
@end

@implementation PKDataEncryption

+ (id)encryptData:(void *)data key:
{
  v4 = a2;
  dataCopy = data;
  objc_opt_self();
  dataOutMoved = 0;
  v6 = 0;
  if (CCCrypt(0, 0, 1u, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0, objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"), 0, 0, &dataOutMoved) == -4301)
  {
    v6 = [MEMORY[0x1E695DF88] dataWithLength:dataOutMoved];
    if (CCCrypt(0, 0, 1u, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0, objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"), objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length"), &dataOutMoved))
    {

      v6 = 0;
    }

    else
    {
      [v6 setLength:dataOutMoved];
    }
  }

  return v6;
}

+ (id)decryptFile:(void *)file key:(uint64_t)key error:
{
  fileCopy = file;
  v7 = a2;
  objc_opt_self();
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7 options:1 error:key];

  if (v8 && [v8 length])
  {
    v9 = v8;
    v10 = fileCopy;
    objc_opt_self();
    dataOutMoved = 0;
    v11 = 0;
    if (CCCrypt(1u, 0, 1u, [v10 bytes], objc_msgSend(v10, "length"), 0, objc_msgSend(v9, "bytes"), objc_msgSend(v9, "length"), 0, 0, &dataOutMoved) == -4301)
    {
      v11 = [MEMORY[0x1E695DF88] dataWithLength:dataOutMoved];
      if (CCCrypt(1u, 0, 1u, [v10 bytes], objc_msgSend(v10, "length"), 0, objc_msgSend(v9, "bytes"), objc_msgSend(v9, "length"), objc_msgSend(v11, "bytes"), objc_msgSend(v11, "length"), &dataOutMoved))
      {

        v11 = 0;
      }

      else
      {
        [v11 setLength:dataOutMoved];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (uint64_t)encryptData:(void *)data to:(void *)to key:(uint64_t)key error:
{
  dataCopy = data;
  toCopy = to;
  v10 = a2;
  v11 = objc_opt_self();
  v12 = [(PKDataEncryption *)v11 encryptData:v10 key:toCopy];

  if (v12)
  {
    v13 = [v12 writeToURL:dataCopy options:1 error:key];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end