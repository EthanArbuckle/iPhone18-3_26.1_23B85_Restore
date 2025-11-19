@interface ASDTCustomPropertyCachePMEnabler
- (ASDTCustomProperty)property;
- (ASDTCustomPropertyCachePMEnabler)initWithConfig:(id)a3 forSequencer:(id)a4;
- (void)property;
@end

@implementation ASDTCustomPropertyCachePMEnabler

- (ASDTCustomPropertyCachePMEnabler)initWithConfig:(id)a3 forSequencer:(id)a4
{
  v7 = a3;
  v41.receiver = self;
  v41.super_class = ASDTCustomPropertyCachePMEnabler;
  v8 = [(ASDTPMEnabler *)&v41 initWithConfig:v7 forSequencer:a4];
  if (!v8)
  {
LABEL_41:
    v10 = v8;
    goto LABEL_42;
  }

  v9 = [v7 asdtPropertyAddress];
  [(ASDTCustomPropertyCachePMEnabler *)v8 setPropertyAddress:v9];

  v10 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];

  if (v10)
  {
    v11 = [v7 asdtName];

    if (!v11)
    {
      v36 = MEMORY[0x277CCACA8];
      v40 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
      v39 = [v40 selector] >> 29;
      if (v39)
      {
        v25 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
        if ([v25 selector] >> 24 > 0x7E)
        {
          v38 = 0;
          v34 = 32;
        }

        else
        {
          v21 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
          v34 = [v21 selector] >> 24;
          v38 = 1;
        }
      }

      else
      {
        v38 = 0;
        v34 = 32;
      }

      v37 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
      v35 = [v37 selector] & 0xE00000;
      if (v35)
      {
        v27 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
        if (([v27 selector] >> 16) > 0x7Eu)
        {
          v33 = 0;
          v30 = 32;
        }

        else
        {
          v24 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
          v30 = ([v24 selector] >> 16);
          v33 = 1;
        }
      }

      else
      {
        v33 = 0;
        v30 = 32;
      }

      v32 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
      v31 = [v32 selector] & 0xE000;
      if (v31)
      {
        v26 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
        if (([v26 selector] >> 8) > 0x7Eu)
        {
          v29 = 0;
          v28 = 32;
        }

        else
        {
          v23 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
          v28 = ([v23 selector] >> 8);
          v29 = 1;
        }
      }

      else
      {
        v29 = 0;
        v28 = 32;
      }

      v12 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
      v13 = [v12 selector] & 0xE0;
      if (v13)
      {
        v4 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
        if ([v4 selector] > 0x7Eu)
        {
          v15 = 0;
          v14 = 32;
        }

        else
        {
          v22 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
          v14 = [v22 selector];
          v15 = 1;
        }
      }

      else
      {
        v15 = 0;
        v14 = 32;
      }

      v16 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
      v17 = [v16 element];
      v18 = [(ASDTCustomPropertyCachePMEnabler *)v8 propertyAddress];
      v19 = [v36 stringWithFormat:@"CacheEnabler S:%c%c%c%c E:%u S:%x", v34, v30, v28, v14, v17, objc_msgSend(v18, "scope")];
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

  return v10;
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
    v5 = [(ASDTPMDevice *)self parentSequencer];
    v6 = [v5 parentDevice];
    v7 = [(ASDTCustomPropertyCachePMEnabler *)self propertyAddress];
    v8 = [v6 customPropertyForAddress:v7];

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
  v4 = [a1 name];
  v5 = [a1 propertyAddress];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "%@: No property found matching address %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end