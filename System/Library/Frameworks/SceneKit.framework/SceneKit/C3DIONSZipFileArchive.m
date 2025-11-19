@interface C3DIONSZipFileArchive
- (BOOL)writeContentsForEntryName:(id)a3 toFile:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)writeToFile:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (C3DIONSZipFileArchive)initWithData:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (C3DIONSZipFileArchive)initWithEntryNames:(id)a3 contents:(id)a4 properties:(id)a5 options:(unint64_t)a6;
- (C3DIONSZipFileArchive)initWithEntryNames:(id)a3 dataProvider:(id)a4 options:(unint64_t)a5;
- (C3DIONSZipFileArchive)initWithPath:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)archiveData;
- (id)archiveStream;
- (id)contentsForEntryName:(id)a3;
- (id)propertiesForEntryName:(id)a3;
- (id)streamForEntryName:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation C3DIONSZipFileArchive

- (C3DIONSZipFileArchive)initWithPath:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if (!a3 || ![a3 length])
  {
    return 0;
  }

  v19.receiver = self;
  v19.super_class = C3DIONSZipFileArchive;
  v9 = [(C3DIONSZipFileArchive *)&v19 init];
  v10 = v9;
  if (v9)
  {
    *(v9 + 9) = 0;
    *(v9 + 88) = 0u;
    *(v9 + 104) = 0u;
    *(v9 + 15) = 0;
    if ((a4 & 3) > 1)
    {
      if ((a4 & 3) == 2)
      {
        v11 = MEMORY[0x277CBEA90];
        v12 = a3;
        v13 = 1;
        goto LABEL_9;
      }

      v16 = _openFile(a3);
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = v16;
        *(v10 + 40) = [a3 copy];
        close(v17);
LABEL_16:
        if ((a4 & 4) != 0)
        {
          *(v10 + 80) |= 8u;
        }

        return v10;
      }
    }

    else
    {
      if ((a4 & 3) == 0)
      {
        v11 = MEMORY[0x277CBEA90];
        v12 = a3;
        v13 = 0;
LABEL_9:
        v14 = [v11 dataWithContentsOfFile:v12 options:v13 error:a5];
        if (!v14)
        {
          goto LABEL_18;
        }

        v10 = [v10 initWithData:v14 options:a4 error:a5];
        if (!v10)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v15 = _openFile(a3);
      *(v10 + 32) = v15;
      if ((v15 & 0x8000000000000000) == 0)
      {
        *(v10 + 80) |= 0x10u;
        goto LABEL_16;
      }
    }

LABEL_18:

    return 0;
  }

  return v10;
}

