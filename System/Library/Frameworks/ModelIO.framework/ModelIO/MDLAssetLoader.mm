@interface MDLAssetLoader
- (MDLAssetLoader)initWithExtension:(id)a3;
- (id)loadURL:(id)a3;
@end

@implementation MDLAssetLoader

- (id)loadURL:(id)a3
{
  v4 = a3;
  if (!sub_239F5C490(v4, v5, v6))
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"Could not open %@ file", self->_extension);
LABEL_8:
    v12 = v11;
    goto LABEL_9;
  }

  v36 = 0uLL;
  v37 = 0;
  if (objc_msgSend_isEqualToString_(self->_extension, v7, @"PLY"))
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    memset(&v31, 0, sizeof(v31));
    sub_239EE1FC4(&v31, 0);
    sub_239EE799C(&v31.st_dev, v4, &v29);
    v36 = v29;
    v37 = v30;
    sub_239EE20A4(&v31);
    goto LABEL_4;
  }

  v14 = objc_msgSend_path(v4, v8, v9);
  v15 = v14;
  v17 = objc_msgSend_cStringUsingEncoding_(v15, v16, 4);
  v18 = open(v17, 0);

  memset(&v31, 0, sizeof(v31));
  fstat(v18, &v31);
  st_size = v31.st_size;
  v21 = mmap(0, v31.st_size, 1, 2, v18, 0);
  if (v21 == -1)
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%@ file map failed", self->_extension);
    goto LABEL_8;
  }

  if (!st_size)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%@ file has no contents", self->_extension);
    v11 = LABEL_27:;
    goto LABEL_8;
  }

  if (v18 < 0)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"Could not read %@ file", self->_extension);
    goto LABEL_27;
  }

  if (objc_msgSend_isEqualToString_(self->_extension, v20, @"OBJ"))
  {
    sub_239E879F0(v4, v21, st_size, &v29);
    v36 = v29;
    v37 = v30;
  }

  else if (objc_msgSend_isEqualToString_(self->_extension, v22, @"STL"))
  {
    v25 = objc_msgSend_absoluteString(v4, v23, v24);
    v26 = v25;
    objc_msgSend_UTF8String(v26, v27, v28);
    sub_239EB6348(v21, st_size, &v29);
    v36 = v29;
    v37 = v30;
    HIBYTE(v30) = 0;
    LOBYTE(v29) = 0;
  }

  munmap(v21, st_size);
  close(v18);
LABEL_4:
  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    if (!HIBYTE(v37))
    {
      v12 = &stru_284D18478;
      goto LABEL_9;
    }

    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, &v36);
    goto LABEL_19;
  }

  if (*(&v36 + 1))
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v36);
    v12 = LABEL_19:;
    if (v37 >= 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  v12 = &stru_284D18478;
LABEL_25:
  operator delete(v36);
LABEL_9:

  return v12;
}

- (MDLAssetLoader)initWithExtension:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MDLAssetLoader;
  v6 = [(MDLAssetLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, a3);
  }

  return v7;
}

@end