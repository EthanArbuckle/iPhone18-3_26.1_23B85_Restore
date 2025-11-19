uint64_t sub_DC8(uint64_t a1)
{
  qword_85C8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_1438(void *a1)
{
  v4 = AXContainerManagerMessageKeyError;
  v5 = a1;
  v1 = a1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_1658(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1724;
  v9[3] = &unk_41A0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 errorFetchingAccessibilityContainerPathOrResultOfBlock:v9];

  return v7;
}

NSDictionary *__cdecl sub_1744(id a1, NSString *a2, NSString *a3)
{
  v3 = [(NSString *)a2 stringByAppendingPathComponent:a3];
  v4 = [NSURL fileURLWithPath:v3];
  v10 = 0;
  v5 = [NSFileHandle fileHandleForReadingFromURL:v4 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = [v5 readDataToEndOfFile];
    v11 = AXContainerManagerMessageKeyData;
    v12 = v7;
    [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = [v6 localizedDescription];
    sub_1438(v7);
  }
  v8 = ;

  return v8;
}

id sub_1938(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:AXContainerManagerMessageKeyData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v5 stringByAppendingPathComponent:v6];
    v9 = +[NSFileManager defaultManager];
    v14 = NSFilePosixPermissions;
    v15 = &off_4458;
    v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = [v9 createFileAtPath:v8 contents:v7 attributes:v10];

    if (v11)
    {
      v12 = &__NSDictionary0__struct;
    }

    else
    {
      v12 = sub_1438(@"Could not create file at %@.");
    }
  }

  else
  {
    v12 = sub_1438(@"need an actual NSData to write");
  }

  return v12;
}

NSDictionary *__cdecl sub_1ADC(id a1, NSString *a2, NSString *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[NSFileManager defaultManager];
  v7 = [(NSString *)v5 stringByAppendingPathComponent:v4];

  v12 = 0;
  [v6 removeItemAtPath:v7 error:&v12];
  v8 = v12;

  if (v8)
  {
    v9 = [v8 localizedDescription];
    v10 = sub_1438(v9);
  }

  else
  {
    v10 = &__NSDictionary0__struct;
  }

  return v10;
}

e to find Library directory in container?"");
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *a3 = [NSError errorWithDomain:@"AXContainerManagerServer" code:1 userInfo:v10];

      a3 = 0;
    }
  }

  else
  {
    a3 = 0;
  }

  return a3;
}

- (id)accessibilityContainerPathWithError:(id *)a3
{
  v3 = [(AXContainerManagerServer *)self containerLibraryPathWithError:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringByAppendingPathComponent:@"AccessibilityContainerManagerServer"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setupContainerWithError:(id *)a3
{
  v4 = [(AXContainerManagerServer *)self accessibilityContainerPathWithError:?];
  if (!v4)
  {
    goto LABEL_5;
  }

  v13 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v13];

  if (!v6)
  {
    v10 = +[NSFileManager defaultManager];
    v14 = NSFilePosixPermissions;
    v15 = &off_4458;
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [v10 createDirectoryAtPath:v4 withIntermediateDirectories:0 attributes:v11 error:a3];

    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    LOBYTE(v9) = 1;
    goto LABEL_8;
  }

  if (v13)
  {
    goto LABEL_7;
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 removeItemAtPath:v4 error:a3];

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_5:
  LOBYTE(v9) = 0;
LABEL_8:

  return v9;
}

- (id)errorFetchingAccessibilityContainerPathOrResultOfBlock:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(AXContainerManagerServer *)self accessibilityContainerPathWithError:&v11];
  v6 = v11;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 localizedDescription];
    v9 = sub_1438(v8);
  }

  else
  {
    v9 = v4[2](v4, v5);
  }

  return v9;
}

- (id)errorValidatingPathFromMessage:(id)a3 orResultOfBlock:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:AXContainerManagerMessageKeyPath];
  v7 = v6;
  if (!v6)
  {
    v8 = @"Need a path to return data";
    goto LABEL_5;
  }

  if ([v6 containsString:@"/"])
  {
    v8 = @"Path had a '/' character in it. that isn't allowed.";
LABEL_5:
    v9 = sub_1438(v8);
    goto LABEL_7;
  }

  v9 = v5[2](v5, v7);
LABEL_7:
  v10 = v9;

  return v10;
}

- (id)errorFetchingAccessibilityContainerPathOrValidatingPathFromMessage:(id)a3 orResultOfBlock:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1658;
  v8[3] = &unk_41C8;
  v9 = self;
  v10 = a4;
  v5 = v10;
  v6 = [(AXContainerManagerServer *)v9 errorValidatingPathFromMessage:a3 orResultOfBlock:v8];

  return v6;
}

- (id)handleWriteDataMessage:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1938;
  v7[3] = &unk_4230;
  v8 = a3;
  v4 = v8;
  v5 = [(AXContainerManagerServer *)self errorFetchingAccessibilityContainerPathOrValidatingPathFromMessage:v4 orResultOfBlock:v7];

  return v5;
}

- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  switch(a4)
  {
    case 3uLL:
      v11 = [(AXContainerManagerServer *)self handleDeleteMessage:v9];
      goto LABEL_7;
    case 2uLL:
      v11 = [(AXContainerManagerServer *)self handleWriteDataMessage:v9];
      goto LABEL_7;
    case 1uLL:
      v11 = [(AXContainerManagerServer *)self handleGetDataMessage:v9];
LABEL_7:
      v12 = v11;
      goto LABEL_9;
  }

  _AXLogWithFacility();
  v12 = 0;
LABEL_9:

  return v12;
}

@end