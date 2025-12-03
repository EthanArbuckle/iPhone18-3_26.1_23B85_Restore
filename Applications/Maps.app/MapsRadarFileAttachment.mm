@interface MapsRadarFileAttachment
+ (id)attachmentWithFileName:(id)name fileURL:(id)l deleteOnAttach:(BOOL)attach;
- (MapsRadarFileAttachment)initWithFileName:(id)name fileURL:(id)l deleteOnAttach:(BOOL)attach;
- (id)debugDescription;
- (id)description;
- (void)_maps_buildDescriptionWithBlock:(id)block;
- (void)writeToTemporaryFolder;
@end

@implementation MapsRadarFileAttachment

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = MapsRadarFileAttachment;
  blockCopy = block;
  [(MapsRadarAttachment *)&v5 _maps_buildDescriptionWithBlock:blockCopy];
  blockCopy[2](blockCopy, @"file url", self->_fileURL);
}

- (id)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C0D7D0;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapsRadarFileAttachment *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarFileAttachment *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:@"\n"];
  v12 = [NSString stringWithFormat:@"%@ {\n%@\n}", v10, v11];

  return v12;
}

- (id)description
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C0DA20;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapsRadarFileAttachment *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarFileAttachment *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [NSString stringWithFormat:@"%@ (%@)", v10, v11];

  return v12;
}

- (void)writeToTemporaryFolder
{
  v19.receiver = self;
  v19.super_class = MapsRadarFileAttachment;
  [(MapsRadarAttachment *)&v19 writeToTemporaryFolder];
  temporaryFileURL = [(MapsRadarAttachment *)self temporaryFileURL];
  if ([(MapsRadarFileAttachment *)self deleteOnAttach])
  {
    v4 = +[NSFileManager defaultManager];
    fileURL = [(MapsRadarFileAttachment *)self fileURL];
    v18 = 0;
    v6 = [v4 moveItemAtURL:fileURL toURL:temporaryFileURL error:&v18];
    v7 = v18;

    if ((v6 & 1) == 0)
    {
      v12 = sub_100C0DFBC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        fileName = [(MapsRadarAttachment *)self fileName];
        fileURL2 = [(MapsRadarFileAttachment *)self fileURL];
        path = [temporaryFileURL path];
        *buf = 138413058;
        v21 = fileName;
        v22 = 2112;
        v23 = fileURL2;
        v24 = 2112;
        v25 = path;
        v26 = 2112;
        v27 = v7;
        v16 = "Failed to move file with name '%@' from path '%@' to path '%@': %@";
        goto LABEL_11;
      }

LABEL_12:

      goto LABEL_13;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (![(MapsRadarFileAttachment *)self deleteOnAttach])
  {
    v9 = +[NSFileManager defaultManager];
    fileURL3 = [(MapsRadarFileAttachment *)self fileURL];
    v17 = v8;
    v11 = [v9 copyItemAtURL:fileURL3 toURL:temporaryFileURL error:&v17];
    v7 = v17;

    if (v11)
    {
LABEL_13:
      v8 = v7;
      goto LABEL_14;
    }

    v12 = sub_100C0DFBC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      fileName = [(MapsRadarAttachment *)self fileName];
      fileURL2 = [(MapsRadarFileAttachment *)self fileURL];
      path = [temporaryFileURL path];
      *buf = 138413058;
      v21 = fileName;
      v22 = 2112;
      v23 = fileURL2;
      v24 = 2112;
      v25 = path;
      v26 = 2112;
      v27 = v7;
      v16 = "Failed to copy file with name '%@' from path '%@' to path '%@': %@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v16, buf, 0x2Au);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_14:
}

- (MapsRadarFileAttachment)initWithFileName:(id)name fileURL:(id)l deleteOnAttach:(BOOL)attach
{
  nameCopy = name;
  lCopy = l;
  if (!lCopy)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[MapsRadarFileAttachment initWithFileName:fileURL:deleteOnAttach:]";
      v23 = 2080;
      v24 = "MapsRadarAttachment.m";
      v25 = 1024;
      v26 = 156;
      v27 = 2080;
      v28 = "fileURL != nil";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (([lCopy isFileURL] & 1) == 0)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[MapsRadarFileAttachment initWithFileName:fileURL:deleteOnAttach:]";
      v23 = 2080;
      v24 = "MapsRadarAttachment.m";
      v25 = 1024;
      v26 = 157;
      v27 = 2080;
      v28 = "[fileURL isFileURL]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v20.receiver = self;
  v20.super_class = MapsRadarFileAttachment;
  v10 = [(MapsRadarAttachment *)&v20 initWithFileName:nameCopy];
  if (v10)
  {
    v11 = [lCopy copy];
    fileURL = v10->_fileURL;
    v10->_fileURL = v11;

    v10->_deleteOnAttach = attach;
  }

  return v10;
}

+ (id)attachmentWithFileName:(id)name fileURL:(id)l deleteOnAttach:(BOOL)attach
{
  attachCopy = attach;
  lCopy = l;
  nameCopy = name;
  v10 = [[self alloc] initWithFileName:nameCopy fileURL:lCopy deleteOnAttach:attachCopy];

  return v10;
}

@end