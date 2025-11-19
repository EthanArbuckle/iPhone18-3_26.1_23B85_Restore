@interface AVMetadataEnumerator
+ (id)metadataEnumeratorWithArray:(id)a3 key:(id)a4 keySpace:(id)a5 locale:(id)a6;
+ (id)metadataEnumeratorWithMetadataReader:(OpaqueFigMetadataReader *)a3;
- (AVMetadataEnumerator)initWithMetadataReader:(OpaqueFigMetadataReader *)a3 array:(id)a4 key:(id)a5 keySpace:(id)a6 locale:(id)a7;
- (id)nextObject;
- (void)_setArrayEnumerator:(id)a3;
- (void)_setKey:(id)a3;
- (void)_setKeySpace:(id)a3;
- (void)_setLocale:(id)a3;
- (void)_setMetadataReader:(OpaqueFigMetadataReader *)a3;
- (void)dealloc;
@end

@implementation AVMetadataEnumerator

+ (id)metadataEnumeratorWithMetadataReader:(OpaqueFigMetadataReader *)a3
{
  v3 = [[AVMetadataEnumerator alloc] initWithMetadataReader:a3];

  return v3;
}

+ (id)metadataEnumeratorWithArray:(id)a3 key:(id)a4 keySpace:(id)a5 locale:(id)a6
{
  v6 = [[AVMetadataEnumerator alloc] initWithArray:a3 key:a4 keySpace:a5 locale:a6];

  return v6;
}

- (AVMetadataEnumerator)initWithMetadataReader:(OpaqueFigMetadataReader *)a3 array:(id)a4 key:(id)a5 keySpace:(id)a6 locale:(id)a7
{
  v16.receiver = self;
  v16.super_class = AVMetadataEnumerator;
  v12 = [(AVMetadataEnumerator *)&v16 init];
  if (v12)
  {
    if (a3)
    {
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v13)
      {
        v14 = v13(a3, 0, 0);
        v12->_count = v14;
        if (v14 > 0)
        {
          [(AVMetadataEnumerator *)v12 _setMetadataReader:a3];
LABEL_9:
          [(AVMetadataEnumerator *)v12 _setKey:a5];
          [(AVMetadataEnumerator *)v12 _setKeySpace:a6];
          [(AVMetadataEnumerator *)v12 _setLocale:a7];
          return v12;
        }
      }

      else
      {
        v12->_count = 0;
      }
    }

    else if (a4)
    {
      -[AVMetadataEnumerator _setArrayEnumerator:](v12, "_setArrayEnumerator:", [a4 objectEnumerator]);
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

- (void)_setMetadataReader:(OpaqueFigMetadataReader *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  reader = self->_reader;
  if (reader)
  {
    CFRelease(reader);
  }

  self->_reader = a3;
}

- (void)_setArrayEnumerator:(id)a3
{
  v5 = a3;

  self->_arrayEnumerator = a3;
}

- (void)_setKey:(id)a3
{
  v5 = a3;

  self->_key = a3;
}

- (void)_setKeySpace:(id)a3
{
  v5 = a3;

  self->_keySpace = a3;
}

- (void)_setLocale:(id)a3
{
  v5 = a3;

  self->_locale = a3;
}

- (id)nextObject
{
  v3 = 0;
  while (1)
  {
    if (self->_reader)
    {
      index = self->_index;
      if (index < self->_count)
      {
        v3 = [[AVMetadataItem alloc] _initWithReader:self->_reader itemIndex:self->_index];
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
    if (!v3)
    {
      return v3;
    }

LABEL_7:
    key = self->_key;
    if (!key || [key isEqual:{objc_msgSend(v3, "key")}])
    {
      keySpace = self->_keySpace;
      if (!keySpace || -[NSString isEqualToString:](keySpace, "isEqualToString:", [v3 keySpace]))
      {
        locale = self->_locale;
        if (!locale || AVNSLocalesMatchAccordingToRFC4647FilteringRules(locale, [v3 locale]))
        {
          return v3;
        }
      }
    }
  }

  while (1)
  {
    v3 = [(NSEnumerator *)self->_arrayEnumerator nextObject];
    if (!v3)
    {
      return v3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }
}

@end