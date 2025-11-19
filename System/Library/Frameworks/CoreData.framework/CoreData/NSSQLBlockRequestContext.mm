@interface NSSQLBlockRequestContext
- (BOOL)executeRequestCore:(id *)a3;
- (NSSQLBlockRequestContext)initWithBlock:(id)a3 context:(id)a4 sqlCore:(id)a5;
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

- (NSSQLBlockRequestContext)initWithBlock:(id)a3 context:(id)a4 sqlCore:(id)a5
{
  v8.receiver = self;
  v8.super_class = NSSQLBlockRequestContext;
  v6 = [(NSSQLStoreRequestContext *)&v8 initWithRequest:0 context:a4 sqlCore:a5];
  if (v6)
  {
    v6->_workBlock = [a3 copy];
  }

  return v6;
}

- (BOOL)executeRequestCore:(id *)a3
{
  (*(self->_workBlock + 2))();
  if (a3 && *a3)
  {
    objc_setProperty_nonatomic(self, v5, *a3, 40);
  }

  return !self->super._exception && self->super._error == 0;
}

@end