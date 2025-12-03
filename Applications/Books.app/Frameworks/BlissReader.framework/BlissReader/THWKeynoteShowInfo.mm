@interface THWKeynoteShowInfo
- (THWKeynoteShowInfo)initWithContext:(id)context geometry:(id)geometry sourceURL:(id)l drmContext:(id)drmContext;
- (void)dealloc;
@end

@implementation THWKeynoteShowInfo

- (THWKeynoteShowInfo)initWithContext:(id)context geometry:(id)geometry sourceURL:(id)l drmContext:(id)drmContext
{
  v11.receiver = self;
  v11.super_class = THWKeynoteShowInfo;
  v8 = [(THWKeynoteShowInfo *)&v11 initWithContext:context geometry:geometry];
  v9 = v8;
  if (v8)
  {
    [(THWKeynoteShowInfo *)v8 setSourceURL:l];
    [(THWKeynoteShowInfo *)v9 setDrmContext:drmContext];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWKeynoteShowInfo;
  [(THWKeynoteShowInfo *)&v3 dealloc];
}

@end