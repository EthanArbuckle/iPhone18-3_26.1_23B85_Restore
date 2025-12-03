@interface DisplayModeNavAction
- (DisplayModeNavAction)initWithShowDetails:(BOOL)details;
@end

@implementation DisplayModeNavAction

- (DisplayModeNavAction)initWithShowDetails:(BOOL)details
{
  v5.receiver = self;
  v5.super_class = DisplayModeNavAction;
  result = [(DisplayModeNavAction *)&v5 init];
  if (result)
  {
    result->_showDetails = details;
  }

  return result;
}

@end