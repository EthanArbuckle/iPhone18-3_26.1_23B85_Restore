@interface ENSignatureFile
+ (id)_signatureFileWithProtobufCoder:(id)a3 error:(id *)a4;
+ (id)signatureFileWithArchive:(id)a3 error:(id *)a4;
+ (id)signatureFileWithBytes:(const char *)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)closeAndReturnError:(id *)a3;
- (BOOL)openForWritingToData:(id)a3 error:(id *)a4;
- (BOOL)openWithFileSystemRepresentation:(const char *)a3 reading:(BOOL)a4 error:(id *)a5;
- (BOOL)writeAndReturnError:(id *)a3;
@end

@implementation ENSignatureFile

+ (id)signatureFileWithArchive:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(ENProtobufCoder);
  [(ENProtobufCoder *)v7 setReadArchive:v6];

  v8 = [a1 _signatureFileWithProtobufCoder:v7 error:a4];

  return v8;
}

+ (id)signatureFileWithBytes:(const char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v9 = objc_alloc_init(ENProtobufCoder);
  [(ENProtobufCoder *)v9 setReadMemory:a3 length:a4];
  v10 = [a1 _signatureFileWithProtobufCoder:v9 error:a5];

  return v10;
}

+ (id)_signatureFileWithProtobufCoder:(id)a3 error:(id *)a4
{
  v5 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __57__ENSignatureFile__signatureFileWithProtobufCoder_error___block_invoke;
  v29[3] = &unk_278A4B610;
  v29[4] = &v30;
  v29[5] = a4;
  v6 = MEMORY[0x2383EE560](v29);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  do
  {
    v8 = objc_autoreleasePoolPush();
    v28 = 0;
    v9 = (v31 + 5);
    obj = v31[5];
    v27 = 0;
    v10 = [v5 readType:&v28 tag:&v27 eofOkay:1 error:&obj];
    objc_storeStrong(v9, obj);
    if (v10)
    {
      if (v27 == 1)
      {
        v25 = 0;
        v11 = v5;
        v12 = (v31 + 5);
        v24 = v31[5];
        v13 = [v11 readLengthDelimited:&v25 error:&v24];
        objc_storeStrong(v12, v24);
        if (v13)
        {
          v14 = [ENSignature alloc];
          v15 = (v31 + 5);
          v23 = v31[5];
          v16 = [(ENSignature *)v14 initWithBytes:v13 length:v25 error:&v23];
          objc_storeStrong(v15, v23);
          if (v16)
          {
            [v7 addObject:v16];

LABEL_11:
            v17 = 0;
            goto LABEL_12;
          }
        }
      }

      else
      {
        v18 = (v31 + 5);
        v22 = v31[5];
        v19 = [v5 skipType:v28 error:&v22];
        objc_storeStrong(v18, v22);
        if (v19)
        {
          goto LABEL_11;
        }
      }

      v17 = 1;
    }

    else if (v31[5])
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

LABEL_12:
    objc_autoreleasePoolPop(v8);
  }

  while (!v17);
  if (v17 == 2)
  {
    v20 = objc_alloc_init(ENSignatureFile);
    [(ENSignatureFile *)v20 setSignatures:v7];
  }

  else
  {
    v20 = 0;
  }

  v6[2](v6);
  _Block_object_dispose(&v30, 8);

  return v20;
}

id __57__ENSignatureFile__signatureFileWithProtobufCoder_error___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = result;
      **(a1 + 40) = result;
    }
  }

  return result;
}

- (BOOL)openWithFileSystemRepresentation:(const char *)a3 reading:(BOOL)a4 error:(id *)a5
{
  if (a4)
  {
    if (a5)
    {
      v9 = 5;
      goto LABEL_10;
    }
  }

  else if (self->_fileHandle || self->_outputData)
  {
    if (a5)
    {
      v9 = 10;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = fopen(a3, "wb");
    self->_fileHandle = v7;
    if (v7 || *__error() && !*__error())
    {
      return 1;
    }

    if (a5)
    {
      v9 = 2;
LABEL_10:
      v10 = ENErrorF(v9);
      v11 = v10;
      result = 0;
      *a5 = v10;
      return result;
    }
  }

  return 0;
}

- (BOOL)openForWritingToData:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (self->_fileHandle || (outputData = self->_outputData, p_outputData = &self->_outputData, outputData))
  {
    if (a4)
    {
      ENErrorF(10);
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    objc_storeStrong(p_outputData, a3);
    v10 = 1;
  }

  return v10;
}

- (BOOL)closeAndReturnError:(id *)a3
{
  outputData = self->_outputData;
  if (outputData)
  {
    self->_outputData = 0;

    return 1;
  }

  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    v7 = fclose(fileHandle);
    self->_fileHandle = 0;
    if (!v7)
    {
      return 1;
    }

    if (a3)
    {
      v12 = *__error();
      v9 = 1;
      goto LABEL_10;
    }
  }

  else if (a3)
  {
    v9 = 10;
LABEL_10:
    v10 = ENErrorF(v9);
    v11 = v10;
    result = 0;
    *a3 = v10;
    return result;
  }

  return 0;
}

- (BOOL)writeAndReturnError:(id *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  v41 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __39__ENSignatureFile_writeAndReturnError___block_invoke;
  v35[3] = &unk_278A4B610;
  v35[4] = &v36;
  v35[5] = a3;
  v27 = MEMORY[0x2383EE560](v35, a2);
  fileHandle = self->_fileHandle;
  v28 = self->_outputData;
  if (fileHandle | v28)
  {
    v5 = objc_alloc_init(ENProtobufCoder);
    v6 = v5;
    if (fileHandle)
    {
      [(ENProtobufCoder *)v5 setFileHandle:fileHandle];
    }

    else if (v28)
    {
      [(ENProtobufCoder *)v5 setWriteMutableData:v28];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = self->_signatures;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v8)
    {
      v9 = *v32;
      do
      {
        v10 = 0;
        do
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v31 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          v13 = objc_alloc_init(ENProtobufCoder);
          v14 = objc_alloc_init(MEMORY[0x277CBEB28]);
          [(ENProtobufCoder *)v13 setWriteMutableData:v14];
          v15 = (v37 + 5);
          obj = v37[5];
          LOBYTE(v11) = [v11 encodeWithProtobufCoder:v13 error:&obj];
          objc_storeStrong(v15, obj);
          v21 = 0;
          if (v11)
          {
            v16 = [v14 length];
            if (!v16 || (v17 = v14, v18 = [v14 bytes], v19 = (v37 + 5), v29 = v37[5], v20 = -[ENProtobufCoder writeLengthDelimitedPtr:length:tag:error:](v6, "writeLengthDelimitedPtr:length:tag:error:", v18, v16, 1, &v29), objc_storeStrong(v19, v29), v20))
            {
              v21 = 1;
            }
          }

          objc_autoreleasePoolPop(v12);
          if (!v21)
          {
            v23 = 0;
            goto LABEL_22;
          }

          ++v10;
        }

        while (v8 != v10);
        v22 = [(NSArray *)v7 countByEnumeratingWithState:&v31 objects:v42 count:16];
        v8 = v22;
      }

      while (v22);
    }

    v23 = 1;
LABEL_22:
  }

  else
  {
    v26 = ENErrorF(10);
    v23 = 0;
    v6 = v37[5];
    v37[5] = v26;
  }

  v27[2](v27);
  _Block_object_dispose(&v36, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

id __39__ENSignatureFile_writeAndReturnError___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = result;
      **(a1 + 40) = result;
    }
  }

  return result;
}

@end