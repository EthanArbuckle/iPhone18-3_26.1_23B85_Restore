@interface GCControllerElement
- (BOOL)_commitPendingValueOnQueue:(id)a3;
- (BOOL)_setPendingValueIfChanged:(float)a3;
- (GCControllerElement)collection;
- (GCControllerElement)init;
- (GCDevice)device;
- (NSSet)aliases;
- (NSString)localizedName;
- (NSString)unmappedLocalizedName;
- (void)_setPendingValue:(float)a3;
- (void)setAliases:(id)a3;
- (void)setDevice:(id)a3;
- (void)setPrimaryAlias:(id)a3;
- (void)setUnmappedNameLocalizationKey:(id)a3;
- (void)setUnmappedSfSymbolsName:(NSString *)unmappedSfSymbolsName;
@end

@implementation GCControllerElement

- (GCControllerElement)init
{
  v6.receiver = self;
  v6.super_class = GCControllerElement;
  v2 = [(GCControllerElement *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    aliases = v2->_aliases;
    v2->_aliases = v3;
  }

  return v2;
}

- (void)setDevice:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_device);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_device, obj);
    v6 = objc_loadWeakRetained(&self->_collection);
    v5 = obj;
    if (v6)
    {
      v7 = v6;
      v8 = objc_loadWeakRetained(&self->_collection);

      v5 = obj;
      if (v8 != self)
      {
        v9 = objc_loadWeakRetained(&self->_collection);
        [v9 setDevice:obj];

        v5 = obj;
      }
    }
  }
}

- (BOOL)_setPendingValueIfChanged:(float)a3
{
  [(GCControllerElement *)self value];
  v6 = *&v5;
  if (*&v5 != a3)
  {
    *&v5 = a3;
    [(GCControllerElement *)self _setPendingValue:v5];
  }

  return v6 != a3;
}

- (void)_setPendingValue:(float)a3
{
  if (self->_updatePending)
  {
    if (fabsf(a3) > fabsf(self->_pendingValue))
    {
      self->_pendingValue = a3;
    }
  }

  else
  {
    self->_pendingValue = a3;
    self->_updatePending = 1;
  }
}

- (BOOL)_commitPendingValueOnQueue:(id)a3
{
  v4 = a3;
  if (self->_updatePending)
  {
    pendingValue = self->_pendingValue;
    [(GCControllerElement *)self value];
    v7 = pendingValue != *&v6;
    if (pendingValue != *&v6)
    {
      *&v6 = self->_pendingValue;
      [(GCControllerElement *)self _setValue:v4 queue:v6];
    }

    [(GCControllerElement *)self _resetPendingValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSSet)aliases
{
  v2 = [(NSMutableSet *)self->_aliases copy];

  return v2;
}

- (void)setAliases:(id)a3
{
  [(NSMutableSet *)self->_aliases setSet:a3];
  if (self->_primaryAlias)
  {
    aliases = self->_aliases;

    [(NSMutableSet *)aliases addObject:?];
  }
}

- (void)setPrimaryAlias:(id)a3
{
  v5 = a3;
  primaryAlias = self->_primaryAlias;
  if (primaryAlias != v5)
  {
    v8 = v5;
    v7 = [(NSString *)primaryAlias isEqualToString:v5];
    v5 = v8;
    if (!v7)
    {
      if (self->_primaryAlias)
      {
        [(NSMutableSet *)self->_aliases removeObject:?];
        v5 = v8;
      }

      if (v5)
      {
        [(NSMutableSet *)self->_aliases addObject:v8];
      }

      objc_storeStrong(&self->_primaryAlias, a3);
      v5 = v8;
    }
  }
}

- (void)setUnmappedSfSymbolsName:(NSString *)unmappedSfSymbolsName
{
  v4 = unmappedSfSymbolsName;
  v5 = [(NSString *)v4 copy];
  v6 = self->_unmappedSfSymbolsName;
  self->_unmappedSfSymbolsName = v5;

  v7 = [(NSString *)v4 copy];
  sfSymbolsName = self->_sfSymbolsName;
  self->_sfSymbolsName = v7;
}

- (NSString)localizedName
{
  localizedName = self->_localizedName;
  if (localizedName)
  {
    v3 = localizedName;
  }

  else if (self->_nameLocalizationKey)
  {
    v3 = _GCFConvertStringToLocalizedString();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)unmappedLocalizedName
{
  unmappedLocalizedName = self->_unmappedLocalizedName;
  if (unmappedLocalizedName)
  {
    v3 = unmappedLocalizedName;
  }

  else if (self->_unmappedNameLocalizationKey)
  {
    v3 = _GCFConvertStringToLocalizedString();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUnmappedNameLocalizationKey:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  unmappedNameLocalizationKey = self->_unmappedNameLocalizationKey;
  self->_unmappedNameLocalizationKey = v5;

  v7 = [v4 copy];
  nameLocalizationKey = self->_nameLocalizationKey;
  self->_nameLocalizationKey = v7;
}

- (GCControllerElement)collection
{
  WeakRetained = objc_loadWeakRetained(&self->_collection);

  return WeakRetained;
}

- (GCDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end