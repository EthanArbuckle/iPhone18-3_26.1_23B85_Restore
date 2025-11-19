@interface PDFKVOObserver
- (PDFKVOObserver)initWithObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 block:(id)a6;
- (id)observedObject;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation PDFKVOObserver

- (PDFKVOObserver)initWithObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5 block:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = PDFKVOObserver;
  v13 = [(PDFKVOObserver *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_observedObject, v10);
    v15 = [v11 copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v15;

    v17 = [v12 copy];
    block = v14->_block;
    v14->_block = v17;

    [v10 addObserver:v14 forKeyPath:v14->_keyPath options:a5 context:0];
  }

  return v14;
}

- (void)dealloc
{
  v3 = [(PDFKVOObserver *)self observedObject];
  v4 = [(PDFKVOObserver *)self keyPath];
  [v3 removeObserver:self forKeyPath:v4];

  v5.receiver = self;
  v5.super_class = PDFKVOObserver;
  [(PDFKVOObserver *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v14 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(PDFKVOObserver *)self observedObject];

  if (v11 == v10)
  {
    v12 = [(PDFKVOObserver *)self keyPath];
    v13 = [v14 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_5;
    }

    v11 = [(PDFKVOObserver *)self block];
    (v11)[2](v11, v9);
  }

LABEL_5:
}

- (id)observedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_observedObject);

  return WeakRetained;
}

@end