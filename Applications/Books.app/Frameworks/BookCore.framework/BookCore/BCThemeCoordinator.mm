@interface BCThemeCoordinator
+ (BCThemeCoordinator)shared;
- (BCThemeCoordinator)init;
- (NSArray)observers;
- (void)addObserver:(id)observer;
- (void)observer:(id)observer didChangeFont:(id)font;
- (void)observer:(id)observer didChangeLayout:(unint64_t)layout;
- (void)observer:(id)observer didChangeStyle:(unint64_t)style;
- (void)observerDidDecreaseFontSize:(id)size;
- (void)observerDidIncreaseFontSize:(id)size;
- (void)removeObserver:(id)observer;
@end

@implementation BCThemeCoordinator

+ (BCThemeCoordinator)shared
{
  if (qword_3421F0 != -1)
  {
    sub_1E6234();
  }

  v3 = qword_3421E8;

  return v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observersHash = [(BCThemeCoordinator *)self observersHash];
  [observersHash addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observersHash = [(BCThemeCoordinator *)self observersHash];
  [observersHash removeObject:observerCopy];
}

- (NSArray)observers
{
  observersHash = [(BCThemeCoordinator *)self observersHash];
  allObjects = [observersHash allObjects];

  return allObjects;
}

- (void)observer:(id)observer didChangeFont:(id)font
{
  observerCopy = observer;
  fontCopy = font;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(BCThemeCoordinator *)self observers];
  v9 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(observers);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if ((objc_opt_respondsToSelector() & 1) != 0 && v13 != observerCopy)
        {
          [v13 coordinator:self observer:observerCopy didChangeFont:fontCopy];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)observerDidIncreaseFontSize:(id)size
{
  sizeCopy = size;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(BCThemeCoordinator *)self observers];
  v6 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if ((objc_opt_respondsToSelector() & 1) != 0 && v10 != sizeCopy)
        {
          [v10 coordinator:self observerDidIncreaseFontSize:sizeCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)observerDidDecreaseFontSize:(id)size
{
  sizeCopy = size;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(BCThemeCoordinator *)self observers];
  v6 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if ((objc_opt_respondsToSelector() & 1) != 0 && v10 != sizeCopy)
        {
          [v10 coordinator:self observerDidDecreaseFontSize:sizeCopy];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)observer:(id)observer didChangeStyle:(unint64_t)style
{
  observerCopy = observer;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(BCThemeCoordinator *)self observers];
  v8 = [observers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(observers);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if ((objc_opt_respondsToSelector() & 1) != 0 && v12 != observerCopy)
        {
          [v12 coordinator:self observer:observerCopy didChangeStyle:style];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [observers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)observer:(id)observer didChangeLayout:(unint64_t)layout
{
  observerCopy = observer;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(BCThemeCoordinator *)self observers];
  v8 = [observers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(observers);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if ((objc_opt_respondsToSelector() & 1) != 0 && v12 != observerCopy)
        {
          [v12 coordinator:self observer:observerCopy didChangeLayout:layout];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [observers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BCThemeCoordinator)init
{
  v6.receiver = self;
  v6.super_class = BCThemeCoordinator;
  v2 = [(BCThemeCoordinator *)&v6 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    observersHash = v2->_observersHash;
    v2->_observersHash = v3;
  }

  return v2;
}

@end