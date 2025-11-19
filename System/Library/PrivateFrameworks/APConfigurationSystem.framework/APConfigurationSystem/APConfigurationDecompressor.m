@interface APConfigurationDecompressor
- (APConfigurationDecompressor)init;
- (BOOL)untarFileAtPath:(id)a3;
- (BOOL)unzipContentsOfFileAtPath:(id)a3 toPath:(id)a4;
- (char)typeForObject:(id)a3 atOffset:(unint64_t)a4;
- (id)dataForObject:(id)a3 inLocation:(unint64_t)a4 andLength:(unint64_t)a5;
- (id)nameForObject:(id)a3 atOffset:(unint64_t)a4;
- (id)unzipData:(id)a3;
- (int64_t)decompressTarAtPath:(id)a3 toPath:(id)a4;
- (unint64_t)sizeForFileAtPath:(id)a3;
- (unint64_t)sizeForObject:(id)a3 atOffset:(unint64_t)a4;
- (void)removeFileAtPath:(id)a3;
- (void)writeFileDataForFile:(id)a3 atLocation:(unint64_t)a4 withLength:(unint64_t)a5 atPath:(id)a6;
@end

@implementation APConfigurationDecompressor

- (APConfigurationDecompressor)init
{
  v8.receiver = self;
  v8.super_class = APConfigurationDecompressor;
  v4 = [(APConfigurationDecompressor *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v2, v3);
    filemanager = v4->_filemanager;
    v4->_filemanager = v5;
  }

  return v4;
}

- (int64_t)decompressTarAtPath:(id)a3 toPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_filemanager(self, v8, v9);
  v12 = objc_msgSend_fileExistsAtPath_(v10, v11, v6);

  if (v12)
  {
    if (objc_msgSend_unzipContentsOfFileAtPath_toPath_(self, v13, v6, v7))
    {
      if (objc_msgSend_untarFileAtPath_(self, v14, v7))
      {
        objc_msgSend_removeFileAtPath_(self, v15, v7);
        v16 = 1200;
      }

      else
      {
        v19 = APLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v21 = 0;
          _os_log_impl(&dword_1CA1CE000, v19, OS_LOG_TYPE_ERROR, "Error: Could not untar file.", v21, 2u);
        }

        v16 = 1506;
      }
    }

    else
    {
      v18 = APLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_impl(&dword_1CA1CE000, v18, OS_LOG_TYPE_ERROR, "Error: Could not decompress file.", v22, 2u);
      }

      v16 = 1505;
    }
  }

  else
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CA1CE000, v17, OS_LOG_TYPE_ERROR, "Error: File doesn't exist.", buf, 2u);
    }

    v16 = 1504;
  }

  return v16;
}

- (BOOL)unzipContentsOfFileAtPath:(id)a3 toPath:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v8 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v7, a3);
  v10 = objc_msgSend_unzipData_(self, v9, v8);

  if (objc_msgSend_length(v10, v11, v12))
  {
    v23 = 0;
    objc_msgSend_writeToFile_options_error_(v10, v13, v6, 0x10000000, &v23);
    v14 = v23;
    if (!v14)
    {
      v20 = 1;
      goto LABEL_8;
    }

    v15 = v14;
    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_msgSend_description(v15, v17, v18);
      *buf = 138478083;
      v25 = v6;
      v26 = 2114;
      v27 = v19;
      _os_log_impl(&dword_1CA1CE000, v16, OS_LOG_TYPE_ERROR, "Error: Unable to create decompressed file: %{private}@, error: %{public}@.", buf, 0x16u);
    }
  }

  v20 = 0;
