@interface APKKeyValueObserver
- (APKKeyValueObserver)initWithObservedObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 changeHandler:(id)a6;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation APKKeyValueObserver

- (APKKeyValueObserver)initWithObservedObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 changeHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = APKKeyValueObserver;
  v14 = [(APKKeyValueObserver *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_observeredObject, a3);
    objc_storeStrong(&v15->_keyPath, a4);
    v15->_options = a5;
    v16 = _Block_copy(v13);
    changeHandler = v15->_changeHandler;
    v15->_changeHandler = v16;

    [v15->_observeredObject addObserver:v15 forKeyPath:v12 options:a5 context:v15];
  }

  return v15;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v14 = a3;
  v9 = a4;
  v10 = [(APKKeyValueObserver *)self observeredObject];

  if (v10 != v9)
  {
    goto LABEL_2;
  }

  v11 = [(APKKeyValueObserver *)self keyPath];
  v12 = [v14 isEqualToString:v11];

  if (a6 == self)
  {
    if (v12)
    {
      v13 = [(APKKeyValueObserver *)self changeHandler];

      if (v13)
      {
        v10 = [(APKKeyValueObserver *)self changeHandler];
        v10[2]();
LABEL_2:
      }
    }
  }
}

- (void)invalidate
{
  v3 = [(APKKeyValueObserver *)self observeredObject];
  v4 = [(APKKeyValueObserver *)self keyPath];
  [v3 removeObserver:self forKeyPath:v4];

  observeredObject = self->_observeredObject;
  self->_observeredObject = 0;

  changeHandler = self->_changeHandler;
  self->_changeHandler = 0;
}

- (void)dealloc
{
  [(APKKeyValueObserver *)self invalidate];
  v3.receiver = self;
  v3.super_class = APKKeyValueObserver;
  [(APKKeyValueObserver *)&v3 dealloc];
}

@end