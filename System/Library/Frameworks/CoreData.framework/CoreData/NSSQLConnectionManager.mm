@interface NSSQLConnectionManager
- (BOOL)handleStoreRequest:(id)request;
- (NSSQLConnectionManager)initWithSQLCore:(id)core priority:(unint64_t)priority seedConnection:(id)connection;
- (void)dealloc;
- (void)disconnectAllConnections;
- (void)scheduleBarrierBlock:(id)block;
- (void)scheduleConnectionsBarrier:(id)barrier;
- (void)setExclusiveLockingMode:(BOOL)mode;
@end

@implementation NSSQLConnectionManager

- (void)dealloc
{
  self->_sqlCore = 0;
  self->_filter = 0;
  v3.receiver = self;
  v3.super_class = NSSQLConnectionManager;
  [(NSSQLConnectionManager *)&v3 dealloc];
}

- (NSSQLConnectionManager)initWithSQLCore:(id)core priority:(unint64_t)priority seedConnection:(id)connection
{
  v9.receiver = self;
  v9.super_class = NSSQLConnectionManager;
  v6 = [(NSSQLConnectionManager *)&v9 init:core];
  v7 = v6;
  if (v6)
  {
    v6->_sqlCore = core;
    v6->_filter = [&__block_literal_global_10 copy];
  }

  return v7;
}

- (void)disconnectAllConnections
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)setExclusiveLockingMode:(BOOL)mode
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (BOOL)handleStoreRequest:(id)request
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)scheduleBarrierBlock:(id)block
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)scheduleConnectionsBarrier:(id)barrier
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end