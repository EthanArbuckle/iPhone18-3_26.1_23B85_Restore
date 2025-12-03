@interface NSSQLBlockRequestContext
- (BOOL)executeRequestCore:(id *)core;
- (NSSQLBlockRequestContext)initWithBlock:(id)block context:(id)context sqlCore:(id)core;
- (void)dealloc;
@end

@implementation NSSQLBlockRequestContext

- (void)dealloc
{
  self->_workBlock = 0;
  v3.receiver = self;
  v3.super_class = NSSQLBlockRequestContext;
  [(NSSQLStoreRequestContext *)&v3 dealloc];
}

- (NSSQLBlockRequestContext)initWithBlock:(id)block context:(id)context sqlCore:(id)core
{
  v8.receiver = self;
  v8.super_class = NSSQLBlockRequestContext;
  v6 = [(NSSQLStoreRequestContext *)&v8 initWithRequest:0 context:context sqlCore:core];
  if (v6)
  {
    v6->_workBlock = [block copy];
  }

  return v6;
}

- (BOOL)executeRequestCore:(id *)core
{
  (*(self->_workBlock + 2))();
  if (core && *core)
  {
    objc_setProperty_nonatomic(self, v5, *core, 40);
  }

  return !self->super._exception && self->super._error == 0;
}

@end