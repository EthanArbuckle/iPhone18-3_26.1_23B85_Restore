@interface PHASERouteChangeInfoImpl
- (PHASERouteChangeInfoImpl)initWithDescription:(id)description;
@end

@implementation PHASERouteChangeInfoImpl

- (PHASERouteChangeInfoImpl)initWithDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = PHASERouteChangeInfoImpl;
  v6 = [(PHASERouteChangeInfoImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_description, description);
  }

  return v7;
}

@end