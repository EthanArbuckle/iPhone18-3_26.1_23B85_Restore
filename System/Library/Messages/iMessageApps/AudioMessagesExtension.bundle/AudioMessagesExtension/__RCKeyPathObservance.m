@interface __RCKeyPathObservance
- (NSObject)object;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)remove;
@end

@implementation __RCKeyPathObservance

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &unk_82458)
  {
    (*(self->_observer + 2))();
  }
}

- (void)remove
{
  WeakRetained = objc_loadWeakRetained(&self->_object);
  if (WeakRetained)
  {
    keyPaths = self->_keyPaths;
    if (keyPaths)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = keyPaths;
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          v9 = 0;
          do
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [WeakRetained removeObserver:self forKeyPath:*(*(&v12 + 1) + 8 * v9) context:{&unk_82458, v12}];
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }

      v10 = self->_keyPaths;
      self->_keyPaths = 0;

      observer = self->_observer;
      self->_observer = 0;
    }
  }
}

- (void)dealloc
{
  [(__RCKeyPathObservance *)self remove];
  v3.receiver = self;
  v3.super_class = __RCKeyPathObservance;
  [(__RCKeyPathObservance *)&v3 dealloc];
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end