@interface PKVersionedDocument
- (BOOL)loadData:(id)a3;
- (BOOL)loadDocumentArchive:(void *)a3;
- (BOOL)loadUnzippedData:(id)a3;
- (PKVersionedDocument)init;
- (PKVersionedDocument)initWithArchive:(const void *)a3;
- (PKVersionedDocument)initWithData:(id)a3;
- (PKVersionedDocument)initWithUnzippedData:(id)a3;
- (id)serialize;
- (unsigned)maxDocumentVersion;
- (void)dealloc;
- (void)saveCurrentVersion:(void *)a3;
- (void)saveToArchive:(void *)a3;
@end

@implementation PKVersionedDocument

- (PKVersionedDocument)init
{
  v3.receiver = self;
  v3.super_class = PKVersionedDocument;
  if ([(PKVersionedDocument *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (PKVersionedDocument)initWithData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKVersionedDocument;
  v5 = [(PKVersionedDocument *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKVersionedDocument *)v5 loadData:v4];
  }

  return v6;
}

- (PKVersionedDocument)initWithUnzippedData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKVersionedDocument;
  v5 = [(PKVersionedDocument *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKVersionedDocument *)v5 loadUnzippedData:v4];
  }

  return v6;
}

- (PKVersionedDocument)initWithArchive:(const void *)a3
{
  v7.receiver = self;
  v7.super_class = PKVersionedDocument;
  v4 = [(PKVersionedDocument *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PKVersionedDocument *)v4 loadArchive:a3];
  }

  return v5;
}

- (BOOL)loadData:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __32__PKVersionedDocument_loadData___block_invoke;
  activity_block[3] = &unk_1E82DBA90;
  v10 = self;
  v11 = &v12;
  v9 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_1C7CCA000, "Unzipping versioned document", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v6 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v6;
}

void __32__PKVersionedDocument_loadData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) PK_gzipInflate];
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) loadUnzippedData:v2];
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v3 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_ERROR, "PKVersionedDocument gzipped protobuf corrupt.", v4, 2u);
      }
    }
  }
}

- (BOOL)loadUnzippedData:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __40__PKVersionedDocument_loadUnzippedData___block_invoke;
  activity_block[3] = &unk_1E82DA298;
  activity_block[4] = self;
  v9 = v4;
  v10 = &v11;
  v5 = v4;
  _os_activity_initiate(&dword_1C7CCA000, "Loading versioned document", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __40__PKVersionedDocument_loadUnzippedData___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    operator new();
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = [result bytes];
    [*(a1 + 40) length];
    result = PB::Reader::Reader(v6, v3);
    if (*(a1 + 40))
    {
      result = (*(**(*(a1 + 32) + 8) + 16))(*(*(a1 + 32) + 8), v6);
      if (result)
      {
        v4 = *(*(a1 + 32) + 8);
        if (*(v4 + 36))
        {
          v5 = *(v4 + 32);
          result = +[PKVersionedDocument versionedDocumentSerializationVersion];
          if (v5 == result)
          {
            result = [*(a1 + 32) loadDocumentArchive:*(*(a1 + 32) + 8)];
            *(*(*(a1 + 48) + 8) + 24) = result;
          }
        }
      }
    }
  }

  return result;
}

