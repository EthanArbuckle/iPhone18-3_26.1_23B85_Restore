@interface THTextWrapCookie
- (THTextWrapCookie)init;
- (void)addFloatingWrappable:(id)wrappable;
- (void)dealloc;
@end

@implementation THTextWrapCookie

- (THTextWrapCookie)init
{
  v4.receiver = self;
  v4.super_class = THTextWrapCookie;
  v2 = [(THTextWrapCookie *)&v4 init];
  if (v2)
  {
    v2->_floatingWrappables = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THTextWrapCookie;
  [(THTextWrapCookie *)&v3 dealloc];
}

- (void)addFloatingWrappable:(id)wrappable
{
  if ([wrappable wrapType])
  {
    floatingWrappables = self->_floatingWrappables;

    [(NSMutableArray *)floatingWrappables addObject:wrappable];
  }
}

@end