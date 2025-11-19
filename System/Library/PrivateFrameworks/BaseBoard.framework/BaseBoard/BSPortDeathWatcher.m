@interface BSPortDeathWatcher
- (BSPortDeathWatcher)initWithPort:(unsigned int)a3 queue:(id)a4 deathHandler:(id)a5;
- (BSPortDeathWatcher)initWithSendRight:(id)a3 queue:(id)a4 deathHandler:(id)a5;
@end

@implementation BSPortDeathWatcher

- (BSPortDeathWatcher)initWithSendRight:(id)a3 queue:(id)a4 deathHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BSPortDeathSentinel *)self initWithSendRight:v8];
  [(BSPortDeathSentinel *)v11 setQueue:v9];
  [(BSPortDeathSentinel *)v11 activateWithHandler:v10];

  return v11;
}

- (BSPortDeathWatcher)initWithPort:(unsigned int)a3 queue:(id)a4 deathHandler:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  v10 = [[BSMachPortSendRight alloc] initWithPort:v6];
  v11 = [(BSPortDeathWatcher *)self initWithSendRight:v10 queue:v8 deathHandler:v9];

  return v11;
}

@end