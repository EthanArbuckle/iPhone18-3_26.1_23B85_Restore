@interface _ANESandboxingHelper
+ (BOOL)canAccessPathAt:(id)a3 methodName:(id)a4 error:(id *)a5;
+ (id)issueSandboxExtensionForModel:(id)a3 error:(id *)a4;
+ (id)issueSandboxExtensionForPath:(id)a3 error:(id *)a4;
+ (id)sandboxExtensionPathForModelURL:(id)a3;
+ (int64_t)consumeSandboxExtension:(id)a3 forModel:(id)a4 error:(id *)a5;
+ (int64_t)consumeSandboxExtension:(id)a3 forPath:(id)a4 error:(id *)a5;
+ (void)initialize;
@end

@implementation _ANESandboxingHelper

+ (void)initialize
{
  qword_100021B18 = +[_ANELog common];

  _objc_release_x1();
}

+ (BOOL)canAccessPathAt:(id)a3 methodName:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if (a5 && (v10 & 1) == 0)
  {
    *a5 = [_ANEErrors fileAccessErrorForMethod:v7];
  }

  return v10;
}

+ (id)sandboxExtensionPathForModelURL:(id)a3
{
  v3 = a3;
  if ([v3 hasDirectoryPath])
  {
    v4 = [v3 path];

    v5 = [NSString stringWithFormat:@"%@/", v4];
  }

  else
  {
    v4 = [v3 URLByDeletingLastPathComponent];

    v6 = [v4 path];
    v5 = [NSString stringWithFormat:@"%@/", v6];
  }

  return v5;
}

+ (id)issueSandboxExtensionForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[_ANEStrings systemLibraryPath];
  v8 = [v6 hasPrefix:v7];

  if (+[_ANEDeviceInfo isInternalBuild])
  {
    v9 = +[_ANEStrings internalLibraryPath];
    v10 = [v6 hasPrefix:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = +[_ANEStrings noSandboxExtension];
  v12 = objc_opt_class();
  v13 = NSStringFromSelector(a2);
  v28 = 0;
  v14 = [v12 canAccessPathAt:v6 methodName:v13 error:&v28];
  v15 = v28;

  if (!v14)
  {
    v19 = qword_100021B18;
    if (os_log_type_enabled(qword_100021B18, OS_LOG_TYPE_ERROR))
    {
      v26 = v19;
      v27 = NSStringFromSelector(a2);
      *buf = 138412802;
      v30 = v27;
      v31 = 2112;
      v32 = v6;
      v33 = 2112;
      v34 = v15;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@: Inaccessible file (%@) : error=%@", buf, 0x20u);

      if (!a4)
      {
        goto LABEL_13;
      }
    }

    else if (!a4)
    {
      goto LABEL_13;
    }

    v20 = v15;
    *a4 = v15;
    goto LABEL_13;
  }

  if (((v8 | v10) & 1) == 0)
  {
    [v6 UTF8String];
    v16 = sandbox_extension_issue_file();
    if (v16)
    {
      v17 = v16;
      v18 = [NSString stringWithUTF8String:v16];

      free(v17);
      v11 = v18;
    }

    else
    {
      v21 = qword_100021B18;
      if (os_log_type_enabled(qword_100021B18, OS_LOG_TYPE_ERROR))
      {
        sub_100011444(v21, a2);
      }
    }
  }

LABEL_13:
  v22 = qword_100021B18;
  if (os_log_type_enabled(qword_100021B18, OS_LOG_TYPE_DEBUG))
  {
    v24 = v22;
    v25 = NSStringFromSelector(a2);
    *buf = 138412802;
    v30 = v25;
    v31 = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v11;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%@: pathStr=%@ sandboxExtension=%@", buf, 0x20u);
  }

  return v11;
}

+ (id)issueSandboxExtensionForModel:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v6 modelURL];
  v9 = [v7 sandboxExtensionPathForModelURL:v8];

  v10 = qword_100021B18;
  if (os_log_type_enabled(qword_100021B18, OS_LOG_TYPE_DEBUG))
  {
    v16 = v10;
    v17 = NSStringFromSelector(a2);
    v20 = 138412802;
    v21 = v17;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v9;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@: model=%@ modelPathStr=%@", &v20, 0x20u);
  }

  v11 = [objc_opt_class() issueSandboxExtensionForPath:v9 error:a4];
  v12 = +[_ANEStrings noSandboxExtension];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    v14 = qword_100021B18;
    if (os_log_type_enabled(qword_100021B18, OS_LOG_TYPE_DEBUG))
    {
      v18 = v14;
      v19 = NSStringFromSelector(a2);
      v20 = 138412802;
      v21 = v19;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v11;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%@: model=%@ sandboxExtension=%@", &v20, 0x20u);
    }
  }

  return v11;
}

+ (int64_t)consumeSandboxExtension:(id)a3 forModel:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_class();
  v10 = [v7 modelURL];

  v11 = [v9 sandboxExtensionPathForModelURL:v10];

  v12 = [objc_opt_class() consumeSandboxExtension:v8 forPath:v11 error:a5];
  return v12;
}

+ (int64_t)consumeSandboxExtension:(id)a3 forPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    [v8 UTF8String];
    v10 = sandbox_extension_consume();
    v11 = qword_100021B18;
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (os_log_type_enabled(qword_100021B18, OS_LOG_TYPE_DEBUG))
      {
        sub_1000114F4(v11, a2);
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(qword_100021B18, OS_LOG_TYPE_INFO))
    {
      v13 = v11;
      v14 = NSStringFromSelector(a2);
      v15 = *__error();
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 138413058;
      v29 = v14;
      v30 = 2112;
      v31 = v8;
      v32 = 1024;
      LODWORD(v33[0]) = v15;
      WORD2(v33[0]) = 2080;
      *(v33 + 6) = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@: Sandbox extension(%@) consume failed (errno=%d) : %s", buf, 0x26u);
    }

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(a2);
    v27 = 0;
    v20 = [v18 canAccessPathAt:v9 methodName:v19 error:&v27];
    v21 = v27;

    if ((v20 & 1) == 0 && (v22 = qword_100021B18, os_log_type_enabled(qword_100021B18, OS_LOG_TYPE_ERROR)))
    {
      v25 = v22;
      v26 = NSStringFromSelector(a2);
      *buf = 138412802;
      v29 = v26;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33[0] = v21;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@: Inaccessible file (%@) : error=%@", buf, 0x20u);

      if (!a5)
      {
        goto LABEL_14;
      }
    }

    else if (!a5)
    {
LABEL_14:

      goto LABEL_15;
    }

    v23 = v21;
    *a5 = v21;
    goto LABEL_14;
  }

  v12 = qword_100021B18;
  if (os_log_type_enabled(qword_100021B18, OS_LOG_TYPE_DEBUG))
  {
    sub_1000115A4(v12, a2);
  }

  v10 = -1;
LABEL_15:

  return v10;
}

@end