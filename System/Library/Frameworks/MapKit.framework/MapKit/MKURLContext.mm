@interface MKURLContext
- (MKURLContext)initWithOriginatedFromWatch:(BOOL)watch companionRouteContext:(id)context;
@end

@implementation MKURLContext

- (MKURLContext)initWithOriginatedFromWatch:(BOOL)watch companionRouteContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = MKURLContext;
  v7 = [(MKURLContext *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_originatedFromWatch = watch;
    v9 = [contextCopy copy];
    companionRouteContext = v8->_companionRouteContext;
    v8->_companionRouteContext = v9;
  }

  return v8;
}

@end