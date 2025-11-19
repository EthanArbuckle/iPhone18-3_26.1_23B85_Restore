@interface _LSDataBackedPropertyList
- (BOOL)_getPropertyList:(id *)a3;
- (BOOL)_getValue:(id *)a3 forPropertyListKey:(id)a4;
- (_LSDataBackedPropertyList)initWithCoder:(id)a3;
- (_LSDataBackedPropertyList)initWithPropertyListData:(id)a3;
- (id)_plistHint;
- (id)copyWithZone:(_NSZone *)a3;
- (id)uncheckedObjectsForKeys:(id)a3;
- (void)detach;
- (void)encodeWithCoder:(id)a3;
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

- (_LSDataBackedPropertyList)initWithPropertyListData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _LSDataBackedPropertyList;
  v6 = [(_LSLazyPropertyList *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawPlistData, a3);
    plistHint = v7->_plistHint;
    v7->_plistHint = 0;
  }

  return v7;
}

- (id)uncheckedObjectsForKeys:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  rawPlistData = self->_rawPlistData;
  v6 = [(_LSDataBackedPropertyList *)self _plistHint];
  v7 = _LSPlistDataGetValuesForKeys(rawPlistData, v4, v6);

  v8 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (BOOL)_getPropertyList:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  rawPlistData = self->_rawPlistData;
  v6 = [(_LSDataBackedPropertyList *)self _plistHint];
  *a3 = _LSPlistDataGetDictionary(rawPlistData, v6);

  LOBYTE(a3) = *a3 != 0;
  os_unfair_lock_unlock(&self->_lock);
  return a3;
}

- (BOOL)_getValue:(id *)a3 forPropertyListKey:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  rawPlistData = self->_rawPlistData;
  v8 = [(_LSDataBackedPropertyList *)self _plistHint];
  *a3 = _LSPlistDataGetValueForKey(rawPlistData, v6, v8);

  LOBYTE(a3) = *a3 != 0;
  os_unfair_lock_unlock(&self->_lock);

  return a3;
}

- (void)prewarm
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "could not prewarm data backed property list: %d", buf, 8u);
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _LSDataBackedPropertyList;
  [(_LSLazyPropertyList *)&v5 encodeWithCoder:v4];
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeObject:self->_rawPlistData forKey:@"plistData"];
  os_unfair_lock_unlock(&self->_lock);
}

- (_LSDataBackedPropertyList)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _LSDataBackedPropertyList;
  v5 = [(_LSLazyPropertyList *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"plistData"];
    rawPlistData = v5->_rawPlistData;
    v5->_rawPlistData = v6;
    v8 = v6;

    plistHint = v5->_plistHint;
    v5->_plistHint = 0;
  }

  return v5;
}

@end