@interface VSObservance
- (VSObservance)init;
- (VSObservance)initWithObject:(id)object keyPath:(id)path options:(unint64_t)options;
- (VSObservanceDelegate)delegate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation VSObservance

- (VSObservance)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSObservance)initWithObject:(id)object keyPath:(id)path options:(unint64_t)options
{
  objectCopy = object;
  pathCopy = path;
  v10 = pathCopy;
  if (objectCopy)
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The object parameter must not be nil."];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPath parameter must not be nil."];
LABEL_3:
  v16.receiver = self;
  v16.super_class = VSObservance;
  v11 = [(VSObservance *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_object = objectCopy;
    v13 = [v10 copy];
    keyPath = v12->_keyPath;
    v12->_keyPath = v13;

    v12->_options = options;
  }

  return v12;
}

- (void)dealloc
{
  [(VSObservance *)self stopObserving];
  v3.receiver = self;
  v3.super_class = VSObservance;
  [(VSObservance *)&v3 dealloc];
}

- (void)startObserving
{
  if (![(VSObservance *)self isObserving])
  {
    object = [(VSObservance *)self object];
    keyPath = [(VSObservance *)self keyPath];
    options = [(VSObservance *)self options];
    [object addObserver:self forKeyPath:keyPath options:options context:kVSKeyValueObservingContext_GenericObservance];

    [(VSObservance *)self setObserving:1];
  }
}

- (void)stopObserving
{
  if ([(VSObservance *)self isObserving])
  {
    object = [(VSObservance *)self object];
    keyPath = [(VSObservance *)self keyPath];
    [object removeObserver:self forKeyPath:keyPath context:kVSKeyValueObservingContext_GenericObservance];

    [(VSObservance *)self setObserving:0];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (kVSKeyValueObservingContext_GenericObservance == context)
  {
    changeCopy = change;
    delegate = [(VSObservance *)self delegate];
    [delegate observeChange:changeCopy forObservance:self];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VSObservance;
    changeCopy2 = change;
    [(VSObservance *)&v13 observeValueForKeyPath:path ofObject:object change:changeCopy2 context:context];
  }
}

- (VSObservanceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end