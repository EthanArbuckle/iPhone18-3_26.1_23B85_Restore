@interface PDFileManager
+ (BOOL)createDataVaultAtPath:(const char *)a3 error:(id *)a4;
- (PDFileManager)init;
- (id)topLevelDirectoryURL;
@end

@implementation PDFileManager

- (PDFileManager)init
{
  v3.receiver = self;
  v3.super_class = PDFileManager;
  result = [(PDFileManager *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (BOOL)createDataVaultAtPath:(const char *)a3 error:(id *)a4
{
  v6 = rootless_mkdir_datavault();
  v7 = v6;
  if (a4 && v6)
  {
    v8 = *__error();
    v9 = __error();
    *a4 = [NSError cls_createErrorWithCode:5 format:@"Failed to create a data vault at '%s'. Error: %d [%s]", a3, v8, strerror(*v9)];
  }

  return v7 == 0;
}

- (id)topLevelDirectoryURL
{
  if (qword_10024DA78 != -1)
  {
    dispatch_once(&qword_10024DA78, &stru_100204BE0);
  }

  v3 = qword_10024DA70;

  return v3;
}

@end