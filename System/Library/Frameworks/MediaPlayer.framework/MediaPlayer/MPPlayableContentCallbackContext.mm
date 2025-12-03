@interface MPPlayableContentCallbackContext
- (MPPlayableContentCallbackContext)initWithIndexPath:(id)path;
@end

@implementation MPPlayableContentCallbackContext

- (MPPlayableContentCallbackContext)initWithIndexPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = MPPlayableContentCallbackContext;
  v6 = [(MPPlayableContentCallbackContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_indexPath, path);
    v7->_serviced = 0;
  }

  return v7;
}

@end