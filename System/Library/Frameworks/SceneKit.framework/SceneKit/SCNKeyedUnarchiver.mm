@interface SCNKeyedUnarchiver
- (NSURL)documentEnclosingURL;
- (id)initForReadingWithData:(id)a3 secure:(BOOL)a4;
- (void)dealloc;
- (void)decodeValueOfObjCType:(const char *)a3 at:(void *)a4;
@end

@implementation SCNKeyedUnarchiver

- (id)initForReadingWithData:(id)a3 secure:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = SCNKeyedUnarchiver;
  v10 = 0;
  v5 = [(SCNKeyedUnarchiver *)&v9 initForReadingFromData:a3 error:&v10];
  v6 = v5;
  if (v5)
  {
    [v5 setDecodingFailurePolicy:0];
    [v6 setRequiresSecureCoding:v4];
  }

  if (v10)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCNKeyedUnarchiver initForReadingWithData:v7 secure:?];
    }
  }

  if (C3DSceneSourceGetSceneCount())
  {
    [v6 _allowDecodingCyclesInSecureMode];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNKeyedUnarchiver;
  [(SCNKeyedUnarchiver *)&v3 dealloc];
}

- (NSURL)documentEnclosingURL
{
  v3 = [(SCNKeyedUnarchiver *)self documentURL];
  if (v3)
  {

    return [(NSURL *)v3 URLByDeletingLastPathComponent];
  }

  else
  {
    v5 = [(SCNKeyedUnarchiver *)self context];

    return [(NSDictionary *)v5 valueForKey:@"kEnclosingFolderURL"];
  }
}

- (void)decodeValueOfObjCType:(const char *)a3 at:(void *)a4
{
  if (!strcmp(a3, "{SCNVector3=fff}"))
  {
    v14 = 0;
    v7 = [(SCNKeyedUnarchiver *)self decodeBytesWithReturnedLength:&v14];
    v8 = *v7;
    *a4 = *v7;
    *(a4 + 2) = DWORD2(v8);
  }

  else if (!strcmp(a3, "{SCNVector4=ffff}"))
  {
    v14 = 0;
    *a4 = *[(SCNKeyedUnarchiver *)self decodeBytesWithReturnedLength:&v14];
  }

  else if (!strcmp(a3, "{SCNMatrix4=ffffffffffffffff}"))
  {
    v14 = 0;
    v9 = [(SCNKeyedUnarchiver *)self decodeBytesWithReturnedLength:&v14];
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    *a4 = *v9;
    *(a4 + 1) = v10;
    *(a4 + 2) = v11;
    *(a4 + 3) = v12;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SCNKeyedUnarchiver;
    [(SCNKeyedUnarchiver *)&v13 decodeValueOfObjCType:a3 at:a4];
  }
}

- (void)initForReadingWithData:(id *)a1 secure:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Failed to instantiate unarchiver with error %@", &v4, 0xCu);
}

@end