- (C3DIONSZipFileArchive)initWithData:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v5 = a4;
  v67[5] = *MEMORY[0x277D85DE8];
  v65.receiver = self;
  v65.super_class = C3DIONSZipFileArchive;
  v7 = [(C3DIONSZipFileArchive *)&v65 init:a3];
  v8 = v7;
  if (!a3)
  {
    goto LABEL_75;
  }

  if (!v7)
  {
    goto LABEL_75;
  }

  v53 = v5;
  v58 = [MEMORY[0x277CBEB18] array];
  v57 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [a3 bytes];
  v52 = a3;
  v10 = [a3 length];
  if (v10 < 0x15)
  {
    goto LABEL_75;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = -20;
  v15 = 20;
  v16 = v9;
  do
  {
    v17 = *(v16 + v10 - 20);
    if (v17 == 117853008)
    {
      v18 = 0;
      if (v10 >= 0x39)
      {
        v19 = *(v16 + v10 - 12);
        if (v19 <= v10 - 56)
        {
          v20 = v9 + v19;
          if (*(v9 + v19) == 101075792)
          {
            v12 = *(v20 + 24);
            v13 = *(v20 + 48);
            v18 = *(v16 + v10 - 12);
          }

          else
          {
            v18 = 0;
          }
        }
      }
    }

    else if (v17 == 101010256)
    {
      v18 = v10 - v15;
      v12 = *(v16 + v10 - 12);
      v13 = *(v16 + v10 - 4);
    }

    else
    {
      v18 = 0;
      if (v15 >= 0x38 && v17 == 101075792)
      {
        v18 = v10 + v14;
        v12 = *(v16 + v10 + 4);
        v13 = *(v16 + v10 + 28);
      }
    }

    if (v15 > 0x101CE)
    {
      break;
    }

    if (v18)
    {
      break;
    }

    ++v15;
    --v14;
    --v16;
  }

  while (v15 < v10);
  if (!v12)
  {
    goto LABEL_75;
  }

  v51 = v8;
  v54 = 0;
  v21 = 0;
  v55 = v9 + 16;
  v56 = v9 + 8;
  v22 = v13;
  do
  {
    if (v22 < v13)
    {
      break;
    }

    if (v22 >= v11)
    {
      break;
    }

    v23 = v22 + 46;
    if (v22 + 46 <= v13)
    {
      break;
    }

    if (v23 > v11)
    {
      break;
    }

    v24 = v9 + v22;
    if (*v24 != 33639248)
    {
      break;
    }

    v25 = v21;
    v62 = v12;
    v26 = v9;
    v28 = *(v24 + 20);
    v27 = *(v24 + 24);
    v29 = *(v24 + 28);
    v30 = *(v24 + 42);
    v31 = v28 == 0xFFFFFFFFLL || v27 == -1;
    v32 = v31 || v30 == -1;
    v33 = v32;
    v34 = v23 + v29;
    if (v23 + v29 <= v13 || v34 > v11)
    {
      break;
    }

    v35 = 0;
    v59 = *(v24 + 10);
    v36 = *(v24 + 30);
    v60 = *(v24 + 16);
    v61 = *(v24 + 32);
    v63 = v36;
    v64 = v13;
    if (*(v24 + 28))
    {
      if (v13 > v30)
      {
        v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v26 + v23 length:v29 encoding:4];
        v36 = v63;
        v13 = v64;
        if (!v35)
        {
          v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v26 + v23 length:v29 encoding:12];
          v36 = v63;
          v13 = v64;
        }
      }
    }

    if (v36 <= 4u || !v33)
    {
      v9 = v26;
LABEL_67:
      v39 = v25;
      goto LABEL_68;
    }

    v38 = v34 + v36;
    v9 = v26;
    if (v34 >= v34 + v36)
    {
      goto LABEL_67;
    }

    v39 = v25;
    if (v38 > v13)
    {
      v40 = v61;
      if (v38 <= v11)
      {
        v41 = v23 + v29;
        do
        {
          v42 = (v9 + v41);
          v43 = *(v9 + v41 + 2);
          v44 = v41 + 4;
          v41 += 4 + v43;
          if (v41 <= v44 || v41 > v38)
          {
            break;
          }

          v46 = *v42;
          if (v43 >= 0x18 && v46 == 1)
          {
            if (v27 == 0xFFFFFFFFLL)
            {
              v27 = *(v9 + v44);
            }

            if (v28 == 0xFFFFFFFFLL)
            {
              v28 = *(v56 + v44);
            }

            if (v30 == 0xFFFFFFFF)
            {
              v30 = *(v55 + v44);
            }
          }
        }

        while (v41 < v38);
      }

      goto LABEL_69;
    }

LABEL_68:
    v40 = v61;
LABEL_69:
    if (v35)
    {
      v66[0] = @"C3DIONSZipFileArchiveCompressionType";
      v48 = v35;
      v67[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v59];
      v66[1] = @"C3DIONSZipFileArchiveHeaderOffset";
      v67[1] = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
      v66[2] = @"C3DIONSZipFileArchiveCRC";
      v67[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v60];
      v66[3] = @"C3DIONSZipFileArchiveCompressedLength";
      v67[3] = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
      v66[4] = @"C3DIONSZipFileArchiveUncompressedLength";
      v67[4] = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27];
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:5];
      [v58 addObject:v48];
      [v57 setObject:v49 forKey:v48];
      v36 = v63;
      v13 = v64;
      v54 = 1;
    }

    v22 = v34 + v36 + v40;
    v21 = v39 + 1;
    v12 = v62;
  }

  while (v21 != v62);
  v8 = v51;
  if (v54)
  {
    v51->_data = v52;
    v51->_names = v58;
    v51->_properties = v57;
    if ((v53 & 4) != 0)
    {
      *&v51->_zFlags |= 8u;
    }

    return v8;
  }

LABEL_75:
  if (v8)
  {

    return 0;
  }

  return v8;
}

