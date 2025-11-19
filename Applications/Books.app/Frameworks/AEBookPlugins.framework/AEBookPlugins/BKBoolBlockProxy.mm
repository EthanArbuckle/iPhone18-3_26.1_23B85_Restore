@interface BKBoolBlockProxy
- (BKBoolBlockProxy)initWithBlock:(id)a3;
- (void)executeWithParam:(BOOL)a3;
@end

@implementation BKBoolBlockProxy

- (BKBoolBlockProxy)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BKBoolBlockProxy;
  v5 = [(BKBoolBlockProxy *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    work = v5->_work;
    v5->_work = v6;
  }

  return v5;
}

- (void)executeWithParam:(BOOL)a3
{
  v3 = a3;
  v4 = objc_retainBlock(self->_work);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, v3);
    v4 = v5;
  }
}

@end