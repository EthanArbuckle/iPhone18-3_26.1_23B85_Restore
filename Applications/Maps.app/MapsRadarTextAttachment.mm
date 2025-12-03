@interface MapsRadarTextAttachment
+ (id)attachmentWithFileName:(id)name text:(id)text;
- (MapsRadarTextAttachment)initWithFileName:(id)name text:(id)text;
- (id)debugDescription;
- (id)description;
- (void)_maps_buildDescriptionWithBlock:(id)block;
- (void)writeToTemporaryFolder;
@end

@implementation MapsRadarTextAttachment

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = MapsRadarTextAttachment;
  blockCopy = block;
  [(MapsRadarAttachment *)&v5 _maps_buildDescriptionWithBlock:blockCopy];
  blockCopy[2](blockCopy, @"text", self->_text);
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
  [(MapsRadarTextAttachment *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarTextAttachment *)v5 performSelector:"accessibilityIdentifier"];
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
  [(MapsRadarTextAttachment *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarTextAttachment *)v5 performSelector:"accessibilityIdentifier"];
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
  v11.receiver = self;
  v11.super_class = MapsRadarTextAttachment;
  [(MapsRadarAttachment *)&v11 writeToTemporaryFolder];
  temporaryFileURL = [(MapsRadarAttachment *)self temporaryFileURL];
  text = [(MapsRadarTextAttachment *)self text];
  v10 = 0;
  v5 = [text writeToURL:temporaryFileURL atomically:1 encoding:4 error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v7 = sub_100C0DFBC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      fileName = [(MapsRadarAttachment *)self fileName];
      text2 = [(MapsRadarTextAttachment *)self text];
      *buf = 138413058;
      v13 = fileName;
      v14 = 2112;
      v15 = text2;
      v16 = 2112;
      v17 = temporaryFileURL;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to save file with name '%@' from text '%@' at path '%@': %@", buf, 0x2Au);
    }
  }
}

- (MapsRadarTextAttachment)initWithFileName:(id)name text:(id)text
{
  nameCopy = name;
  textCopy = text;
  if (!textCopy)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[MapsRadarTextAttachment initWithFileName:text:]";
      v18 = 2080;
      v19 = "MapsRadarAttachment.m";
      v20 = 1024;
      v21 = 78;
      v22 = 2080;
      v23 = "text != nil";
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
  v15.super_class = MapsRadarTextAttachment;
  v8 = [(MapsRadarAttachment *)&v15 initWithFileName:nameCopy];
  if (v8)
  {
    v9 = [textCopy copy];
    text = v8->_text;
    v8->_text = v9;
  }

  return v8;
}

+ (id)attachmentWithFileName:(id)name text:(id)text
{
  textCopy = text;
  nameCopy = name;
  v8 = [[self alloc] initWithFileName:nameCopy text:textCopy];

  return v8;
}

@end