@interface PDFKVOObserver
- (PDFKVOObserver)initWithObject:(id)object keyPath:(id)path options:(unint64_t)options block:(id)block;
- (id)observedObject;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation PDFKVOObserver

- (PDFKVOObserver)initWithObject:(id)object keyPath:(id)path options:(unint64_t)options block:(id)block
{
  objectCopy = object;
  pathCopy = path;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = PDFKVOObserver;
  v13 = [(PDFKVOObserver *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_observedObject, objectCopy);
    v15 = [pathCopy copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v15;

    v17 = [blockCopy copy];
    block = v14->_block;
    v14->_block = v17;

    [objectCopy addObserver:v14 forKeyPath:v14->_keyPath options:options context:0];
  }

  return v14;
}

- (void)dealloc
{
  observedObject = [(PDFKVOObserver *)self observedObject];
  keyPath = [(PDFKVOObserver *)self keyPath];
  [observedObject removeObserver:self forKeyPath:keyPath];

  v5.receiver = self;
  v5.super_class = PDFKVOObserver;
  [(PDFKVOObserver *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  objectCopy = object;
  observedObject = [(PDFKVOObserver *)self observedObject];

  if (observedObject == objectCopy)
  {
    keyPath = [(PDFKVOObserver *)self keyPath];
    v13 = [pathCopy isEqualToString:keyPath];

    if (!v13)
    {
      goto LABEL_5;
    }

    observedObject = [(PDFKVOObserver *)self block];
    (observedObject)[2](observedObject, changeCopy);
  }

LABEL_5:
}

- (id)observedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_observedObject);

  return WeakRetained;
}

@end