@interface MapsRadarAttachment
+ (MapsRadarAttachment)attachmentWithFileName:(id)a3;
- (MapsRadarAttachment)initWithFileName:(id)a3;
- (MapsRadarDraft)radarDraft;
- (NSString)debugDescription;
- (NSString)description;
- (NSURL)temporaryFileURL;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
- (void)writeToTemporaryFolder;
@end

@implementation MapsRadarAttachment

- (MapsRadarDraft)radarDraft
{
  WeakRetained = objc_loadWeakRetained(&self->_radarDraft);

  return WeakRetained;
}

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  [(NSDate *)self->_creationDate timeIntervalSinceReferenceDate];
  v7 = [NSNumber numberWithDouble:?];
  (*v4)(v6, @"creation date", v7);
}

- (NSString)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C0D7D0;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapsRadarAttachment *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarAttachment *)v5 performSelector:"accessibilityIdentifier"];
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

- (NSString)description
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C0DA20;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapsRadarAttachment *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarAttachment *)v5 performSelector:"accessibilityIdentifier"];
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

- (NSURL)temporaryFileURL
{
  v3 = [(MapsRadarAttachment *)self radarDraft];

  if (!v3)
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315906;
      v13 = "[MapsRadarAttachment temporaryFileURL]";
      v14 = 2080;
      v15 = "MapsRadarAttachment.m";
      v16 = 1024;
      v17 = 59;
      v18 = 2080;
      v19 = "self.radarDraft";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v12, 0x26u);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", &v12, 0xCu);
      }
    }
  }

  v4 = [(MapsRadarAttachment *)self radarDraft];
  v5 = [v4 temporaryAttachmentsFolderURL];
  v6 = [(MapsRadarAttachment *)self fileName];
  v7 = [v5 URLByAppendingPathComponent:v6];

  return v7;
}

- (void)writeToTemporaryFolder
{
  v3 = [(MapsRadarAttachment *)self radarDraft];

  if (!v3)
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v15 = "[MapsRadarAttachment writeToTemporaryFolder]";
      v16 = 2080;
      v17 = "MapsRadarAttachment.m";
      v18 = 1024;
      v19 = 47;
      v20 = 2080;
      v21 = "self.radarDraft";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v4 = [(MapsRadarAttachment *)self temporaryFileURL];
  v5 = [v4 URLByDeletingLastPathComponent];

  v6 = +[NSFileManager defaultManager];
  v13 = 0;
  v7 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v13];
  v8 = v13;

  if ((v7 & 1) == 0)
  {
    v9 = sub_100C0DFBC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error creating temporary folder: %@: %@", buf, 0x16u);
    }
  }
}

- (MapsRadarAttachment)initWithFileName:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v16 = "[MapsRadarAttachment initWithFileName:]";
      v17 = 2080;
      v18 = "MapsRadarAttachment.m";
      v19 = 1024;
      v20 = 31;
      v21 = 2080;
      v22 = "fileName != nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v14.receiver = self;
  v14.super_class = MapsRadarAttachment;
  v5 = [(MapsRadarAttachment *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
    fileName = v5->_fileName;
    v5->_fileName = v6;

    v8 = +[NSDate date];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;
  }

  return v5;
}

+ (MapsRadarAttachment)attachmentWithFileName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFileName:v4];

  return v5;
}

@end