@interface _PFVMData
- (_PFVMData)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (_PFVMData)initWithContentsOfFile:(id)file options:(unint64_t)options error:(id *)error;
- (void)dealloc;
@end

@implementation _PFVMData

- (void)dealloc
{
  payload = self->_payload;
  if (payload)
  {
    munmap(payload, self->_length);
  }

  v4.receiver = self;
  v4.super_class = _PFVMData;
  [(_PFVMData *)&v4 dealloc];
}

- (_PFVMData)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  v10.receiver = self;
  v10.super_class = _PFVMData;
  v6 = [(_PFVMData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_length = length;
    v8 = mmap(0, length, 3, 4098, 754974720, 0);
    v7->_payload = v8;
    memcpy(v8, bytes, length);
  }

  return v7;
}

- (_PFVMData)initWithContentsOfFile:(id)file options:(unint64_t)options error:(id *)error
{
  v35[2] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = _PFVMData;
  v7 = [(_PFVMData *)&v27 init:file];
  if (!v7)
  {
    goto LABEL_22;
  }

  fileSystemRepresentation = [file fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    v9 = open(fileSystemRepresentation, 0);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = v9;
      fcntl(v9, 48, 1);
      memset(&v26, 0, sizeof(v26));
      if (fstat(v10, &v26))
      {
        if (error)
        {
          v11 = *__error();
          v12 = *MEMORY[0x1E696A798];
          v34[0] = *MEMORY[0x1E696A368];
          v34[1] = @"reason";
          v35[0] = file;
          v35[1] = @"fstat failed";
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:v12 code:v11 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v35, v34, 2)}];
        }

        close(v10);
        goto LABEL_21;
      }

      st_size = v26.st_size;
      v7->_length = v26.st_size;
      if (!st_size)
      {
        goto LABEL_18;
      }

      v16 = mmap(0, st_size, 3, 4098, 754974720, 0);
      v7->_payload = v16;
      if (v16)
      {
        if (read(v10, v16, v7->_length) == v7->_length)
        {
          goto LABEL_18;
        }

        v17 = *__error();
        munmap(v7->_payload, v7->_length);
        v7->_payload = 0;
        if (!error)
        {
          goto LABEL_18;
        }

        v18 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A798];
        v32[0] = *MEMORY[0x1E696A368];
        v32[1] = @"reason";
        v33[0] = file;
        v33[1] = @"read failed";
        v20 = MEMORY[0x1E695DF20];
        v21 = v33;
        v22 = v32;
      }

      else
      {
        v23 = __error();
        if (!error)
        {
LABEL_18:
          close(v10);
          goto LABEL_19;
        }

        v17 = *v23;
        v18 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A798];
        v30[0] = *MEMORY[0x1E696A368];
        v30[1] = @"reason";
        v31[0] = file;
        v31[1] = @"mmap failed";
        v20 = MEMORY[0x1E695DF20];
        v21 = v31;
        v22 = v30;
      }

      *error = [v18 errorWithDomain:v19 code:v17 userInfo:{objc_msgSend(v20, "dictionaryWithObjects:forKeys:count:", v21, v22, 2)}];
      goto LABEL_18;
    }

    if (error)
    {
      v13 = *__error();
      v14 = *MEMORY[0x1E696A798];
      v28[0] = *MEMORY[0x1E696A368];
      v28[1] = @"reason";
      v29[0] = file;
      v29[1] = @"open failed";
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:v14 code:v13 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, v28, 2)}];
    }
  }

LABEL_19:
  if (!v7->_payload && v7->_length)
  {
LABEL_21:

    v7 = 0;
  }

LABEL_22:
  v24 = *MEMORY[0x1E69E9840];
  return v7;
}

@end