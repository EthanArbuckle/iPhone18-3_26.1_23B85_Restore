@interface THWSceneInfo
- (THWSceneInfo)initWithContext:(id)context geometry:(id)geometry sourceURL:(id)l drmContext:(id)drmContext stageColor:(id)color;
- (id)p_validateFileURL:(id)l;
- (void)dealloc;
@end

@implementation THWSceneInfo

- (THWSceneInfo)initWithContext:(id)context geometry:(id)geometry sourceURL:(id)l drmContext:(id)drmContext stageColor:(id)color
{
  v13.receiver = self;
  v13.super_class = THWSceneInfo;
  v10 = [(THWSceneInfo *)&v13 initWithContext:context geometry:geometry];
  v11 = v10;
  if (v10)
  {
    [(THWSceneInfo *)v10 setIdleAnimationBehavior:0];
    [(THWSceneInfo *)v11 setRotationConstraints:0];
    [(THWSceneInfo *)v11 setSourceURL:[(THWSceneInfo *)v11 p_validateFileURL:l]];
    [(THWSceneInfo *)v11 setDrmContext:drmContext];
    if (!color)
    {
      color = +[TSUColor clearColor];
    }

    [(THWSceneInfo *)v11 setStageColor:color];
  }

  return v11;
}

- (void)dealloc
{
  [(THWSceneInfo *)self setSourceURL:0];
  [(THWSceneInfo *)self setStageColor:0];
  [(THWSceneInfo *)self setPlaceholderImage:0];
  [(THWSceneInfo *)self setDrmContext:0];

  self->_progressKitID = 0;
  self->_progressKitSectionID = 0;
  v3.receiver = self;
  v3.super_class = THWSceneInfo;
  [(THWSceneInfo *)&v3 dealloc];
}

- (id)p_validateFileURL:(id)l
{
  lCopy = l;
  if (l)
  {
    v6 = 0;
    v7 = 0;
    [l getResourceValue:&v7 forKey:NSURLIsDirectoryKey error:&v6];
    if (![lCopy isFileURL] || v6 || objc_msgSend(v7, "BOOLValue") || !-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", objc_msgSend(lCopy, "path")))
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return 0;
    }
  }

  return lCopy;
}

@end