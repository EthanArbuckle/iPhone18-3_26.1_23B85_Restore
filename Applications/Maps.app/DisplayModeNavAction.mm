@interface DisplayModeNavAction
- (DisplayModeNavAction)initWithShowDetails:(BOOL)a3;
@end

@implementation DisplayModeNavAction

- (DisplayModeNavAction)initWithShowDetails:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DisplayModeNavAction;
  result = [(DisplayModeNavAction *)&v5 init];
  if (result)
  {
    result->_showDetails = a3;
  }

  return result;
}

@end