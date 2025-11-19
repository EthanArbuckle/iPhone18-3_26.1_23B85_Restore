@interface THWWebInfo
- (CGSize)idealWebSize;
- (NSString)bookID;
- (NSURL)bookBundleURL;
- (THWWebInfo)initWithContext:(id)a3 geometry:(id)a4 stageGeometry:(id)a5 sourceURL:(id)a6 drmContext:(id)a7 exposurePolicy:(int)a8 ignoreInfoPlist:(BOOL)a9 allowNetworkAccess:(BOOL)a10 autoplayConfig:(id)a11;
- (TSUImage)defaultImage;
- (TSUImage)placeholderImage;
- (id)p_defaultImage;
- (id)p_loadImageWithFilename:(id)a3;
- (id)p_placeholderImage;
- (void)dealloc;
- (void)setPlaceholderInfo:(id)a3;
@end

@implementation THWWebInfo

- (THWWebInfo)initWithContext:(id)a3 geometry:(id)a4 stageGeometry:(id)a5 sourceURL:(id)a6 drmContext:(id)a7 exposurePolicy:(int)a8 ignoreInfoPlist:(BOOL)a9 allowNetworkAccess:(BOOL)a10 autoplayConfig:(id)a11
{
  v17.receiver = self;
  v17.super_class = THWWebInfo;
  v15 = [(THWWebInfo *)&v17 initWithContext:a3 geometry:a4];
  if (v15)
  {
    v15->_stageGeometry = a5;
    v15->_sourceURL = a6;
    v15->_drmContext = a7;
    v15->_exposurePolicy = a8;
    v15->_ignoreInfoPlist = a9;
    v15->_allowNetworkAccess = a10;
    v15->_autoplayConfig = a11;
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
      v11 = v10;
      if (v10 == 0.0)
      {
        objc_opt_class();
        [(NSDictionary *)v9 objectForKey:@"Width"];
        v11 = [TSUDynamicCast() intValue];
      }

      objc_opt_class();
      [(NSDictionary *)v9 objectForKey:@"Height"];
      [TSUDynamicCast() floatValue];
      if (v12 == 0.0)
      {
        objc_opt_class();
        [(NSDictionary *)v9 objectForKey:@"Height"];
        v12 = [TSUDynamicCast() intValue];
      }

      v13 = v12 > 0.0;
      v14 = v12;
      if (v11 > 0.0 && v13)
      {
        height = v14;
        width = v11;
      }
    }

    if (width == CGSizeZero.width && height == v5)
    {
      v16 = [(THWWebInfo *)self p_defaultImage];
      if (v16)
      {
        [v16 size];
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
  v3 = [TSUDynamicCast() bookDescription];

  return [v3 annotationID];
}

- (NSURL)bookBundleURL
{
  objc_opt_class();
  [(THWWebInfo *)self documentRoot];
  v3 = [TSUDynamicCast() bookDescription];

  return [v3 bookBundleUrl];
}

- (void)setPlaceholderInfo:(id)a3
{
  placeholderInfo = self->_placeholderInfo;
  if (placeholderInfo != a3)
  {

    self->_placeholderInfo = a3;
  }
}

- (id)p_loadImageWithFilename:(id)a3
{
  result = [[(NSURL *)[(THWWebInfo *)self sourceURL] URLByDeletingLastPathComponent] URLByAppendingPathComponent:a3];
  if (result)
  {
    v6 = [NSData dataWithContentsOfURL:result drmContext:[(THWWebInfo *)self drmContext] error:0];
    if (!v6)
    {
      v6 = +[NSData dataWithContentsOfURL:drmContext:error:](NSData, "dataWithContentsOfURL:drmContext:error:", -[NSURL URLByAppendingPathComponent:](-[NSURL URLByDeletingLastPathComponent](-[THWWebInfo sourceURL](self, "sourceURL"), "URLByDeletingLastPathComponent"), "URLByAppendingPathComponent:", [a3 lowercaseString]), -[THWWebInfo drmContext](self, "drmContext"), 0);
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