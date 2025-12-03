@interface NSListFormatter
+ (NSString)localizedStringByJoiningStrings:(NSArray *)strings;
- (NSListFormatter)init;
- (NSListFormatter)initWithLocale:(id)locale;
- (NSLocale)locale;
- (NSString)stringForObjectValue:(id)obj;
- (__CFListFormatter)_listFormatter;
- (id)_stringFromStringArray:(id)array;
- (void)dealloc;
- (void)setLocale:(NSLocale *)locale;
@end

@implementation NSListFormatter

- (__CFListFormatter)_listFormatter
{
  result = self->_listFormatter;
  if (!result)
  {
    [(NSListFormatter *)self locale];
    result = _CFListFormatterCreate();
    self->_listFormatter = result;
  }

  return result;
}

- (NSLocale)locale
{
  result = self->_locale;
  if (!result)
  {
    result = [objc_msgSend(MEMORY[0x1E695DF58] "autoupdatingCurrentLocale")];
    self->_locale = result;
  }

  return result;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  listFormatter = self->_listFormatter;
  if (listFormatter)
  {
    CFRelease(listFormatter);
  }

  v4.receiver = self;
  v4.super_class = NSListFormatter;
  [(NSListFormatter *)&v4 dealloc];
}

- (NSListFormatter)init
{
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];

  return [(NSListFormatter *)self initWithLocale:autoupdatingCurrentLocale];
}

- (NSListFormatter)initWithLocale:(id)locale
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSListFormatter;
  v4 = [(NSListFormatter *)&v6 init];
  if (v4)
  {
    v4->_locale = [locale copy];
  }

  return v4;
}

- (void)setLocale:(NSLocale *)locale
{
  v3 = self->_locale;
  if (v3 != locale)
  {
    self->_locale = [(NSLocale *)locale copy];

    listFormatter = self->_listFormatter;
    if (listFormatter)
    {
      CFRelease(listFormatter);
      self->_listFormatter = 0;
    }
  }
}

- (NSString)stringForObjectValue:(id)obj
{
  v20 = *MEMORY[0x1E69E9840];
  if (!obj)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  locale = [(NSListFormatter *)self locale];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSFormatter *)self->_itemFormatter stringForObjectValue:v10];
        if (!v11 && ((objc_opt_respondsToSelector() & 1) == 0 || (v11 = [v10 descriptionWithLocale:locale]) == 0) && ((objc_opt_respondsToSelector() & 1) == 0 || (v11 = objc_msgSend(v10, "localizedDescription")) == 0))
        {
          v11 = [v10 description];
          if (!v11)
          {
            v12 = 0;
            goto LABEL_19;
          }
        }

        [v5 addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = [(NSListFormatter *)self _stringFromStringArray:v5];
LABEL_19:

  return v12;
}

- (id)_stringFromStringArray:(id)array
{
  [(NSListFormatter *)self _listFormatter];
  StringByJoiningStrings = _CFListFormatterCreateStringByJoiningStrings();

  return StringByJoiningStrings;
}

+ (NSString)localizedStringByJoiningStrings:(NSArray *)strings
{
  v4 = -[NSListFormatter initWithLocale:]([NSListFormatter alloc], "initWithLocale:", [MEMORY[0x1E695DF58] currentLocale]);
  v5 = [(NSListFormatter *)v4 _stringFromStringArray:strings];

  return v5;
}

@end