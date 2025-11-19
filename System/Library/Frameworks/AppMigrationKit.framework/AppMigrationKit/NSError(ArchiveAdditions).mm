@interface NSError(ArchiveAdditions)
+ (id)amk_errorFromArchive:()ArchiveAdditions;
+ (uint64_t)amk_errorFromErrno;
@end

@implementation NSError(ArchiveAdditions)

+ (uint64_t)amk_errorFromErrno
{
  v0 = MEMORY[0x29EDB9FA0];
  v1 = *__error();

  return [v0 amk_errorFromPosixCode:v1];
}

+ (id)amk_errorFromArchive:()ArchiveAdditions
{
  v10[1] = *MEMORY[0x29EDCA608];
  v0 = archive_error_string();
  if (v0)
  {
    v9 = *MEMORY[0x29EDB9E38];
    v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v0];
    v10[0] = v1;
    v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = archive_errno();
  if (v3)
  {
    v4 = *MEMORY[0x29EDB9EF8];
    v5 = v3;
  }

  else
  {
    v4 = *MEMORY[0x29EDB9E30];
    v5 = 256;
  }

  v6 = [MEMORY[0x29EDB9FA0] errorWithDomain:v4 code:v5 userInfo:v2];

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

@end