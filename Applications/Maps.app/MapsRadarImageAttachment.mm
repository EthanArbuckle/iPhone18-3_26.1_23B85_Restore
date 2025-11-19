@interface MapsRadarImageAttachment
+ (MapsRadarImageAttachment)attachmentWithFileName:(id)a3 image:(id)a4 isScreenshot:(BOOL)a5;
- (MapsRadarImageAttachment)initWithFileName:(id)a3 image:(id)a4 isScreenshot:(BOOL)a5;
- (id)_imageData;
- (id)_screenshotData;
- (id)debugDescription;
- (id)description;
- (id)temporaryFileURL;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
- (void)writeToTemporaryFolder;
@end

@implementation MapsRadarImageAttachment

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = MapsRadarImageAttachment;
  v4 = a3;
  [(MapsRadarAttachment *)&v5 _maps_buildDescriptionWithBlock:v4];
  v4[2](v4, @"image", self->_image);
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
  [(MapsRadarImageAttachment *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarImageAttachment *)v5 performSelector:"accessibilityIdentifier"];
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
  [(MapsRadarImageAttachment *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarImageAttachment *)v5 performSelector:"accessibilityIdentifier"];
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

- (id)temporaryFileURL
{
  if ([(MapsRadarImageAttachment *)self isScreenshot])
  {
    v3 = [(MapsRadarAttachment *)self radarDraft];

    if (!v3)
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v14 = "[MapsRadarImageAttachment temporaryFileURL]";
        v15 = 2080;
        v16 = "MapsRadarAttachment.m";
        v17 = 1024;
        v18 = 276;
        v19 = 2080;
        v20 = "self.radarDraft";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v10 = sub_10006D178();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v14 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v4 = [(MapsRadarAttachment *)self radarDraft];
    v5 = [v4 temporaryScreenshotsFolderURL];
    v6 = [(MapsRadarAttachment *)self fileName];
    v7 = [v5 URLByAppendingPathComponent:v6];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MapsRadarImageAttachment;
    v7 = [(MapsRadarAttachment *)&v12 temporaryFileURL];
  }

  return v7;
}

- (id)_screenshotData
{
  v3 = objc_opt_new();
  v4 = CGImageDestinationCreateWithData(v3, @"public.png", 1uLL, 0);
  v5 = objc_opt_new();
  [v5 setObject:&off_1016E9458 forKeyedSubscript:kCGImagePropertyOrientation];
  v15 = kCGImagePropertyExifUserComment;
  v16 = @"Screenshot";
  v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v5 setObject:v6 forKeyedSubscript:kCGImagePropertyExifDictionary];

  if (_UISolariumEnabled())
  {
    v13[0] = kCGImagePropertyTIFFImageDescription;
    v13[1] = kCGImagePropertyOrientation;
    v14[0] = @"Screenshot";
    v14[1] = &off_1016E9458;
    v7 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v5 setObject:v7 forKeyedSubscript:kCGImagePropertyTIFFDictionary];
  }

  v8 = [(MapsRadarImageAttachment *)self image];
  CGImageDestinationAddImage(v4, [v8 CGImage], v5);

  LOBYTE(v8) = CGImageDestinationFinalize(v4);
  CFRelease(v4);
  if (v8)
  {
    v9 = v3;
  }

  else
  {
    v10 = sub_100C0DFBC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error finalizing screenshot image destination", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)_imageData
{
  if (![(MapsRadarImageAttachment *)self isScreenshot])
  {
    v5 = [(MapsRadarImageAttachment *)self image];
    v6 = UIImagePNGRepresentation(v5);
    goto LABEL_7;
  }

  v3 = sub_100C0DFBC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Adding metadata to screenshot", buf, 2u);
  }

  v4 = [(MapsRadarImageAttachment *)self _screenshotData];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  v9 = _UISolariumEnabled();
  v10 = sub_100C0DFBC();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v11)
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Adding metadata to screenshot failed and solarium is enabled; will avoid saving raw image data to disk", v14, 2u);
    }

    v7 = 0;
  }

  else
  {
    if (v11)
    {
      v13[0] = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Adding metadata to screenshot failed; will fall back to raw image data", v13, 2u);
    }

    v12 = [(MapsRadarImageAttachment *)self image];
    v7 = UIImagePNGRepresentation(v12);
  }

LABEL_8:

  return v7;
}

- (void)writeToTemporaryFolder
{
  v12.receiver = self;
  v12.super_class = MapsRadarImageAttachment;
  [(MapsRadarAttachment *)&v12 writeToTemporaryFolder];
  v3 = [(MapsRadarImageAttachment *)self temporaryFileURL];
  v4 = [(MapsRadarImageAttachment *)self _imageData];
  v11 = 0;
  v5 = [v4 writeToURL:v3 options:1 error:&v11];
  v6 = v11;
  if ((v5 & 1) == 0)
  {
    v7 = sub_100C0DFBC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(MapsRadarAttachment *)self fileName];
      v9 = [(MapsRadarImageAttachment *)self image];
      v10 = [v3 path];
      *buf = 138413058;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to save file with name '%@' from image '%@' at path '%@': %@", buf, 0x2Au);
    }
  }
}

- (MapsRadarImageAttachment)initWithFileName:(id)a3 image:(id)a4 isScreenshot:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v13 = sub_10006D178();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v18 = "[MapsRadarImageAttachment initWithFileName:image:isScreenshot:]";
      v19 = 2080;
      v20 = "MapsRadarAttachment.m";
      v21 = 1024;
      v22 = 198;
      v23 = 2080;
      v24 = "image != nil";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v18 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v16.receiver = self;
  v16.super_class = MapsRadarImageAttachment;
  v10 = [(MapsRadarAttachment *)&v16 initWithFileName:v8];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_image, a4);
    v11->_isScreenshot = a5;
  }

  return v11;
}

+ (MapsRadarImageAttachment)attachmentWithFileName:(id)a3 image:(id)a4 isScreenshot:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithFileName:v9 image:v8 isScreenshot:v5];

  return v10;
}

@end