@interface ADCommandCenterCurrentRequest
- (id)description;
- (void)setCurrentRequestCommand:(id)a3;
@end

@implementation ADCommandCenterCurrentRequest

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"command: %@ requestId:%@", self->_currentRequestCommand, self->_currentRequestId];

  return v2;
}

- (void)setCurrentRequestCommand:(id)a3
{
  objc_storeStrong(&self->_currentRequestCommand, a3);
  v7 = a3;
  v5 = [v7 aceId];
  currentRequestId = self->_currentRequestId;
  self->_currentRequestId = v5;
}

@end