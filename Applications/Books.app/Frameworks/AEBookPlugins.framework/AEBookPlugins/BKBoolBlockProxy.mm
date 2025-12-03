@interface BKBoolBlockProxy
- (BKBoolBlockProxy)initWithBlock:(id)block;
- (void)executeWithParam:(BOOL)param;
@end

@implementation BKBoolBlockProxy

- (BKBoolBlockProxy)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = BKBoolBlockProxy;
  v5 = [(BKBoolBlockProxy *)&v9 init];
  if (v5)
  {
    v6 = objc_retainBlock(blockCopy);
    work = v5->_work;
    v5->_work = v6;
  }

  return v5;
}

- (void)executeWithParam:(BOOL)param
{
  paramCopy = param;
  v4 = objc_retainBlock(self->_work);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, paramCopy);
    v4 = v5;
  }
}

@end