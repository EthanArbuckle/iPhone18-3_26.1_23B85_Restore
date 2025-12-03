@interface _LSDataBackedPropertyList
- (BOOL)_getPropertyList:(id *)list;
- (BOOL)_getValue:(id *)value forPropertyListKey:(id)key;
- (_LSDataBackedPropertyList)initWithCoder:(id)coder;
- (_LSDataBackedPropertyList)initWithPropertyListData:(id)data;
- (id)_plistHint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)uncheckedObjectsForKeys:(id)keys;
- (void)detach;
- (void)encodeWithCoder:(id)coder;
- (void)prewarm;
@end

@implementation _LSDataBackedPropertyList

- (id)_plistHint
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = self->_plistHint;
  if (!v3)
  {
    v4 = self->_rawPlistData;
    v5 = _LSPlistDataGetHint(v4);
    plistHint = self->_plistHint;
    self->_plistHint = v5;

    v3 = self->_plistHint;
  }

  return v3;
}

- (void)detach
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSData *)self->_rawPlistData copy];
  rawPlistData = self->_rawPlistData;
  self->_rawPlistData = v3;

  os_unfair_lock_unlock(&self->_lock);
}

- (_LSDataBackedPropertyList)initWithPropertyListData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = _LSDataBackedPropertyList;
  v6 = [(_LSLazyPropertyList *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawPlistData, data);
    plistHint = v7->_plistHint;
    v7->_plistHint = 0;
  }

  return v7;
}

- (id)uncheckedObjectsForKeys:(id)keys
{
  keysCopy = keys;
  os_unfair_lock_lock(&self->_lock);
  rawPlistData = self->_rawPlistData;
  _plistHint = [(_LSDataBackedPropertyList *)self _plistHint];
  v7 = _LSPlistDataGetValuesForKeys(rawPlistData, keysCopy, _plistHint);

  v8 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (BOOL)_getPropertyList:(id *)list
{
  os_unfair_lock_lock(&self->_lock);
  rawPlistData = self->_rawPlistData;
  _plistHint = [(_LSDataBackedPropertyList *)self _plistHint];
  *list = _LSPlistDataGetDictionary(rawPlistData, _plistHint);

  LOBYTE(list) = *list != 0;
  os_unfair_lock_unlock(&self->_lock);
  return list;
}

- (BOOL)_getValue:(id *)value forPropertyListKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  rawPlistData = self->_rawPlistData;
  _plistHint = [(_LSDataBackedPropertyList *)self _plistHint];
  *value = _LSPlistDataGetValueForKey(rawPlistData, keyCopy, _plistHint);

  LOBYTE(value) = *value != 0;
  os_unfair_lock_unlock(&self->_lock);

  return value;
}

- (void)prewarm
{
  v3 = *self;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "could not prewarm data backed property list: %d", buf, 8u);
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_lock);
  v4 = [_LSDataBackedPropertyList alloc];
  v5 = [(NSData *)self->_rawPlistData copy];
  v6 = [(_LSDataBackedPropertyList *)v4 initWithPropertyListData:v5];

  if (v6)
  {
    v7 = _LSPlistHintCopy(self->_plistHint);
    plistHint = v6->_plistHint;
    v6->_plistHint = v7;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _LSDataBackedPropertyList;
  [(_LSLazyPropertyList *)&v5 encodeWithCoder:coderCopy];
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeObject:self->_rawPlistData forKey:@"plistData"];
  os_unfair_lock_unlock(&self->_lock);
}

- (_LSDataBackedPropertyList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _LSDataBackedPropertyList;
  v5 = [(_LSLazyPropertyList *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"plistData"];
    rawPlistData = v5->_rawPlistData;
    v5->_rawPlistData = v6;
    v8 = v6;

    plistHint = v5->_plistHint;
    v5->_plistHint = 0;
  }

  return v5;
}

@end