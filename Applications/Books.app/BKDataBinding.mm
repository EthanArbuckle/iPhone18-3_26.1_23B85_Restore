@interface BKDataBinding
- (BKDataBinding)initWithBinding:(id)binding key:(id)key to:(id)to key:(id)a6 transmitInitialValue:(BOOL)value;
- (NSObject)dstObj;
- (NSObject)srcObj;
- (id)description;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)unbind;
@end

@implementation BKDataBinding

- (BKDataBinding)initWithBinding:(id)binding key:(id)key to:(id)to key:(id)a6 transmitInitialValue:(BOOL)value
{
  valueCopy = value;
  bindingCopy = binding;
  keyCopy = key;
  toCopy = to;
  v15 = a6;
  v22.receiver = self;
  v22.super_class = BKDataBinding;
  v16 = [(BKDataBinding *)&v22 init];
  v17 = v16;
  if (v16)
  {
    [(BKDataBinding *)v16 setSrcKey:keyCopy];
    [(BKDataBinding *)v17 setDstKey:v15];
    [(BKDataBinding *)v17 setSrcObj:bindingCopy];
    [(BKDataBinding *)v17 setDstObj:toCopy];
    srcObj = [(BKDataBinding *)v17 srcObj];
    srcKey = [(BKDataBinding *)v17 srcKey];
    if (valueCopy)
    {
      v20 = 5;
    }

    else
    {
      v20 = 1;
    }

    [srcObj addObserver:v17 forKeyPath:srcKey options:v20 context:off_100ACEC18];
  }

  return v17;
}

- (void)dealloc
{
  [(BKDataBinding *)self unbind];
  v3.receiver = self;
  v3.super_class = BKDataBinding;
  [(BKDataBinding *)&v3 dealloc];
}

- (void)unbind
{
  srcObj = [(BKDataBinding *)self srcObj];
  srcKey = [(BKDataBinding *)self srcKey];
  [srcObj removeObserver:self forKeyPath:srcKey context:off_100ACEC18];

  objc_storeWeak(&self->_srcObj, 0);

  objc_storeWeak(&self->_dstObj, 0);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_100ACEC18 == context)
  {
    v7 = [(BKDataBinding *)self srcObj:path];
    srcKey = [(BKDataBinding *)self srcKey];
    v17 = [v7 valueForKey:srcKey];

    dstObj = [(BKDataBinding *)self dstObj];
    dstKey = [(BKDataBinding *)self dstKey];
    v11 = [dstObj valueForKey:dstKey];

    if (v17 != v11 && ([v17 isEqual:v11] & 1) == 0)
    {
      dstObj2 = [(BKDataBinding *)self dstObj];
      srcObj = [(BKDataBinding *)self srcObj];
      srcKey2 = [(BKDataBinding *)self srcKey];
      v15 = [srcObj valueForKey:srcKey2];
      dstKey2 = [(BKDataBinding *)self dstKey];
      [dstObj2 setValue:v15 forKey:dstKey2];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = BKDataBinding;
    [(BKDataBinding *)&v18 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)description
{
  srcKey = [(BKDataBinding *)self srcKey];
  dstKey = [(BKDataBinding *)self dstKey];
  srcObj = [(BKDataBinding *)self srcObj];
  dstObj = [(BKDataBinding *)self dstObj];
  v7 = [NSString stringWithFormat:@"Binding: %@ to %@ for %@ and %@", srcKey, dstKey, srcObj, dstObj];

  return v7;
}

- (NSObject)srcObj
{
  WeakRetained = objc_loadWeakRetained(&self->_srcObj);

  return WeakRetained;
}

- (NSObject)dstObj
{
  WeakRetained = objc_loadWeakRetained(&self->_dstObj);

  return WeakRetained;
}

@end