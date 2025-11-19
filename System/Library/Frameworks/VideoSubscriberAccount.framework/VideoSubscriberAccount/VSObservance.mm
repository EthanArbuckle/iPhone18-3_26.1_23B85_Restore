@interface VSObservance
- (VSObservance)init;
- (VSObservance)initWithObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5;
- (VSObservanceDelegate)delegate;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

- (VSObservance)initWithObject:(id)a3 keyPath:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
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
    v11->_object = v8;
    v13 = [v10 copy];
    keyPath = v12->_keyPath;
    v12->_keyPath = v13;

    v12->_options = a5;
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
    v3 = [(VSObservance *)self object];
    v4 = [(VSObservance *)self keyPath];
    v5 = [(VSObservance *)self options];
    [v3 addObserver:self forKeyPath:v4 options:v5 context:kVSKeyValueObservingContext_GenericObservance];

    [(VSObservance *)self setObserving:1];
  }
}

- (void)stopObserving
{
  if ([(VSObservance *)self isObserving])
  {
    v3 = [(VSObservance *)self object];
    v4 = [(VSObservance *)self keyPath];
    [v3 removeObserver:self forKeyPath:v4 context:kVSKeyValueObservingContext_GenericObservance];

    [(VSObservance *)self setObserving:0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (kVSKeyValueObservingContext_GenericObservance == a6)
  {
    v11 = a5;
    v12 = [(VSObservance *)self delegate];
    [v12 observeChange:v11 forObservance:self];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VSObservance;
    v10 = a5;
    [(VSObservance *)&v13 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

- (VSObservanceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end