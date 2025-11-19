@interface MapsRadarDataAttachment
+ (id)attachmentWithFileName:(id)a3 data:(id)a4;
- (MapsRadarDataAttachment)initWithFileName:(id)a3 data:(id)a4;
- (id)debugDescription;
- (id)description;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
- (void)writeToTemporaryFolder;
@end

@implementation MapsRadarDataAttachment

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = MapsRadarDataAttachment;
  v4 = a3;
  [(MapsRadarAttachment *)&v5 _maps_buildDescriptionWithBlock:v4];
  v4[2](v4, @"data", self->_data);
}

- (id)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C0D7D0;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapsRadarDataAttachment *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarDataAttachment *)v5 performSelector:"accessibilityIdentifier"];
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
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C0DA20;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapsRadarDataAttachment *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarDataAttachment *)v5 performSelector:"accessibilityIdentifier"];
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
  v12.receiver = self;
  v12.super_class = MapsRadarDataAttachment;
  [(MapsRadarAttachment *)&v12 writeToTemporaryFolder];
  v3 = [(MapsRadarAttachment *)self temporaryFileURL];
  v4 = [(MapsRadarDataAttachment *)self data];
  v11 = 0;
  v5 = [v4 writeToURL:v3 options:1 error:&v11];
  v6 = v11;

  if ((v5 & 1) == 0)
  {
    v7 = sub_100C0DFBC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(MapsRadarAttachment *)self fileName];
      v9 = [(MapsRadarDataAttachment *)self data];
      v10 = [v3 path];
      *buf = 138413058;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to save file with name '%@' from data '%@' at path '%@': %@", buf, 0x2Au);
    }
  }
}

- (MapsRadarDataAttachment)initWithFileName:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[MapsRadarDataAttachment initWithFileName:data:]";
      v18 = 2080;
      v19 = "MapsRadarAttachment.m";
      v20 = 1024;
      v21 = 117;
      v22 = 2080;
      v23 = "data != nil";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v15.receiver = self;
  v15.super_class = MapsRadarDataAttachment;
  v8 = [(MapsRadarAttachment *)&v15 initWithFileName:v6];
  if (v8)
  {
    v9 = [v7 copy];
    data = v8->_data;
    v8->_data = v9;
  }

  return v8;
}

+ (id)attachmentWithFileName:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithFileName:v7 data:v6];

  return v8;
}

@end