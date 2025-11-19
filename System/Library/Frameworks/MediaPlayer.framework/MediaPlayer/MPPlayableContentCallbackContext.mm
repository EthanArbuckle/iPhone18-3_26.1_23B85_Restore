@interface MPPlayableContentCallbackContext
- (MPPlayableContentCallbackContext)initWithIndexPath:(id)a3;
@end

@implementation MPPlayableContentCallbackContext

- (MPPlayableContentCallbackContext)initWithIndexPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPPlayableContentCallbackContext;
  v6 = [(MPPlayableContentCallbackContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_indexPath, a3);
    v7->_serviced = 0;
  }

  return v7;
}

@end