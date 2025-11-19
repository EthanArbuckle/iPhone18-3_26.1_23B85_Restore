@interface NSSQLConnectionManager
- (BOOL)handleStoreRequest:(id)a3;
- (NSSQLConnectionManager)initWithSQLCore:(id)a3 priority:(unint64_t)a4 seedConnection:(id)a5;
- (void)dealloc;
- (void)disconnectAllConnections;
- (void)scheduleBarrierBlock:(id)a3;
- (void)scheduleConnectionsBarrier:(id)a3;
- (void)setExclusiveLockingMode:(BOOL)a3;
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

- (NSSQLConnectionManager)initWithSQLCore:(id)a3 priority:(unint64_t)a4 seedConnection:(id)a5
{
  v9.receiver = self;
  v9.super_class = NSSQLConnectionManager;
  v6 = [(NSSQLConnectionManager *)&v9 init:a3];
  v7 = v6;
  if (v6)
  {
    v6->_sqlCore = a3;
    v6->_filter = [&__block_literal_global_10 copy];
  }

  return v7;
}

- (void)disconnectAllConnections
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)setExclusiveLockingMode:(BOOL)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (BOOL)handleStoreRequest:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)scheduleBarrierBlock:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)scheduleConnectionsBarrier:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end