- (BOOL)loadDocumentArchive:(void *)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() serializationVersion];
  v7 = *(a3 + 1);
  v8 = *(a3 + 2) - v7;
  v9 = v8 >> 3;
  if (!(v8 >> 3))
  {
    goto LABEL_27;
  }

  v10 = v5;
  v11 = 0;
  v12 = (v8 >> 3);
  v13 = -1;
  do
  {
    v14 = *(v7 + 8 * v11);
    if (*(v14 + 20) < v5)
    {
      if (v13 < 0)
      {
        v13 = v11;
      }

      if (v13 < 0)
      {
        goto LABEL_27;
      }

LABEL_8:
      v15 = v9 - v13;
      if (v9 <= v13)
      {
        return 1;
      }

      v16 = 8 * v13;
      v17 = "com.apple.pencilkit";
      v18 = 0x1E695D000uLL;
      *&v6 = 67109632;
      v36 = v6;
      v37 = a3;
      while (1)
      {
        v19 = *(*(a3 + 1) + v16);
        v20 = [*(v18 + 3824) dataWithBytesNoCopy:**(v19 + 8) length:*(*(v19 + 8) + 8) freeWhenDone:{0, v36}];
        v21 = *(v19 + 20);
        if (v21 >= v10)
        {
          if (v21 == v10)
          {
            v22 = os_log_create(v17, "");
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              v39 = v10;
              v24 = v22;
              v25 = "Loading current version %d";
              v26 = 8;
              goto LABEL_17;
            }
          }

          else
          {
            v27 = self;
            v28 = v18;
            v29 = v17;
            v30 = *(v19 + 16);
            v31 = v29;
            v32 = os_log_create(v29, "");
            v22 = v32;
            if (v30 > v10)
            {
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_ERROR, "Should not attempt to load invalid version.", buf, 2u);
              }

              goto LABEL_29;
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v34 = *(v19 + 16);
              v33 = *(v19 + 20);
              *buf = v36;
              v39 = v33;
              v40 = 1024;
              v41 = v10;
              v42 = 1024;
              v43 = v34;
              _os_log_debug_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_DEBUG, "Loading future version %d > %d where min-supported %d", buf, 0x14u);
            }

            v17 = v31;
            v18 = v28;
            self = v27;
            a3 = v37;
          }
        }

        else
        {
          v22 = os_log_create(v17, "");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = *(v19 + 20);
            *buf = 67109376;
            v39 = v23;
            v40 = 1024;
            v41 = v10;
            v24 = v22;
            v25 = "Loading old version %d < %d";
            v26 = 14;
LABEL_17:
            _os_log_debug_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEBUG, v25, buf, v26);
          }
        }

        [(PKVersionedDocument *)self mergeVersion:*(v19 + 20) fromData:v20];
        v16 += 8;
        if (!--v15)
        {
          return 1;
        }
      }
    }

    if (*(v14 + 16) <= v5)
    {
      v13 = v11;
    }

    ++v11;
  }

  while (v12 != v11);
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_27:
  v20 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_ERROR, "PKVersionedDocument did not load any compatible version.", buf, 2u);
  }

LABEL_29:

  return 1;
}

- (void)dealloc
{
  documentArchive = self->_documentArchive;
  if (documentArchive)
  {
    (*(*documentArchive + 8))(documentArchive, a2);
  }

  v4.receiver = self;
  v4.super_class = PKVersionedDocument;
  [(PKVersionedDocument *)&v4 dealloc];
}

- (void)saveCurrentVersion:(void *)a3
{
  v5 = [objc_opt_class() minimumSupportedVersion];
  v10 = 0;
  v6 = [(PKVersionedDocument *)self serializeCurrentVersion:&v10];
  v7 = v10;
  *(a3 + 24) |= 3u;
  *(a3 + 4) = v5;
  *(a3 + 5) = v7;
  v8 = [v6 bytes];
  v9 = *(a3 + 1);
  if (!v9)
  {
    operator new();
  }

  PB::Data::assign(v9, v8, &v8[[v6 length]]);
}

- (unsigned)maxDocumentVersion
{
  v3 = [(PKVersionedDocument *)self documentArchive];
  if (v3[2] != v3[1])
  {
    return *(**([(PKVersionedDocument *)self documentArchive]+ 8) + 20);
  }

  v5 = objc_opt_class();

  return [v5 serializationVersion];
}

- (id)serialize
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = [objc_opt_class() serializationVersion];
    v7 = [(PKVersionedDocument *)self documentArchive];
    v8 = (v7[2] - v7[1]) >> 3;
    v10[0] = 67109376;
    v10[1] = v6;
    v11[0] = 2048;
    *&v11[1] = v8;
    _os_log_debug_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEBUG, "Saving versioned document %d with %ld future versions.", v10, 0x12u);
  }

  v4 = [(PKVersionedDocument *)self documentArchive];
  v5 = +[PKVersionedDocument versionedDocumentSerializationVersion];
  v4[36] |= 1u;
  *(v4 + 8) = v5;
  [(PKVersionedDocument *)self documentArchive];
  PB::PtrVector<versioned_document::Version>::emplace_back<>();
}

- (void)saveToArchive:(void *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = [objc_opt_class() serializationVersion];
    v8 = [(PKVersionedDocument *)self documentArchive];
    v9 = (v8[2] - v8[1]) >> 3;
    *buf = 67109376;
    *&buf[4] = v7;
    v12 = 2048;
    v13 = v9;
    _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Saving versioned document %d with %ld future versions.", buf, 0x12u);
  }

  versioned_document::Document::operator=(a3, self->_documentArchive);
  v5 = +[PKVersionedDocument versionedDocumentSerializationVersion];
  *(a3 + 36) |= 1u;
  *(a3 + 8) = v5;
  v6 = [(PKVersionedDocument *)self documentArchive];
  if (v6[1] != v6[2])
  {
    operator new();
  }

  PB::PtrVector<versioned_document::Version>::emplace_back<>();
}

@end