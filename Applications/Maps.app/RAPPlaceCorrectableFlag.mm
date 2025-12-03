@interface RAPPlaceCorrectableFlag
- (NSString)localizedTitle;
- (RAPPlaceCorrectableFlag)initWithKind:(int64_t)kind originalValue:(BOOL)value;
- (void)_invokeChangeHandlers;
- (void)addObserver:(id)observer changeHandler:(id)handler;
- (void)revertCorrections;
- (void)setValue:(BOOL)value;
@end

@implementation RAPPlaceCorrectableFlag

- (void)revertCorrections
{
  originalValue = [(RAPPlaceCorrectableFlag *)self originalValue];

  [(RAPPlaceCorrectableFlag *)self setValue:originalValue];
}

- (void)setValue:(BOOL)value
{
  if (self->_value != value)
  {
    self->_value = value;
    [(RAPPlaceCorrectableFlag *)self _invokeChangeHandlers];
  }
}

- (NSString)localizedTitle
{
  localizedTitle = self->_localizedTitle;
  if (!localizedTitle)
  {
    kind = [(RAPPlaceCorrectableFlag *)self kind];
    if (kind <= 0x15 && ((0x30FFFFu >> kind) & 1) != 0)
    {
      v5 = off_101624FB0[kind];
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:v5 value:@"localized string not found" table:0];
    }

    else
    {
      v7 = 0;
    }

    v8 = self->_localizedTitle;
    self->_localizedTitle = v7;

    localizedTitle = self->_localizedTitle;
  }

  return localizedTitle;
}

- (RAPPlaceCorrectableFlag)initWithKind:(int64_t)kind originalValue:(BOOL)value
{
  v7.receiver = self;
  v7.super_class = RAPPlaceCorrectableFlag;
  result = [(RAPPlaceCorrectableFlag *)&v7 init];
  if (result)
  {
    result->_kind = kind;
    result->_originalValue = value;
    result->_value = value;
  }

  return result;
}

- (void)_invokeChangeHandlers
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyEnumerator = [(NSMapTable *)self->_observers keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_observers objectForKey:v8];
        (v9)[2](v9, self, v8);
      }

      v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)observer changeHandler:(id)handler
{
  observerCopy = observer;
  handlerCopy = handler;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [handlerCopy copy];
  [(NSMapTable *)observers setObject:v10 forKey:observerCopy];
}

@end