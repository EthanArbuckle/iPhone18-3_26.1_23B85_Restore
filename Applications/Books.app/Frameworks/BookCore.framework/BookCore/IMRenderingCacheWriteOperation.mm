@interface IMRenderingCacheWriteOperation
+ (id)mimeForIMRenderingCacheSerializeFormat:(int)a3;
- (IMRenderingCacheWriteOperation)initWithImage:(id)a3 key:(id)a4 format:(int)a5 persistentCachePath:(id)a6;
- (void)cancel;
- (void)dealloc;
- (void)main;
@end

@implementation IMRenderingCacheWriteOperation

- (IMRenderingCacheWriteOperation)initWithImage:(id)a3 key:(id)a4 format:(int)a5 persistentCachePath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(IMRenderingCacheWriteOperation *)self init];
  v14 = v13;
  if (v13)
  {
    [(IMRenderingCacheWriteOperation *)v13 setImage:v10];
    objc_storeStrong(&v14->_key, a4);
    v15 = [v12 copy];
    path = v14->_path;
    v14->_path = v15;

    v14->_serializeFormat = a5;
    if (![(NSString *)v14->_key length])
    {
      [NSException raise:@"NSIllegalState" format:@"IMRenderingCacheWriteOperation does not have _key"];
    }

    if (!v14->_image)
    {
      [NSException raise:@"NSIllegalState" format:@"IMRenderingCacheWriteOperation does not have _image"];
    }

    if (!v14->_path)
    {
      [NSException raise:@"NSIllegalState" format:@"IMRenderingCacheWriteOperation does not have _persistentCachePath"];
    }

    [(IMRenderingCacheWriteOperation *)v14 setCompressionQuality:0.699999988];
  }

  return v14;
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = IMRenderingCacheWriteOperation;
  [(IMRenderingCacheWriteOperation *)&v2 cancel];
}

- (void)dealloc
{
  path = self->_path;
  self->_path = 0;

  v4.receiver = self;
  v4.super_class = IMRenderingCacheWriteOperation;
  [(IMRenderingCacheWriteOperation *)&v4 dealloc];
}

- (void)main
{
  if (([(IMRenderingCacheWriteOperation *)self isCancelled]& 1) == 0 && [(IMRenderingCacheWriteOperation *)self serializeFormat]!= -1)
  {
    [(IMRenderingCacheWriteOperation *)self setThreadPriority:0.1];
    v3 = [IMRenderingCacheWriteOperation mimeForIMRenderingCacheSerializeFormat:[(IMRenderingCacheWriteOperation *)self serializeFormat]];
    v4 = +[IMPersistentCacheManager sharedInstance];
    v5 = [v4 cacheForPath:self->_path maxSize:0];

    [(IMRenderingCacheWriteOperation *)self serializeFormat];
    if (([(IMRenderingCacheWriteOperation *)self isCancelled]& 1) != 0)
    {
      goto LABEL_10;
    }

    v6 = [(IMRenderingCacheWriteOperation *)self key];
    v7 = [v5 hasItemForKey:v6];

    if (v7)
    {
      goto LABEL_10;
    }

    v8 = [(IMRenderingCacheWriteOperation *)self image];
    if ([v8 CGImage] && objc_msgSend(v3, "length"))
    {
      v9 = [(IMRenderingCacheWriteOperation *)self isCancelled];

      if (v9)
      {
LABEL_10:
        v13 = +[IMPersistentCacheManager sharedInstance];
        [v13 purgeFromCache:self->_path];

        [(IMRenderingCacheWriteOperation *)self setImage:0];
        return;
      }

      v8 = [(IMRenderingCacheWriteOperation *)self image];
      v10 = [v8 CGImage];
      v11 = [(IMRenderingCacheWriteOperation *)self key];
      v14 = kCGImageDestinationLossyCompressionQuality;
      v15 = &off_2EF448;
      v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [v5 insertCGImage:v10 forKey:v11 mimeType:v3 properties:v12];
    }

    goto LABEL_10;
  }
}

+ (id)mimeForIMRenderingCacheSerializeFormat:(int)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_2CA0D8[a3];
  }

  return v4;
}

@end