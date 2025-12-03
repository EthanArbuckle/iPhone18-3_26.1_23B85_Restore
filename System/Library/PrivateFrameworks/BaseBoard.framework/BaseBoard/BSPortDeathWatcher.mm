@interface BSPortDeathWatcher
- (BSPortDeathWatcher)initWithPort:(unsigned int)port queue:(id)queue deathHandler:(id)handler;
- (BSPortDeathWatcher)initWithSendRight:(id)right queue:(id)queue deathHandler:(id)handler;
@end

@implementation BSPortDeathWatcher

- (BSPortDeathWatcher)initWithSendRight:(id)right queue:(id)queue deathHandler:(id)handler
{
  rightCopy = right;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = [(BSPortDeathSentinel *)self initWithSendRight:rightCopy];
  [(BSPortDeathSentinel *)v11 setQueue:queueCopy];
  [(BSPortDeathSentinel *)v11 activateWithHandler:handlerCopy];

  return v11;
}

- (BSPortDeathWatcher)initWithPort:(unsigned int)port queue:(id)queue deathHandler:(id)handler
{
  v6 = *&port;
  queueCopy = queue;
  handlerCopy = handler;
  v10 = [[BSMachPortSendRight alloc] initWithPort:v6];
  v11 = [(BSPortDeathWatcher *)self initWithSendRight:v10 queue:queueCopy deathHandler:handlerCopy];

  return v11;
}

@end