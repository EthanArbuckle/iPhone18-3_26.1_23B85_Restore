@interface ADCommandCenterCurrentRequest
- (id)description;
- (void)setCurrentRequestCommand:(id)command;
@end

@implementation ADCommandCenterCurrentRequest

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"command: %@ requestId:%@", self->_currentRequestCommand, self->_currentRequestId];

  return v2;
}

- (void)setCurrentRequestCommand:(id)command
{
  objc_storeStrong(&self->_currentRequestCommand, command);
  commandCopy = command;
  aceId = [commandCopy aceId];
  currentRequestId = self->_currentRequestId;
  self->_currentRequestId = aceId;
}

@end