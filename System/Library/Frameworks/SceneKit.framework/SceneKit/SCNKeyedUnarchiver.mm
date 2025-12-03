@interface SCNKeyedUnarchiver
- (NSURL)documentEnclosingURL;
- (id)initForReadingWithData:(id)data secure:(BOOL)secure;
- (void)dealloc;
- (void)decodeValueOfObjCType:(const char *)type at:(void *)at;
@end

@implementation SCNKeyedUnarchiver

- (id)initForReadingWithData:(id)data secure:(BOOL)secure
{
  secureCopy = secure;
  v9.receiver = self;
  v9.super_class = SCNKeyedUnarchiver;
  v10 = 0;
  v5 = [(SCNKeyedUnarchiver *)&v9 initForReadingFromData:data error:&v10];
  v6 = v5;
  if (v5)
  {
    [v5 setDecodingFailurePolicy:0];
    [v6 setRequiresSecureCoding:secureCopy];
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
  documentURL = [(SCNKeyedUnarchiver *)self documentURL];
  if (documentURL)
  {

    return [(NSURL *)documentURL URLByDeletingLastPathComponent];
  }

  else
  {
    context = [(SCNKeyedUnarchiver *)self context];

    return [(NSDictionary *)context valueForKey:@"kEnclosingFolderURL"];
  }
}

- (void)decodeValueOfObjCType:(const char *)type at:(void *)at
{
  if (!strcmp(type, "{SCNVector3=fff}"))
  {
    v14 = 0;
    v7 = [(SCNKeyedUnarchiver *)self decodeBytesWithReturnedLength:&v14];
    v8 = *v7;
    *at = *v7;
    *(at + 2) = DWORD2(v8);
  }

  else if (!strcmp(type, "{SCNVector4=ffff}"))
  {
    v14 = 0;
    *at = *[(SCNKeyedUnarchiver *)self decodeBytesWithReturnedLength:&v14];
  }

  else if (!strcmp(type, "{SCNMatrix4=ffffffffffffffff}"))
  {
    v14 = 0;
    v9 = [(SCNKeyedUnarchiver *)self decodeBytesWithReturnedLength:&v14];
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    *at = *v9;
    *(at + 1) = v10;
    *(at + 2) = v11;
    *(at + 3) = v12;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SCNKeyedUnarchiver;
    [(SCNKeyedUnarchiver *)&v13 decodeValueOfObjCType:type at:at];
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