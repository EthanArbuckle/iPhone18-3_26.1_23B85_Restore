@interface NSData(FPFileMetadataSerialization)
+ (id)fp_dataWithFavoriteRank:()FPFileMetadataSerialization;
+ (id)fp_dataWithLastUsedDate:()FPFileMetadataSerialization;
- (id)fp_favoriteRank;
- (id)fp_lastUsedDate;
@end

@implementation NSData(FPFileMetadataSerialization)

+ (id)fp_dataWithLastUsedDate:()FPFileMetadataSerialization
{
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = 0;
  [a3 timeIntervalSince1970];
  v7[0] = v3;
  v7[1] = 0;
  if ((fpfs_serialize_last_use_date(v7, v8, 0x10uLL, 1) & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:16];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)fp_lastUsedDate
{
  v3[0] = 0;
  v3[1] = 0;
  if ((fpfs_deserialize_last_use_date(v3, [a1 bytes], objc_msgSend(a1, "length"), 1) & 0x80000000) != 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v3[0]];
  }

  return v1;
}

+ (id)fp_dataWithFavoriteRank:()FPFileMetadataSerialization
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = fpfs_serialize_favorite_rank([a3 unsignedLongLongValue], &v7, 0x80uLL);
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7 length:v3];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)fp_favoriteRank
{
  v4 = 0;
  v1 = fpfs_deserialize_favorite_rank(&v4, [a1 bytes], objc_msgSend(a1, "length"));
  v2 = 0;
  if ((v1 & 0x80000000) == 0 && v4)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  }

  return v2;
}

@end