LABEL_8:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)unzipData:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a3;
  memset(&v41.avail_in, 0, 104);
  v41.avail_in = objc_msgSend_length(v3, v4, v5);
  v6 = v3;
  v41.next_in = objc_msgSend_bytes(v6, v7, v8);
  v41.avail_out = 0;
  v9 = inflateInit2_(&v41, 47, "1.2.12", 112);
  if (v9)
  {
    v12 = v9;
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v43 = v12;
      _os_log_impl(&dword_1CA1CE000, v13, OS_LOG_TYPE_ERROR, "Error: Could not unzip, error: %d", buf, 8u);
    }

    v14 = 0;
  }

  else
  {
    v15 = MEMORY[0x1E695DF88];
    v16 = objc_msgSend_length(v3, v10, v11);
    v14 = objc_msgSend_dataWithCapacity_(v15, v17, 2 * v16);
    do
    {
      v18 = objc_autoreleasePoolPush();
      total_out = v41.total_out;
      if (total_out >= objc_msgSend_length(v14, v20, v21))
      {
        v24 = objc_msgSend_length(v3, v22, v23);
        v27 = objc_msgSend_length(v14, v25, v26);
        objc_msgSend_setLength_(v14, v28, v27 + (v24 >> 1));
      }

      v29 = v14;
      v32 = objc_msgSend_mutableBytes(v29, v30, v31);
      v41.next_out = (v32 + v41.total_out);
      v35 = objc_msgSend_length(v14, v33, v34);
      v41.avail_out = v35 - LODWORD(v41.total_out);
      v36 = inflate(&v41, 2);
      objc_autoreleasePoolPop(v18);
    }

    while (!v36);
    v37 = inflateEnd(&v41);
    if (v36 == 1 && !v37)
    {
      objc_msgSend_setLength_(v14, v38, v41.total_out);
    }
  }

  v39 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)untarFileAtPath:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_stringByDeletingLastPathComponent(v4, v5, v6);
  v9 = objc_msgSend_sizeForFileAtPath_(self, v8, v4);
  v59 = v4;
  v13 = objc_msgSend_fileHandleForReadingAtPath_(MEMORY[0x1E696AC00], v10, v4);
  if (v9)
  {
    v14 = 0;
    while (1)
    {
      v15 = objc_autoreleasePoolPush();
      v18 = objc_msgSend_typeForObject_atOffset_(self, v16, v13, v14);
      if (v18 <= 0x34)
      {
        break;
      }

      if (v18 == 53)
      {
        v38 = objc_msgSend_nameForObject_atOffset_(self, v17, v13, v14);
        v40 = objc_msgSend_stringByAppendingPathComponent_(v7, v39, v38);
        v43 = objc_msgSend_stringByStandardizingPath(v40, v41, v42);
        v46 = objc_msgSend_stringByResolvingSymlinksInPath(v43, v44, v45);

        if (objc_msgSend_hasPrefix_(v46, v47, v7))
        {
          v50 = objc_msgSend_filemanager(self, v48, v49);
          v60 = 0;
          objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v50, v51, v46, 1, 0, &v60);
          v52 = v60;

          if (v52)
          {
            v53 = APLogForCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v58 = objc_msgSend_description(v52, v54, v55);
              *buf = 138478083;
              v62 = v46;
              v63 = 2114;
              v64 = v58;
              _os_log_impl(&dword_1CA1CE000, v53, OS_LOG_TYPE_ERROR, "Error: Unable to create directory: %{private}@, error: %{public}@.", buf, 0x16u);
            }
          }
        }

        else
        {
          v52 = 0;
        }

LABEL_24:
        v37 = 1;
        goto LABEL_25;
      }

      if (v18 != 120)
      {
        goto LABEL_14;
      }

      v37 = 2;
LABEL_25:
      v14 += v37 << 9;
      objc_autoreleasePoolPop(v15);
      if (v14 >= v9)
      {
        goto LABEL_26;
      }
    }

    if (!v18)
    {
      goto LABEL_24;
    }

    if (v18 == 48)
    {
      v19 = objc_msgSend_nameForObject_atOffset_(self, v17, v13, v14);
      v21 = objc_msgSend_stringByAppendingPathComponent_(v7, v20, v19);
      v24 = objc_msgSend_stringByStandardizingPath(v21, v22, v23);
      v27 = objc_msgSend_stringByResolvingSymlinksInPath(v24, v25, v26);

      v29 = objc_msgSend_sizeForObject_atOffset_(self, v28, v13, v14);
      if (v29 && (v31 = v29, objc_msgSend_hasPrefix_(v27, v30, v7)))
      {
        v34 = objc_msgSend_lastPathComponent(v19, v32, v33);
        if (objc_msgSend_isEqualToString_(v34, v35, @"ConfigurationNode.json"))
        {
          objc_msgSend_writeFileDataForFile_atLocation_withLength_atPath_(self, v36, v13, v14 + 512, v31, v27);
        }

        v37 = ((v31 - 1) >> 9) + 2;
      }

      else
      {
        v37 = 1;
      }

      goto LABEL_25;
    }

