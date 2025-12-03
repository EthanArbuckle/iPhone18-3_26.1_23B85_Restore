@interface RAPPlaceCorrectableString
- (BOOL)isEdited;
- (NSString)localizedTitle;
- (RAPPlaceCorrectableString)initWithKind:(int64_t)kind originalValue:(id)value;
- (void)_invokeChangeHandlers;
- (void)addObserver:(id)observer changeHandler:(id)handler;
- (void)revertCorrections;
- (void)setValue:(id)value;
@end

@implementation RAPPlaceCorrectableString

- (BOOL)isEdited
{
  value = [(RAPPlaceCorrectableString *)self value];
  v4 = value;
  if (value)
  {
    v5 = value;
  }

  else
  {
    v5 = &stru_1016631F0;
  }

  v6 = v5;

  v7 = +[NSMutableCharacterSet whitespaceCharacterSet];
  v8 = +[NSCharacterSet controlCharacterSet];
  [v7 formUnionWithCharacterSet:v8];

  v9 = [(__CFString *)v6 stringByTrimmingCharactersInSet:v7];
  originalValue = [(RAPPlaceCorrectableString *)self originalValue];
  v11 = originalValue;
  if (originalValue)
  {
    v12 = originalValue;
  }

  else
  {
    v12 = &stru_1016631F0;
  }

  v13 = v12;

  v14 = [(__CFString *)v13 stringByTrimmingCharactersInSet:v7];

  LOBYTE(v13) = [v9 isEqual:v14];
  return v13 ^ 1;
}

- (void)revertCorrections
{
  originalValue = [(RAPPlaceCorrectableString *)self originalValue];
  [(RAPPlaceCorrectableString *)self setValue:originalValue];
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (([valueCopy isEqualToString:self->_value] & 1) == 0)
  {
    v4 = [valueCopy copy];
    value = self->_value;
    self->_value = v4;

    [(RAPPlaceCorrectableString *)self _invokeChangeHandlers];
  }
}

- (NSString)localizedTitle
{
  localizedTitle = self->_localizedTitle;
  if (!localizedTitle)
  {
    kind = [(RAPPlaceCorrectableString *)self kind];
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

- (RAPPlaceCorrectableString)initWithKind:(int64_t)kind originalValue:(id)value
{
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = RAPPlaceCorrectableString;
  v7 = [(RAPPlaceCorrectableString *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_kind = kind;
    v9 = [valueCopy copy];
    originalValue = v8->_originalValue;
    v8->_originalValue = v9;

    v11 = [(NSString *)v8->_originalValue copy];
    value = v8->_value;
    v8->_value = v11;
  }

  return v8;
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