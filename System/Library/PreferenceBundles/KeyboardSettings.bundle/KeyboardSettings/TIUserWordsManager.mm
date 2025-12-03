@interface TIUserWordsManager
- (NSArray)entries;
- (TIUserWordsManager)init;
- (id)addObserver:(id)observer;
- (void)addEntries:(id)entries removeEntries:(id)removeEntries withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)notifyObserversOfChange;
@end

@implementation TIUserWordsManager

- (TIUserWordsManager)init
{
  v5.receiver = self;
  v5.super_class = TIUserWordsManager;
  v2 = [(TIUserWordsManager *)&v5 init];
  if (v2)
  {
    v2->_textReplacementStore = objc_alloc_init(_KSTextReplacementClientStore);
    v2->_observers = +[NSMutableArray array];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_26BC4, KSTextReplacementDidChangeNotification, 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, KSTextReplacementDidChangeNotification, 0);

  v4.receiver = self;
  v4.super_class = TIUserWordsManager;
  [(TIUserWordsManager *)&v4 dealloc];
}

- (NSArray)entries
{
  result = self->_cache;
  if (!result)
  {
    [(TIUserWordsManager *)self setCache:[(_KSTextReplacementClientStore *)self->_textReplacementStore textReplacementEntries]];
    return self->_cache;
  }

  return result;
}

- (void)addEntries:(id)entries removeEntries:(id)removeEntries withCompletionHandler:(id)handler
{
  textReplacementStore = self->_textReplacementStore;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_26D64;
  v6[3] = &unk_498A0;
  v6[4] = self;
  v6[5] = handler;
  [(_KSTextReplacementClientStore *)textReplacementStore addEntries:entries removeEntries:removeEntries withCompletionHandler:v6];
}

- (void)notifyObserversOfChange
{
  [(TIUserWordsManager *)self setCache:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  observers = self->_observers;
  v4 = [(NSMutableArray *)observers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(observers);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))();
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)observers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)addObserver:(id)observer
{
  v4 = [observer copy];
  [(NSMutableArray *)self->_observers addObject:v4];

  return v4;
}

@end