@interface RAPPlaceCorrectableString
- (BOOL)isEdited;
- (NSString)localizedTitle;
- (RAPPlaceCorrectableString)initWithKind:(int64_t)a3 originalValue:(id)a4;
- (void)_invokeChangeHandlers;
- (void)addObserver:(id)a3 changeHandler:(id)a4;
- (void)revertCorrections;
- (void)setValue:(id)a3;
@end

@implementation RAPPlaceCorrectableString

- (BOOL)isEdited
{
  v3 = [(RAPPlaceCorrectableString *)self value];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v10 = [(RAPPlaceCorrectableString *)self originalValue];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
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
  v3 = [(RAPPlaceCorrectableString *)self originalValue];
  [(RAPPlaceCorrectableString *)self setValue:v3];
}

- (void)setValue:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_value] & 1) == 0)
  {
    v4 = [v6 copy];
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
    v4 = [(RAPPlaceCorrectableString *)self kind];
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

- (RAPPlaceCorrectableString)initWithKind:(int64_t)a3 originalValue:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = RAPPlaceCorrectableString;
  v7 = [(RAPPlaceCorrectableString *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_kind = a3;
    v9 = [v6 copy];
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