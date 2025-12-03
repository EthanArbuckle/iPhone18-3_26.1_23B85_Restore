@interface MapsRadarImageAttachment
+ (MapsRadarImageAttachment)attachmentWithFileName:(id)name image:(id)image isScreenshot:(BOOL)screenshot;
- (MapsRadarImageAttachment)initWithFileName:(id)name image:(id)image isScreenshot:(BOOL)screenshot;
- (id)_imageData;
- (id)_screenshotData;
- (id)debugDescription;
- (id)description;
- (id)temporaryFileURL;
- (void)_maps_buildDescriptionWithBlock:(id)block;
- (void)writeToTemporaryFolder;
@end

@implementation MapsRadarImageAttachment

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = MapsRadarImageAttachment;
  blockCopy = block;
  [(MapsRadarAttachment *)&v5 _maps_buildDescriptionWithBlock:blockCopy];
  blockCopy[2](blockCopy, @"image", self->_image);
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
  [(MapsRadarImageAttachment *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
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
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C0DA20;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapsRadarImageAttachment *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
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
    radarDraft = [(MapsRadarAttachment *)self radarDraft];

    if (!radarDraft)
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

    radarDraft2 = [(MapsRadarAttachment *)self radarDraft];
    temporaryScreenshotsFolderURL = [radarDraft2 temporaryScreenshotsFolderURL];
    fileName = [(MapsRadarAttachment *)self fileName];
    temporaryFileURL = [temporaryScreenshotsFolderURL URLByAppendingPathComponent:fileName];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MapsRadarImageAttachment;
    temporaryFileURL = [(MapsRadarAttachment *)&v12 temporaryFileURL];
  }

  return temporaryFileURL;
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

  image = [(MapsRadarImageAttachment *)self image];
  CGImageDestinationAddImage(v4, [image CGImage], v5);

  LOBYTE(image) = CGImageDestinationFinalize(v4);
  CFRelease(v4);
  if (image)
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
    image = [(MapsRadarImageAttachment *)self image];
    v6 = UIImagePNGRepresentation(image);
    goto LABEL_7;
  }

  v3 = sub_100C0DFBC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Adding metadata to screenshot", buf, 2u);
  }

  _screenshotData = [(MapsRadarImageAttachment *)self _screenshotData];
  image = _screenshotData;
  if (_screenshotData)
  {
    v6 = _screenshotData;
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

    image2 = [(MapsRadarImageAttachment *)self image];
    v7 = UIImagePNGRepresentation(image2);
  }

LABEL_8:

  return v7;
}

- (void)writeToTemporaryFolder
{
  v12.receiver = self;
  v12.super_class = MapsRadarImageAttachment;
  [(MapsRadarAttachment *)&v12 writeToTemporaryFolder];
  temporaryFileURL = [(MapsRadarImageAttachment *)self temporaryFileURL];
  _imageData = [(MapsRadarImageAttachment *)self _imageData];
  v11 = 0;
  v5 = [_imageData writeToURL:temporaryFileURL options:1 error:&v11];
  v6 = v11;
  if ((v5 & 1) == 0)
  {
    v7 = sub_100C0DFBC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      fileName = [(MapsRadarAttachment *)self fileName];
      image = [(MapsRadarImageAttachment *)self image];
      path = [temporaryFileURL path];
      *buf = 138413058;
      v14 = fileName;
      v15 = 2112;
      v16 = image;
      v17 = 2112;
      v18 = path;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to save file with name '%@' from image '%@' at path '%@': %@", buf, 0x2Au);
    }
  }
}

- (MapsRadarImageAttachment)initWithFileName:(id)name image:(id)image isScreenshot:(BOOL)screenshot
{
  nameCopy = name;
  imageCopy = image;
  if (!imageCopy)
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
  v10 = [(MapsRadarAttachment *)&v16 initWithFileName:nameCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_image, image);
    v11->_isScreenshot = screenshot;
  }

  return v11;
}

+ (MapsRadarImageAttachment)attachmentWithFileName:(id)name image:(id)image isScreenshot:(BOOL)screenshot
{
  screenshotCopy = screenshot;
  imageCopy = image;
  nameCopy = name;
  v10 = [[self alloc] initWithFileName:nameCopy image:imageCopy isScreenshot:screenshotCopy];

  return v10;
}

@end