@interface THWSceneInfo
- (THWSceneInfo)initWithContext:(id)a3 geometry:(id)a4 sourceURL:(id)a5 drmContext:(id)a6 stageColor:(id)a7;
- (id)p_validateFileURL:(id)a3;
- (void)dealloc;
@end

@implementation THWSceneInfo

- (THWSceneInfo)initWithContext:(id)a3 geometry:(id)a4 sourceURL:(id)a5 drmContext:(id)a6 stageColor:(id)a7
{
  v13.receiver = self;
  v13.super_class = THWSceneInfo;
  v10 = [(THWSceneInfo *)&v13 initWithContext:a3 geometry:a4];
  v11 = v10;
  if (v10)
  {
    [(THWSceneInfo *)v10 setIdleAnimationBehavior:0];
    [(THWSceneInfo *)v11 setRotationConstraints:0];
    [(THWSceneInfo *)v11 setSourceURL:[(THWSceneInfo *)v11 p_validateFileURL:a5]];
    [(THWSceneInfo *)v11 setDrmContext:a6];
    if (!a7)
    {
      a7 = +[TSUColor clearColor];
    }

    [(THWSceneInfo *)v11 setStageColor:a7];
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

- (id)p_validateFileURL:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    [a3 getResourceValue:&v7 forKey:NSURLIsDirectoryKey error:&v6];
    if (![v3 isFileURL] || v6 || objc_msgSend(v7, "BOOLValue") || !-[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", objc_msgSend(v3, "path")))
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return 0;
    }
  }

  return v3;
}

@end