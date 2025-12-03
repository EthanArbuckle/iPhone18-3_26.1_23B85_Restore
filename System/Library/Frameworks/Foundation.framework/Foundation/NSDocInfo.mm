@interface NSDocInfo
- (NSDocInfo)initWithFileAttributes:(id)attributes;
- (id)initFromInfo:(stat *)info;
- (void)setFileAttributes:(id)attributes;
@end

@implementation NSDocInfo

- (id)initFromInfo:(stat *)info
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSDocInfo;
  result = [(NSDocInfo *)&v8 init];
  *(result + 1) = info->st_mtimespec.tv_sec;
  st_mode = info->st_mode;
  *(result + 8) = st_mode;
  v6 = st_mode & 0xF000;
  v7 = *(result + 9) & 0xFFFA;
  if (v6 == 0x4000)
  {
    ++v7;
  }

  *(result + 9) = v7 | (4 * (v6 == 40960));
  return result;
}

- (void)setFileAttributes:(id)attributes
{
  if (!attributes)
  {
    self->time = 0;
    self->mode = 0;
    v8 = *(&self->mode + 1) & 0xFFF8;
LABEL_11:
    *(&self->mode + 1) = v8;
    return;
  }

  fileModificationDate = [attributes fileModificationDate];
  if (fileModificationDate)
  {
    [fileModificationDate timeIntervalSince1970];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  self->time = v7;
  self->mode = [attributes filePosixPermissions];
  fileType = [attributes fileType];
  if (fileType)
  {
    v10 = fileType;
    *(&self->mode + 1) = *(&self->mode + 1) & 0xFFFE | [fileType isEqualToString:@"NSFileTypeDirectory"];
    if ([v10 isEqualToString:@"NSFileTypeSymbolicLink"])
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    v8 = *(&self->mode + 1) & 0xFFF9 | v11;
    goto LABEL_11;
  }
}

- (NSDocInfo)initWithFileAttributes:(id)attributes
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSDocInfo;
  v4 = [(NSDocInfo *)&v6 init];
  [(NSDocInfo *)v4 setFileAttributes:attributes];
  return v4;
}

@end