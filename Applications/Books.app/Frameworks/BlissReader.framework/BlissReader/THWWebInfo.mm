@interface THWWebInfo
- (CGSize)idealWebSize;
- (NSString)bookID;
- (NSURL)bookBundleURL;
- (THWWebInfo)initWithContext:(id)context geometry:(id)geometry stageGeometry:(id)stageGeometry sourceURL:(id)l drmContext:(id)drmContext exposurePolicy:(int)policy ignoreInfoPlist:(BOOL)plist allowNetworkAccess:(BOOL)self0 autoplayConfig:(id)self1;
- (TSUImage)defaultImage;
- (TSUImage)placeholderImage;
- (id)p_defaultImage;
- (id)p_loadImageWithFilename:(id)filename;
- (id)p_placeholderImage;
- (void)dealloc;
- (void)setPlaceholderInfo:(id)info;
@end

@implementation THWWebInfo

- (THWWebInfo)initWithContext:(id)context geometry:(id)geometry stageGeometry:(id)stageGeometry sourceURL:(id)l drmContext:(id)drmContext exposurePolicy:(int)policy ignoreInfoPlist:(BOOL)plist allowNetworkAccess:(BOOL)self0 autoplayConfig:(id)self1
{
  v17.receiver = self;
  v17.super_class = THWWebInfo;
  v15 = [(THWWebInfo *)&v17 initWithContext:context geometry:geometry];
  if (v15)
  {
    v15->_stageGeometry = stageGeometry;
    v15->_sourceURL = l;
    v15->_drmContext = drmContext;
    v15->_exposurePolicy = policy;
    v15->_ignoreInfoPlist = plist;
    v15->_allowNetworkAccess = access;
    v15->_autoplayConfig = config;
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWWebInfo;
  [(THWWebInfo *)&v3 dealloc];
}

- (CGSize)idealWebSize
{
  p_idealWebSize = &self->_idealWebSize;
  width = self->_idealWebSize.width;
  height = self->_idealWebSize.height;
  v5 = CGSizeZero.height;
  if (width == CGSizeZero.width && height == v5)
  {
    if (!self->_ignoreInfoPlist)
    {
      v8 = [NSData dataWithContentsOfURL:[[(NSURL *)[(THWWebInfo *)self sourceURL] URLByDeletingLastPathComponent] URLByAppendingPathComponent:@"Info.plist"] drmContext:[(THWWebInfo *)self drmContext] error:0];
      if (!v8)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      v9 = [NSDictionary dictionaryWithContentsOfPlistData:v8];
      if (!v9)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      objc_opt_class();
      [(NSDictionary *)v9 objectForKey:@"Width"];
      [TSUDynamicCast() floatValue];
      intValue = v10;
      if (v10 == 0.0)
      {
        objc_opt_class();
        [(NSDictionary *)v9 objectForKey:@"Width"];
        intValue = [TSUDynamicCast() intValue];
      }

      objc_opt_class();
      [(NSDictionary *)v9 objectForKey:@"Height"];
      [TSUDynamicCast() floatValue];
      if (intValue2 == 0.0)
      {
        objc_opt_class();
        [(NSDictionary *)v9 objectForKey:@"Height"];
        intValue2 = [TSUDynamicCast() intValue];
      }

      v13 = intValue2 > 0.0;
      v14 = intValue2;
      if (intValue > 0.0 && v13)
      {
        height = v14;
        width = intValue;
      }
    }

    if (width == CGSizeZero.width && height == v5)
    {
      p_defaultImage = [(THWWebInfo *)self p_defaultImage];
      if (p_defaultImage)
      {
        [p_defaultImage size];
        width = v17;
        height = v18;
      }

      else
      {
        [(TSDInfoGeometry *)[(THWWebInfo *)self stageGeometry] boundsBeforeRotation];
        width = v19;
        height = v20;
      }
    }

    p_idealWebSize->width = width;
    p_idealWebSize->height = height;
  }

  v21 = width;
  v22 = height;
  result.height = v22;
  result.width = v21;
  return result;
}

- (TSUImage)defaultImage
{
  result = [(THWWebInfo *)self p_defaultImage];
  if (!result)
  {

    return [(THWWebInfo *)self p_placeholderImage];
  }

  return result;
}

- (TSUImage)placeholderImage
{
  result = [(THWWebInfo *)self p_placeholderImage];
  if (!result)
  {

    return [(THWWebInfo *)self p_defaultImage];
  }

  return result;
}

- (NSString)bookID
{
  objc_opt_class();
  [(THWWebInfo *)self documentRoot];
  bookDescription = [TSUDynamicCast() bookDescription];

  return [bookDescription annotationID];
}

- (NSURL)bookBundleURL
{
  objc_opt_class();
  [(THWWebInfo *)self documentRoot];
  bookDescription = [TSUDynamicCast() bookDescription];

  return [bookDescription bookBundleUrl];
}

- (void)setPlaceholderInfo:(id)info
{
  placeholderInfo = self->_placeholderInfo;
  if (placeholderInfo != info)
  {

    self->_placeholderInfo = info;
  }
}

- (id)p_loadImageWithFilename:(id)filename
{
  result = [[(NSURL *)[(THWWebInfo *)self sourceURL] URLByDeletingLastPathComponent] URLByAppendingPathComponent:filename];
  if (result)
  {
    v6 = [NSData dataWithContentsOfURL:result drmContext:[(THWWebInfo *)self drmContext] error:0];
    if (!v6)
    {
      v6 = +[NSData dataWithContentsOfURL:drmContext:error:](NSData, "dataWithContentsOfURL:drmContext:error:", -[NSURL URLByAppendingPathComponent:](-[NSURL URLByDeletingLastPathComponent](-[THWWebInfo sourceURL](self, "sourceURL"), "URLByDeletingLastPathComponent"), "URLByAppendingPathComponent:", [filename lowercaseString]), -[THWWebInfo drmContext](self, "drmContext"), 0);
    }

    return [TSUImage imageWithData:v6];
  }

  return result;
}

- (id)p_defaultImage
{
  TSUScreenScale();
  if (v3 <= 1.0 || (result = [(THWWebInfo *)self p_loadImageWithFilename:@"Default@2x.png"]) == 0)
  {

    return [(THWWebInfo *)self p_loadImageWithFilename:@"Default.png"];
  }

  return result;
}

- (id)p_placeholderImage
{
  if (!self->_placeholderInfo)
  {
    return 0;
  }

  objc_opt_class();
  v3 = TSUDynamicCast();
  if (!v3 || (v4 = v3, [v3 opacity], v5 != 1.0) || objc_msgSend(v4, "maskInfo") || objc_msgSend(v4, "reflection") || objc_msgSend(v4, "stroke") && (objc_msgSend(objc_msgSend(v4, "stroke"), "shouldRender") & 1) != 0 || objc_msgSend(v4, "shadow") && (objc_msgSend(objc_msgSend(v4, "shadow"), "isEnabled") & 1) != 0 || (result = +[TSUImage imageWithImageData:](TSUImage, "imageWithImageData:", objc_msgSend(v4, "imageData"))) == 0)
  {
    v6 = [TSDImager CGImageForInfo:self->_placeholderInfo documentRoot:[(THWWebInfo *)self documentRoot]];

    return [TSUImage imageWithCGImage:v6];
  }

  return result;
}

@end