@interface QLCacheBasicFileIdentifier
- (BOOL)isEqual:(id)equal;
- (QLCacheBasicFileIdentifier)initWithCoder:(id)coder;
- (QLCacheBasicFileIdentifier)initWithFileId:(unint64_t)id fsid:(fsid)fsid;
- (QLCacheBasicFileIdentifier)initWithFileURL:(id)l error:(id *)p_isa;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLCacheBasicFileIdentifier

- (QLCacheBasicFileIdentifier)initWithFileId:(unint64_t)id fsid:(fsid)fsid
{
  v7.receiver = self;
  v7.super_class = QLCacheBasicFileIdentifier;
  result = [(QLCacheBasicFileIdentifier *)&v7 init];
  if (result)
  {
    result->_fileId = id;
    result->_fsid = fsid;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  fileId = self->_fileId;
  fsid = self->_fsid;

  return [v4 initWithFileId:fileId fsid:fsid];
}

- (QLCacheBasicFileIdentifier)initWithFileURL:(id)l error:(id *)p_isa
{
  v16[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  memset(&v14, 0, sizeof(v14));
  if (!stat([lCopy fileSystemRepresentation], &v14))
  {
    self = [(QLCacheBasicFileIdentifier *)self initWithFileId:v14.st_ino fsid:v14.st_dev];
    p_isa = &self->super.super.isa;
    goto LABEL_8;
  }

  v7 = *__error();
  v8 = qword_1EDAC3C60;
  if (!qword_1EDAC3C60)
  {
    QLTInitLogging();
    v8 = qword_1EDAC3C60;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(QLCacheBasicFileIdentifier *)v8 initWithFileURL:v7 error:?];
    if (!p_isa)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (p_isa)
  {
LABEL_6:
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A798];
    v15 = *MEMORY[0x1E696A998];
    v16[0] = lCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:{1, *&v14.st_dev}];
    *p_isa = [v9 errorWithDomain:v10 code:v7 userInfo:v11];

    p_isa = 0;
  }

LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fileId = self->_fileId;
    v6 = fileId == [equalCopy fileId];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (QLCacheBasicFileIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"fsid_1"];
  v6 = [coderCopy decodeInt32ForKey:@"fsid_2"];
  v7 = [coderCopy decodeInt64ForKey:@"i"];

  return [(QLCacheBasicFileIdentifier *)self initWithFileId:v7 fsid:v5 | (v6 << 32)];
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  fileId = self->_fileId;
  coderCopy = coder;
  [coderCopy encodeInt64:fileId forKey:@"i"];
  selfCopy += 4;
  [coderCopy encodeInt32:*selfCopy forKey:@"fsid_1"];
  [coderCopy encodeInt32:selfCopy[1] forKey:@"fsid_2"];
}

- (void)initWithFileURL:(int)a3 error:.cold.1(void *a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v6 = 138412802;
  v7 = objc_opt_class();
  v8 = 1024;
  v9 = a3;
  v10 = 2080;
  v11 = strerror(a3);
  _os_log_error_impl(&dword_1CA1E7000, v4, OS_LOG_TYPE_ERROR, "could not init %@: error %d (%s)", &v6, 0x1Cu);

  v5 = *MEMORY[0x1E69E9840];
}

@end