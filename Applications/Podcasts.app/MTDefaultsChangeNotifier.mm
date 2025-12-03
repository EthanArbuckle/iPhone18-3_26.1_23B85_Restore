@interface MTDefaultsChangeNotifier
- (MTDefaultsChangeNotifier)initWithProperties:(id)properties defaults:(id)defaults;
- (void)_defaultsChanged;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)start;
- (void)stop;
@end

@implementation MTDefaultsChangeNotifier

- (void)start
{
  if (![(MTDefaultsChangeNotifier *)self isRunning])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    properties = [(MTDictionaryDiff *)self properties];
    v4 = [properties countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(properties);
          }

          [(NSUserDefaults *)self->_defaults addObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7) options:0 context:self];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [properties countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(MTDefaultsChangeNotifier *)self setRunning:1];
    [(MTDefaultsChangeNotifier *)self _defaultsChanged];
  }
}

- (void)_defaultsChanged
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dictionaryRepresentation = [(NSUserDefaults *)selfCopy->_defaults dictionaryRepresentation];
  v4.receiver = selfCopy;
  v4.super_class = MTDefaultsChangeNotifier;
  [(MTDictionaryDiff *)&v4 setDictionary:dictionaryRepresentation];

  objc_sync_exit(selfCopy);
}

- (MTDefaultsChangeNotifier)initWithProperties:(id)properties defaults:(id)defaults
{
  defaultsCopy = defaults;
  v11.receiver = self;
  v11.super_class = MTDefaultsChangeNotifier;
  v8 = [(MTDictionaryDiff *)&v11 initWithProperties:properties];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_defaults, defaults);
  }

  return v9;
}

- (void)dealloc
{
  [(MTDefaultsChangeNotifier *)self stop];
  v3.receiver = self;
  v3.super_class = MTDefaultsChangeNotifier;
  [(MTDefaultsChangeNotifier *)&v3 dealloc];
}

- (void)stop
{
  if ([(MTDefaultsChangeNotifier *)self isRunning])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    properties = [(MTDictionaryDiff *)self properties];
    v4 = [properties countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(properties);
          }

          [(NSUserDefaults *)self->_defaults removeObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7) context:self];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [properties countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(MTDefaultsChangeNotifier *)self setRunning:0];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == self)
  {
    [(MTDefaultsChangeNotifier *)self _defaultsChanged:path];
  }
}

@end