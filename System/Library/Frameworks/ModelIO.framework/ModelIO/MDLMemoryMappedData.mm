@interface MDLMemoryMappedData
- (MDLMemoryMappedData)initWithURL:(id)l offset:(unint64_t)offset length:(unint64_t)length;
- (id)dataNoCopy;
- (void)dealloc;
@end

@implementation MDLMemoryMappedData

- (MDLMemoryMappedData)initWithURL:(id)l offset:(unint64_t)offset length:(unint64_t)length
{
  lCopy = l;
  v25.receiver = self;
  v25.super_class = MDLMemoryMappedData;
  v9 = [(MDLMemoryMappedData *)&v25 init];
  if (v9)
  {
    v10 = sysconf(29);
    v13 = objc_msgSend_path(lCopy, v11, v12);
    v14 = v13;
    v17 = objc_msgSend_UTF8String(v14, v15, v16);
    v9->_file = fopen(v17, "r");

    file = v9->_file;
    if (file)
    {
      v19 = offset / v10 * v10;
      v20 = offset - v19;
      v21 = offset - v19 + length;
      v9->_mappedFileSize = v21;
      v22 = fileno(file);
      v23 = mmap(0, v21, 1, 2, v22, v19);
      v9->_mappedAddr = v23;
      if (v23)
      {
        v9->_fileStart = &v23[v20];
        v9->_length = length;
      }
    }
  }

  return v9;
}

- (void)dealloc
{
  mappedAddr = self->_mappedAddr;
  if (mappedAddr)
  {
    v4 = munmap(mappedAddr, self->_mappedFileSize);
    if (v4)
    {
      printf("Could not unmap file - error (%d)\n", v4);
    }
  }

  file = self->_file;
  if (file)
  {
    fclose(file);
  }

  v6.receiver = self;
  v6.super_class = MDLMemoryMappedData;
  [(MDLMemoryMappedData *)&v6 dealloc];
}

- (id)dataNoCopy
{
  fileStart = self->_fileStart;
  if (fileStart)
  {
    v4 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], a2, fileStart, self->_length, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end