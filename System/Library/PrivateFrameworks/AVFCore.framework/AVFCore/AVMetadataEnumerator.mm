@interface AVMetadataEnumerator
+ (id)metadataEnumeratorWithArray:(id)array key:(id)key keySpace:(id)space locale:(id)locale;
+ (id)metadataEnumeratorWithMetadataReader:(OpaqueFigMetadataReader *)reader;
- (AVMetadataEnumerator)initWithMetadataReader:(OpaqueFigMetadataReader *)reader array:(id)array key:(id)key keySpace:(id)space locale:(id)locale;
- (id)nextObject;
- (void)_setArrayEnumerator:(id)enumerator;
- (void)_setKey:(id)key;
- (void)_setKeySpace:(id)space;
- (void)_setLocale:(id)locale;
- (void)_setMetadataReader:(OpaqueFigMetadataReader *)reader;
- (void)dealloc;
@end

@implementation AVMetadataEnumerator

+ (id)metadataEnumeratorWithMetadataReader:(OpaqueFigMetadataReader *)reader
{
  v3 = [[AVMetadataEnumerator alloc] initWithMetadataReader:reader];

  return v3;
}

+ (id)metadataEnumeratorWithArray:(id)array key:(id)key keySpace:(id)space locale:(id)locale
{
  v6 = [[AVMetadataEnumerator alloc] initWithArray:array key:key keySpace:space locale:locale];

  return v6;
}

- (AVMetadataEnumerator)initWithMetadataReader:(OpaqueFigMetadataReader *)reader array:(id)array key:(id)key keySpace:(id)space locale:(id)locale
{
  v16.receiver = self;
  v16.super_class = AVMetadataEnumerator;
  v12 = [(AVMetadataEnumerator *)&v16 init];
  if (v12)
  {
    if (reader)
    {
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v13)
      {
        v14 = v13(reader, 0, 0);
        v12->_count = v14;
        if (v14 > 0)
        {
          [(AVMetadataEnumerator *)v12 _setMetadataReader:reader];
LABEL_9:
          [(AVMetadataEnumerator *)v12 _setKey:key];
          [(AVMetadataEnumerator *)v12 _setKeySpace:space];
          [(AVMetadataEnumerator *)v12 _setLocale:locale];
          return v12;
        }
      }

      else
      {
        v12->_count = 0;
      }
    }

    else if (array)
    {
      -[AVMetadataEnumerator _setArrayEnumerator:](v12, "_setArrayEnumerator:", [array objectEnumerator]);
      goto LABEL_9;
    }

    return 0;
  }

  return v12;
}

- (void)dealloc
{
  [(AVMetadataEnumerator *)self _setKey:0];
  [(AVMetadataEnumerator *)self _setKeySpace:0];
  [(AVMetadataEnumerator *)self _setLocale:0];
  [(AVMetadataEnumerator *)self _setArrayEnumerator:0];
  [(AVMetadataEnumerator *)self _setMetadataReader:0];
  v3.receiver = self;
  v3.super_class = AVMetadataEnumerator;
  [(AVMetadataEnumerator *)&v3 dealloc];
}

- (void)_setMetadataReader:(OpaqueFigMetadataReader *)reader
{
  if (reader)
  {
    CFRetain(reader);
  }

  reader = self->_reader;
  if (reader)
  {
    CFRelease(reader);
  }

  self->_reader = reader;
}

- (void)_setArrayEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;

  self->_arrayEnumerator = enumerator;
}

- (void)_setKey:(id)key
{
  keyCopy = key;

  self->_key = key;
}

- (void)_setKeySpace:(id)space
{
  spaceCopy = space;

  self->_keySpace = space;
}

- (void)_setLocale:(id)locale
{
  localeCopy = locale;

  self->_locale = locale;
}

- (id)nextObject
{
  nextObject = 0;
  while (1)
  {
    if (self->_reader)
    {
      index = self->_index;
      if (index < self->_count)
      {
        nextObject = [[AVMetadataItem alloc] _initWithReader:self->_reader itemIndex:self->_index];
        index = self->_index;
      }

      self->_index = index + 1;
      goto LABEL_6;
    }

    if (self->_arrayEnumerator)
    {
      break;
    }

LABEL_6:
    if (!nextObject)
    {
      return nextObject;
    }

LABEL_7:
    key = self->_key;
    if (!key || [key isEqual:{objc_msgSend(nextObject, "key")}])
    {
      keySpace = self->_keySpace;
      if (!keySpace || -[NSString isEqualToString:](keySpace, "isEqualToString:", [nextObject keySpace]))
      {
        locale = self->_locale;
        if (!locale || AVNSLocalesMatchAccordingToRFC4647FilteringRules(locale, [nextObject locale]))
        {
          return nextObject;
        }
      }
    }
  }

  while (1)
  {
    nextObject = [(NSEnumerator *)self->_arrayEnumerator nextObject];
    if (!nextObject)
    {
      return nextObject;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }
}

@end