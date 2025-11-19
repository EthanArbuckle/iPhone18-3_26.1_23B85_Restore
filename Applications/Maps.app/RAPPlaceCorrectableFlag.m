@interface RAPPlaceCorrectableFlag
- (NSString)localizedTitle;
- (RAPPlaceCorrectableFlag)initWithKind:(int64_t)a3 originalValue:(BOOL)a4;
- (void)_invokeChangeHandlers;
- (void)addObserver:(id)a3 changeHandler:(id)a4;
- (void)revertCorrections;
- (void)setValue:(BOOL)a3;
@end

@implementation RAPPlaceCorrectableFlag

- (void)revertCorrections
{
  v3 = [(RAPPlaceCorrectableFlag *)self originalValue];

  [(RAPPlaceCorrectableFlag *)self setValue:v3];
}

- (void)setValue:(BOOL)a3
{
  if (self->_value != a3)
  {
    self->_value = a3;
    [(RAPPlaceCorrectableFlag *)self _invokeChangeHandlers];
  }
}

- (NSString)localizedTitle
{
  localizedTitle = self->_localizedTitle;
  if (!localizedTitle)
  {
    v4 = [(RAPPlaceCorrectableFlag *)self kind];
    if (v4 <= 0x15 && ((0x30FFFFu >> v4) & 1) != 0)
    {
      v5 = off_101624FB0[v4];
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

- (RAPPlaceCorrectableFlag)initWithKind:(int64_t)a3 originalValue:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = RAPPlaceCorrectableFlag;
  result = [(RAPPlaceCorrectableFlag *)&v7 init];
  if (result)
  {
    result->_kind = a3;
    result->_originalValue = a4;
    result->_value = a4;
  }

  return result;
}

- (void)_invokeChangeHandlers
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMapTable *)self->_observers keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_observers objectForKey:v8];
        (v9)[2](v9, self, v8);
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)a3 changeHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [v6 copy];
  [(NSMapTable *)observers setObject:v10 forKey:v11];
}

@end