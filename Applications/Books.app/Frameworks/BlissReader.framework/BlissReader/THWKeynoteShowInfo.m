@interface THWKeynoteShowInfo
- (THWKeynoteShowInfo)initWithContext:(id)a3 geometry:(id)a4 sourceURL:(id)a5 drmContext:(id)a6;
- (void)dealloc;
@end

@implementation THWKeynoteShowInfo

- (THWKeynoteShowInfo)initWithContext:(id)a3 geometry:(id)a4 sourceURL:(id)a5 drmContext:(id)a6
{
  v11.receiver = self;
  v11.super_class = THWKeynoteShowInfo;
  v8 = [(THWKeynoteShowInfo *)&v11 initWithContext:a3 geometry:a4];
  v9 = v8;
  if (v8)
  {
    [(THWKeynoteShowInfo *)v8 setSourceURL:a5];
    [(THWKeynoteShowInfo *)v9 setDrmContext:a6];
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