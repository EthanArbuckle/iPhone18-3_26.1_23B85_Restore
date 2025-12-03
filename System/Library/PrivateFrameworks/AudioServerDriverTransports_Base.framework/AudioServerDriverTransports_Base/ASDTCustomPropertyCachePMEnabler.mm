@interface ASDTCustomPropertyCachePMEnabler
- (ASDTCustomProperty)property;
- (ASDTCustomPropertyCachePMEnabler)initWithConfig:(id)config forSequencer:(id)sequencer;
- (void)property;
@end

@implementation ASDTCustomPropertyCachePMEnabler

- (ASDTCustomPropertyCachePMEnabler)initWithConfig:(id)config forSequencer:(id)sequencer
{
  configCopy = config;
  v41.receiver = self;
  v41.super_class = ASDTCustomPropertyCachePMEnabler;
  v8 = [(ASDTPMEnabler *)&v41 initWithConfig:configCopy forSequencer:sequencer];
  if (!v8)
  {
LABEL_41:
    propertyAddress = v8;
    goto LABEL_42;
  }

  asdtPropertyAddress = [configCopy asdtPropertyAddress];
  [(ASDTCustomPropertyCachePMEnabler *)v8 setPropertyAddress:asdtPropertyAddress];

  propertyAddress = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];

  if (propertyAddress)
  {
    asdtName = [configCopy asdtName];

    if (!asdtName)
    {
      v36 = MEMORY[0x277CCACA8];
      propertyAddress2 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
      v39 = [propertyAddress2 selector] >> 29;
      if (v39)
      {
        propertyAddress3 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
        if ([propertyAddress3 selector] >> 24 > 0x7E)
        {
          v38 = 0;
          v34 = 32;
        }

        else
        {
          propertyAddress4 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
          v34 = [propertyAddress4 selector] >> 24;
          v38 = 1;
        }
      }

      else
      {
        v38 = 0;
        v34 = 32;
      }

      propertyAddress5 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
      v35 = [propertyAddress5 selector] & 0xE00000;
      if (v35)
      {
        propertyAddress6 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
        if (([propertyAddress6 selector] >> 16) > 0x7Eu)
        {
          v33 = 0;
          v30 = 32;
        }

        else
        {
          propertyAddress7 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
          v30 = ([propertyAddress7 selector] >> 16);
          v33 = 1;
        }
      }

      else
      {
        v33 = 0;
        v30 = 32;
      }

      propertyAddress8 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
      v31 = [propertyAddress8 selector] & 0xE000;
      if (v31)
      {
        propertyAddress9 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
        if (([propertyAddress9 selector] >> 8) > 0x7Eu)
        {
          v29 = 0;
          v28 = 32;
        }

        else
        {
          propertyAddress10 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
          v28 = ([propertyAddress10 selector] >> 8);
          v29 = 1;
        }
      }

      else
      {
        v29 = 0;
        v28 = 32;
      }

      propertyAddress11 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
      v13 = [propertyAddress11 selector] & 0xE0;
      if (v13)
      {
        propertyAddress12 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
        if ([propertyAddress12 selector] > 0x7Eu)
        {
          v15 = 0;
          selector = 32;
        }

        else
        {
          propertyAddress13 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
          selector = [propertyAddress13 selector];
          v15 = 1;
        }
      }

      else
      {
        v15 = 0;
        selector = 32;
      }

      propertyAddress14 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
      element = [propertyAddress14 element];
      propertyAddress15 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
      v19 = [v36 stringWithFormat:@"CacheEnabler S:%c%c%c%c E:%u S:%x", v34, v30, v28, selector, element, objc_msgSend(propertyAddress15, "scope")];
      [(ASDTPMDevice *)v8 setName:v19];

      if (v15)
      {
      }

      if (v13)
      {
      }

      if (v29)
      {
      }

      if (v31)
      {
      }

      if (v33)
      {
      }

      if (v35)
      {
      }

      if (v38)
      {
      }

      if (v39)
      {
      }
    }

    goto LABEL_41;
  }

LABEL_42:

  return propertyAddress;
}

- (ASDTCustomProperty)property
{
  WeakRetained = objc_loadWeakRetained(&self->_property);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_property);
  }

  else
  {
    parentSequencer = [(ASDTPMDevice *)self parentSequencer];
    parentDevice = [parentSequencer parentDevice];
    propertyAddress = [(ASDTCustomPropertyCachePMEnabler *)self propertyAddress];
    v8 = [parentDevice customPropertyForAddress:propertyAddress];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeWeak(&self->_property, v8);
    }

    v9 = objc_loadWeakRetained(&self->_property);

    if (!v9)
    {
      v10 = ASDTBaseLogType();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(ASDTCustomPropertyCachePMEnabler *)self property];
      }
    }

    v4 = objc_loadWeakRetained(&self->_property);
  }

  return v4;
}

- (void)property
{
  v11 = *MEMORY[0x277D85DE8];
  name = [self name];
  propertyAddress = [self propertyAddress];
  v7 = 138412546;
  v8 = name;
  v9 = 2112;
  v10 = propertyAddress;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "%@: No property found matching address %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end