@interface BKDataBinding
- (BKDataBinding)initWithBinding:(id)a3 key:(id)a4 to:(id)a5 key:(id)a6 transmitInitialValue:(BOOL)a7;
- (NSObject)dstObj;
- (NSObject)srcObj;
- (id)description;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)unbind;
@end

@implementation BKDataBinding

- (BKDataBinding)initWithBinding:(id)a3 key:(id)a4 to:(id)a5 key:(id)a6 transmitInitialValue:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v22.receiver = self;
  v22.super_class = BKDataBinding;
  v16 = [(BKDataBinding *)&v22 init];
  v17 = v16;
  if (v16)
  {
    [(BKDataBinding *)v16 setSrcKey:v13];
    [(BKDataBinding *)v17 setDstKey:v15];
    [(BKDataBinding *)v17 setSrcObj:v12];
    [(BKDataBinding *)v17 setDstObj:v14];
    v18 = [(BKDataBinding *)v17 srcObj];
    v19 = [(BKDataBinding *)v17 srcKey];
    if (v7)
    {
      v20 = 5;
    }

    else
    {
      v20 = 1;
    }

    [v18 addObserver:v17 forKeyPath:v19 options:v20 context:off_100ACEC18];
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
  v3 = [(BKDataBinding *)self srcObj];
  v4 = [(BKDataBinding *)self srcKey];
  [v3 removeObserver:self forKeyPath:v4 context:off_100ACEC18];

  objc_storeWeak(&self->_srcObj, 0);

  objc_storeWeak(&self->_dstObj, 0);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_100ACEC18 == a6)
  {
    v7 = [(BKDataBinding *)self srcObj:a3];
    v8 = [(BKDataBinding *)self srcKey];
    v17 = [v7 valueForKey:v8];

    v9 = [(BKDataBinding *)self dstObj];
    v10 = [(BKDataBinding *)self dstKey];
    v11 = [v9 valueForKey:v10];

    if (v17 != v11 && ([v17 isEqual:v11] & 1) == 0)
    {
      v12 = [(BKDataBinding *)self dstObj];
      v13 = [(BKDataBinding *)self srcObj];
      v14 = [(BKDataBinding *)self srcKey];
      v15 = [v13 valueForKey:v14];
      v16 = [(BKDataBinding *)self dstKey];
      [v12 setValue:v15 forKey:v16];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = BKDataBinding;
    [(BKDataBinding *)&v18 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (id)description
{
  v3 = [(BKDataBinding *)self srcKey];
  v4 = [(BKDataBinding *)self dstKey];
  v5 = [(BKDataBinding *)self srcObj];
  v6 = [(BKDataBinding *)self dstObj];
  v7 = [NSString stringWithFormat:@"Binding: %@ to %@ for %@ and %@", v3, v4, v5, v6];

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