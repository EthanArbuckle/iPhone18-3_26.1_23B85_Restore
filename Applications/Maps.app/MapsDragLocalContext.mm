@interface MapsDragLocalContext
- (MapsDragLocalContext)initWithWindowScene:(id)scene;
@end

@implementation MapsDragLocalContext

- (MapsDragLocalContext)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = MapsDragLocalContext;
  v6 = [(MapsDragLocalContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_windowScene, scene);
  }

  return v7;
}

@end