LABEL_14:
    v37 = ((objc_msgSend_sizeForObject_atOffset_(self, v17, v13, v14) >> 9) + 1.0);
    goto LABEL_25;
  }

LABEL_26:
  objc_msgSend_closeFile(v13, v11, v12);

  v56 = *MEMORY[0x1E69E9840];
  return 1;
}

- (unint64_t)sizeForFileAtPath:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_filemanager(self, v5, v6);
  v21 = 0;
  v9 = objc_msgSend_attributesOfItemAtPath_error_(v7, v8, v4, &v21);
  v10 = v21;

  if (v10)
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_msgSend_description(v10, v13, v14);
      *buf = 138478083;
      v23 = v4;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&dword_1CA1CE000, v12, OS_LOG_TYPE_ERROR, "Error: Unable to get attributes for decompressed file: %{private}@, error: %{public}@.", buf, 0x16u);
    }

    v16 = 0;
  }

  else
  {
    v12 = objc_msgSend_objectForKey_(v9, v11, *MEMORY[0x1E696A3B8]);
    v16 = objc_msgSend_unsignedLongLongValue(v12, v17, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)removeFileAtPath:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_filemanager(self, v5, v6);
  v15 = 0;
  objc_msgSend_removeItemAtPath_error_(v7, v8, v4, &v15);
  v9 = v15;

  if (v9)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_msgSend_description(v9, v11, v12);
      *buf = 138478083;
      v17 = v4;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1CA1CE000, v10, OS_LOG_TYPE_ERROR, "Error: Unable to remove file: %{private}@, error: %{public}@.", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (char)typeForObject:(id)a3 atOffset:(unint64_t)a4
{
  v4 = objc_msgSend_dataForObject_inLocation_andLength_(self, a2, a3, a4 + 156, 1);
  if (objc_msgSend_length(v4, v5, v6))
  {
    v7 = v4;
    v10 = *objc_msgSend_bytes(v7, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)nameForObject:(id)a3 atOffset:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_dataForObject_inLocation_andLength_(self, a2, a3, a4, 100);
  v20 = 0;
  v5 = v4;
  v8 = objc_msgSend_bytes(v5, v6, v7);
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  v18[0] = *v8;
  v18[1] = v10;
  v18[2] = v9;
  v12 = *(v8 + 64);
  v11 = *(v8 + 80);
  v13 = *(v8 + 48);
  v19 = *(v8 + 96);
  v18[4] = v12;
  v18[5] = v11;
  v18[3] = v13;
  v15 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v14, v18, 1);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (unint64_t)sizeForObject:(id)a3 atOffset:(unint64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_dataForObject_inLocation_andLength_(self, a2, a3, a4 + 124, 12);
  v5 = v4;
  v8 = objc_msgSend_bytes(v5, v6, v7);
  v14 = 0;
  *__str = *v8;
  v13 = *(v8 + 8);
  v9 = strtol(__str, 0, 8);

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)writeFileDataForFile:(id)a3 atLocation:(unint64_t)a4 withLength:(unint64_t)a5 atPath:(id)a6
{
  v27 = a3;
  v9 = a6;
  v12 = objc_msgSend_data(MEMORY[0x1E695DEF0], v10, v11);
  v14 = objc_msgSend_writeToFile_atomically_(v12, v13, v9, 0);

  if (v14)
  {
    v16 = objc_msgSend_fileHandleForWritingAtPath_(MEMORY[0x1E696AC00], v15, v9);
    objc_msgSend_seekToFileOffset_(v27, v17, a4);
    if (a5 >= 0xC801)
    {
      do
      {
        v19 = objc_autoreleasePoolPush();
        v21 = objc_msgSend_readDataOfLength_(v27, v20, 51200);
        objc_msgSend_writeData_(v16, v22, v21);

        a5 -= 51200;
        objc_autoreleasePoolPop(v19);
      }

      while (a5 > 0xC800);
    }

    v23 = objc_msgSend_readDataOfLength_(v27, v18, a5);
    objc_msgSend_writeData_(v16, v24, v23);

    objc_msgSend_closeFile(v16, v25, v26);
  }
}

- (id)dataForObject:(id)a3 inLocation:(unint64_t)a4 andLength:(unint64_t)a5
{
  v7 = a3;
  objc_msgSend_seekToFileOffset_(v7, v8, a4);
  v10 = objc_msgSend_readDataOfLength_(v7, v9, a5);

  return v10;
}

@end