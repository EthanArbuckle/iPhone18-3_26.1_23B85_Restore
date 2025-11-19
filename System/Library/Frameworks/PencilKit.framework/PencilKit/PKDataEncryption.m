@interface PKDataEncryption
+ (id)decryptFile:(void *)a3 key:(uint64_t)a4 error:;
+ (id)encryptData:(void *)a3 key:;
+ (uint64_t)encryptData:(void *)a3 to:(void *)a4 key:(uint64_t)a5 error:;
@end

@implementation PKDataEncryption

+ (id)encryptData:(void *)a3 key:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  dataOutMoved = 0;
  v6 = 0;
  if (CCCrypt(0, 0, 1u, [v5 bytes], objc_msgSend(v5, "length"), 0, objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"), 0, 0, &dataOutMoved) == -4301)
  {
    v6 = [MEMORY[0x1E695DF88] dataWithLength:dataOutMoved];
    if (CCCrypt(0, 0, 1u, [v5 bytes], objc_msgSend(v5, "length"), 0, objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"), objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length"), &dataOutMoved))
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

+ (id)decryptFile:(void *)a3 key:(uint64_t)a4 error:
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7 options:1 error:a4];

  if (v8 && [v8 length])
  {
    v9 = v8;
    v10 = v6;
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

+ (uint64_t)encryptData:(void *)a3 to:(void *)a4 key:(uint64_t)a5 error:
{
  v8 = a3;
  v9 = a4;
  v10 = a2;
  v11 = objc_opt_self();
  v12 = [(PKDataEncryption *)v11 encryptData:v10 key:v9];

  if (v12)
  {
    v13 = [v12 writeToURL:v8 options:1 error:a5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end