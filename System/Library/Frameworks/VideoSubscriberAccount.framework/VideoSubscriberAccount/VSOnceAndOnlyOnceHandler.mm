@interface VSOnceAndOnlyOnceHandler
- (void)dealloc;
- (void)invoke;
@end

@implementation VSOnceAndOnlyOnceHandler

- (void)dealloc
{
  v4 = 1;
  atomic_compare_exchange_strong(&self->_counter, &v4, 2u);
  if (v4 == 1)
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = VSOnceAndOnlyOnceHandler;
    [(VSOnceAndOnlyOnceHandler *)&v5 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)invoke
{
  v3 = 0;
  atomic_compare_exchange_strong(&self->_counter, &v3, 1u);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v4 = [(VSOnceAndOnlyOnceHandler *)self block];
    v4[2]();
  }
}

@end