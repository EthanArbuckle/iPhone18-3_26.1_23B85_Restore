@interface MKURLContext
- (MKURLContext)initWithOriginatedFromWatch:(BOOL)a3 companionRouteContext:(id)a4;
@end

@implementation MKURLContext

- (MKURLContext)initWithOriginatedFromWatch:(BOOL)a3 companionRouteContext:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MKURLContext;
  v7 = [(MKURLContext *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_originatedFromWatch = a3;
    v9 = [v6 copy];
    companionRouteContext = v8->_companionRouteContext;
    v8->_companionRouteContext = v9;
  }

  return v8;
}

@end