- (C3DIONSZipFileArchive)initWithEntryNames:(id)a3 contents:(id)a4 properties:(id)a5 options:(unint64_t)a6
{
  v10 = [a3 count];
  v17.receiver = self;
  v17.super_class = C3DIONSZipFileArchive;
  v11 = [(C3DIONSZipFileArchive *)&v17 init];
  if (v10)
  {
    v12 = 1;
    do
    {
      v13 = [a4 objectForKey:{objc_msgSend(a3, "objectAtIndex:", v12 - 1)}];
      v14 = v13 != 0;
      if (v13)
      {
        v15 = v12 >= v10;
      }

      else
      {
        v15 = 1;
      }

      ++v12;
    }

    while (!v15);
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = 1;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  if (a4 && v14 && v11 && v10)
  {
    v11->_contents = [a4 copy];
    v11->_names = [a3 copy];
    v11->_properties = [a5 copy];
    *&v11->_zFlags |= 8u;
    return v11;
  }

LABEL_16:
  if (v11)
  {

    return 0;
  }

  return v11;
}

- (C3DIONSZipFileArchive)initWithEntryNames:(id)a3 dataProvider:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v11.receiver = self;
  v11.super_class = C3DIONSZipFileArchive;
  v8 = [(C3DIONSZipFileArchive *)&v11 init];
  if (objc_opt_respondsToSelector())
  {
    *(v8 + 20) |= 1u;
  }

  if (objc_opt_respondsToSelector())
  {
    *(v8 + 20) |= 2u;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = *(v8 + 20) | 4;
    *(v8 + 20) = v9;
  }

  else
  {
    if (!v8)
    {
      return v8;
    }

    v9 = *(v8 + 20);
  }

  if ((v9 & 3) != 0)
  {
    *(v8 + 3) = a4;
    *(v8 + 6) = [a3 copy];
    if ((v5 & 4) != 0)
    {
      *(v8 + 20) |= 8u;
    }
  }

  else
  {

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  [(C3DIONSZipFileArchive *)self invalidate];
  v3.receiver = self;
  v3.super_class = C3DIONSZipFileArchive;
  [(C3DIONSZipFileArchive *)&v3 dealloc];
}

- (id)contentsForEntryName:(id)a3
{
  contents = self->_contents;
  if (contents)
  {
    v6 = [(NSDictionary *)contents objectForKey:a3];
LABEL_3:
    v7 = v6;
    goto LABEL_4;
  }

  if (self->_data)
  {
    v9 = [(NSDictionary *)self->_properties objectForKey:a3];
    if (v9)
    {
      v10 = v9;
      v11 = [objc_msgSend(v9 objectForKey:{@"C3DIONSZipFileArchiveHeaderOffset", "unsignedIntegerValue"}];
      v12 = [objc_msgSend(v10 objectForKey:{@"C3DIONSZipFileArchiveCompressionType", "unsignedIntegerValue"}];
      v13 = [objc_msgSend(v10 objectForKey:{@"C3DIONSZipFileArchiveCRC", "unsignedIntegerValue"}];
      v14 = [objc_msgSend(v10 objectForKey:{@"C3DIONSZipFileArchiveCompressedLength", "unsignedIntegerValue"}];
      v15 = [objc_msgSend(v10 objectForKey:{@"C3DIONSZipFileArchiveUncompressedLength", "unsignedIntegerValue"}];
      data = self->_data;
      v17 = [(NSData *)data bytes];
      v18 = [(NSData *)data length];
      if (v18 > v11 && v11 <= 0xFFFFFFFFFFFFFFE1)
      {
        v7 = 0;
        if (!v15 || !v14 || v11 + 30 >= v18)
        {
          return v7;
        }

        v19 = (v17 + v11);
        if (*(v17 + v11) == 67324752 && v12 == v19[4])
        {
          v20 = v11 + 30 + v19[13] + v19[14];
          if (v20 < v18)
          {
            v7 = 0;
            v21 = v20 + v14;
            if (v20 + v14 >= v18 || v21 <= v20 || v21 <= v11)
            {
              return v7;
            }

            if (v12 == 8)
            {
              v26 = [MEMORY[0x277CBEB28] dataWithLength:v15];
              v27 = [v26 mutableBytes];
              *&v31.avail_in = 0u;
              memset(&v31.total_out, 0, 72);
              v31.next_in = (v17 + v20);
              v31.avail_in = v14;
              v31.next_out = v27;
              *&v31.avail_out = v15;
              if (v26 && (v28 = v27, !inflateInit2_(&v31, -15, "1.2.12", 112)) && (v29 = inflate(&v31, 4), v30 = inflateEnd(&v31), v29 == 1))
              {
                v7 = 0;
                if (!v30 && v31.total_out == v15)
                {
                  if (v13 == _crcFromBytes(v28, v15))
                  {
                    v7 = v26;
                  }

                  else
                  {
                    v7 = 0;
                  }
                }
              }

              else
              {
                v7 = 0;
              }

LABEL_4:
              if (!v7)
              {
                return v7;
              }

              goto LABEL_5;
            }

            if (!v12 && v13 == _crcFromBytes((v17 + v20), v14))
            {
              v6 = [MEMORY[0x277CBEA90] dataWithBytes:v17 + v20 length:v14];
              goto LABEL_3;
            }
          }
        }
      }
    }

    return 0;
  }

  if (![(NSArray *)self->_names containsObject:a3])
  {
    return 0;
  }

  zFlags = self->_zFlags;
  if ((*&zFlags & 1) == 0)
  {
    if ((*&zFlags & 2) != 0)
    {
      [self->_provider archive:self streamForEntryName:a3];
    }

    else if ((*&zFlags & 0x10) == 0)
    {
      path = self->_path;
      if (path)
      {
        v24 = _openFile(path);
        if ((v24 & 0x8000000000000000) == 0)
        {
          close(v24);
        }
      }
    }

    return 0;
  }

  v7 = [(NSMutableDictionary *)self->_cachedContents objectForKey:a3];
  if (!v7)
  {
    v6 = [self->_provider archive:self contentsForEntryName:a3];
    goto LABEL_3;
  }

LABEL_5:
  if ((*&self->_zFlags & 8) == 0)
  {
    cachedContents = self->_cachedContents;
    if (!cachedContents)
    {
      cachedContents = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_cachedContents = cachedContents;
    }

    [(NSMutableDictionary *)cachedContents setObject:v7 forKey:a3, v31.next_in, *&v31.avail_in, *&v31.next_out];
  }

  return v7;
}

- (id)streamForEntryName:(id)a3
{
  contents = self->_contents;
  if (contents)
  {
    v6 = [(NSDictionary *)contents objectForKey:a3];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0x277CBEAE0];
LABEL_4:

      return [v8 inputStreamWithData:v7];
    }

    return 0;
  }

  if (self->_data || ![(NSArray *)self->_names containsObject:a3])
  {
    return 0;
  }

  zFlags = self->_zFlags;
  if (*&zFlags)
  {
    v13 = [(NSMutableDictionary *)self->_cachedContents objectForKey:a3];
    if (!v13)
    {
      v15 = [self->_provider archive:self contentsForEntryName:a3];
      if (!v15)
      {
        return 0;
      }

      v13 = v15;
      if ((*&self->_zFlags & 8) == 0)
      {
        cachedContents = self->_cachedContents;
        if (!cachedContents)
        {
          cachedContents = objc_alloc_init(MEMORY[0x277CBEB38]);
          self->_cachedContents = cachedContents;
        }

        [(NSMutableDictionary *)cachedContents setObject:v13 forKey:a3];
      }
    }

    v8 = MEMORY[0x277CBEAE0];
    v7 = v13;
    goto LABEL_4;
  }

  if ((*&zFlags & 2) == 0)
  {
    if ((*&zFlags & 0x10) == 0)
    {
      path = self->_path;
      if (path)
      {
        v12 = _openFile(path);
        if ((v12 & 0x8000000000000000) == 0)
        {
          close(v12);
        }
      }
    }

    return 0;
  }

  provider = self->_provider;

  return [provider archive:self streamForEntryName:a3];
}

- (BOOL)writeContentsForEntryName:(id)a3 toFile:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v9 = [(C3DIONSZipFileArchive *)self contentsForEntryName:a3];
  if (v9)
  {

    LOBYTE(v9) = [v9 writeToFile:a4 options:a5 error:a6];
  }

  return v9;
}

- (id)propertiesForEntryName:(id)a3
{
  result = [(NSDictionary *)self->_properties objectForKey:?];
  if (!result)
  {
    if ([(NSArray *)self->_names containsObject:a3])
    {
      if ((*&self->_zFlags & 4) == 0 || (result = [self->_provider archive:self propertiesForEntryName:a3]) == 0)
      {
        v6 = MEMORY[0x277CBEAC0];

        return [v6 dictionary];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)archiveData
{
  v41 = [MEMORY[0x277CBEB28] data];
  v42 = [MEMORY[0x277CBEB28] data];
  v3 = [(NSArray *)self->_names count];
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v39 = self;
    v40 = v3;
    do
    {
      v6 = [(NSArray *)self->_names objectAtIndex:v5, v39, v40];
      v7 = [v6 UTF8String];
      v8 = strlen(v7);
      v9 = [(C3DIONSZipFileArchive *)self contentsForEntryName:v6];
      v10 = [v9 length];
      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v44 = v10;
        v12 = [v9 bytes];
        v13 = [v9 length];
        v14 = crc32(0, 0, 0);
        v45 = crc32(v14, v12, v13);
        v15 = [v9 bytes];
        v16 = [v9 length];
        if (v16)
        {
          for (i = 0; i < v16; ++i)
          {
            v18 = *(v15 + i);
            v20 = v18 - 14 < 0xFFFFFFF9 && (v18 & 0x1E) != 26;
            if (v18 <= 0x1F)
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }

            if (v21)
            {
              break;
            }
          }

          v22 = v21 ^ 1;
        }

        else
        {
          v22 = 1;
        }

        v43 = v22;
        v23 = [v9 bytes];
        v24 = [v9 length];
        v25 = 0;
        if (v23)
        {
          v26 = v24;
          if (v24)
          {
            v27 = [MEMORY[0x277CBEB28] dataWithLength:v24 - 1];
            memset(&strm.avail_in, 0, 104);
            strm.next_in = v23;
            strm.avail_in = v26;
            strm.next_out = [v27 mutableBytes];
            strm.avail_out = v26 - 1;
            if (v27 && !deflateInit2_(&strm, 6, 8, -15, 8, 0, "1.2.12", 112) && (v28 = deflate(&strm, 4), v29 = deflateEnd(&strm), v28 == 1))
            {
              v25 = 0;
              if (!v29 && v26 == strm.total_in)
              {
                [v27 setLength:strm.total_out];
                v25 = v27;
              }
            }

            else
            {
              v25 = 0;
            }
          }
        }

        v30 = 8 * (v25 != 0);
        if (v25)
        {
          v9 = v25;
        }

        v31 = [v9 length];
        v32 = [MEMORY[0x277CBEB28] dataWithLength:v8 + 30];
        [v32 replaceBytesInRange:0 withBytes:{30, &localHeaderTemplate}];
        [v32 replaceBytesInRange:30 withBytes:{v8, v7}];
        v33 = [v32 mutableBytes];
        *(v33 + 4) = 20;
        *(v33 + 8) = v30;
        *(v33 + 10) = 0;
        *(v33 + 14) = v45;
        *(v33 + 18) = v31;
        *(v33 + 22) = v44;
        *(v33 + 26) = v8;
        v34 = [MEMORY[0x277CBEB28] dataWithLength:v8 + 46];
        [v34 replaceBytesInRange:0 withBytes:{46, &directoryHeaderTemplate}];
        [v34 replaceBytesInRange:46 withBytes:{v8, v7}];
        v35 = [v34 mutableBytes];
        *(v35 + 6) = 20;
        *(v35 + 10) = v30;
        *(v35 + 12) = 0;
        *(v35 + 16) = v45;
        *(v35 + 20) = v31;
        *(v35 + 24) = v44;
        *(v35 + 28) = v8;
        *(v35 + 36) = v43;
        *(v35 + 42) = [v42 length];
        [v42 appendData:v32];
        [v42 appendData:v9];
        [v41 appendData:v34];
        self = v39;
        v4 = v40;
      }

      ++v5;
    }

    while (v5 != v4);
  }

  v36 = [MEMORY[0x277CBEB28] dataWithLength:22];
  [v36 replaceBytesInRange:0 withBytes:{22, &endOfDirectoryTemplate}];
  v37 = [v36 mutableBytes];
  *(v37 + 8) = v4;
  *(v37 + 10) = v4;
  *(v37 + 12) = [v41 length];
  *(v37 + 16) = [v42 length];
  [v42 appendData:v41];
  [v42 appendData:v36];
  return v42;
}

- (id)archiveStream
{
  result = [(C3DIONSZipFileArchive *)self archiveData];
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x277CBEAE0];

    return [v4 inputStreamWithData:v3];
  }

  return result;
}

- (BOOL)writeToFile:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [(C3DIONSZipFileArchive *)self archiveData];
  if (v8)
  {

    LOBYTE(v8) = [v8 writeToFile:a3 options:a4 error:a5];
  }

  return v8;
}

- (void)invalidate
{
  contents = self->_contents;
  if (contents)
  {

    self->_contents = 0;
  }

  data = self->_data;
  if (data)
  {

    self->_data = 0;
  }

  self->_provider = 0;
  zFlags = self->_zFlags;
  self->_zFlags = (*&zFlags & 0xFFFFFFF8);
  if ((*&zFlags & 0x10) != 0)
  {
    close(self->_desc);
    *&self->_zFlags &= ~0x10u;
  }

  path = self->_path;
  if (path)
  {

    self->_path = 0;
  }

  names = self->_names;
  if (names)
  {

    self->_names = 0;
  }

  properties = self->_properties;
  if (properties)
  {

    self->_properties = 0;
  }

  cachedContents = self->_cachedContents;
  if (cachedContents)
  {

    self->_cachedContents = 0;
  }
}

@end