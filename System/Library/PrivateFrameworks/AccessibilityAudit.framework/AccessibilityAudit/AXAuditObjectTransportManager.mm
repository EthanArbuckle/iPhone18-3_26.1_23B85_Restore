@interface AXAuditObjectTransportManager
+ (id)sharedManager;
- (AXAuditObjectTransportManager)init;
- (BOOL)validateSupportedConnectionSecureTransport:(id)transport;
- (id)_transportInfoEncodeOnlyForObject:(id)object;
- (id)_transportInfoForObject:(id)object;
- (id)arrayForTransportArray:(id)array expectedClass:(Class)class;
- (id)objectForTransportDictionary:(id)dictionary expectedClass:(Class)class;
- (id)transportArrayForArray:(id)array;
- (id)transportDictionaryForObject:(id)object;
- (void)_registerKnownClasses;
- (void)_validateTransportObjectIfNeeded:(id)needed;
- (void)registerTransportInfoMasquerade:(id)masquerade encodeOnly:(BOOL)only;
- (void)registerTransportInfoPropertyBased:(id)based;
@end

@implementation AXAuditObjectTransportManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__AXAuditObjectTransportManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_0 != -1)
  {
    dispatch_once(&sharedManager_onceToken_0, block);
  }

  v2 = sharedManager_instance_0;

  return v2;
}

uint64_t __46__AXAuditObjectTransportManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_instance_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXAuditObjectTransportManager)init
{
  v8.receiver = self;
  v8.super_class = AXAuditObjectTransportManager;
  v2 = [(AXAuditObjectTransportManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    keyToTransportInfo = v2->__keyToTransportInfo;
    v2->__keyToTransportInfo = v3;

    v5 = objc_opt_new();
    transportInfoEncodeOnly = v2->__transportInfoEncodeOnly;
    v2->__transportInfoEncodeOnly = v5;

    [(AXAuditObjectTransportManager *)v2 _registerKnownClasses];
  }

  return v2;
}

- (void)_registerKnownClasses
{
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  [(AXAuditObjectTransportManager *)self registerTransportableClass:objc_opt_class()];
  v3 = objc_opt_class();

  [(AXAuditObjectTransportManager *)self registerTransportableClass:v3];
}

- (id)transportDictionaryForObject:(id)object
{
  v54 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    v5 = objc_opt_new();
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v5 setObject:AuditTransportObjectTypePassthrough forKeyedSubscript:AuditTransportObjectTypeKey];
      [v5 setObject:objectCopy forKeyedSubscript:AuditTransportValueKey];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = MEMORY[0x277CCAB48];
        v9 = objectCopy;
        v10 = [v8 alloc];
        string = [v9 string];
        v12 = [v10 initWithString:string];

        string2 = [v9 string];
        v14 = [string2 length];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __62__AXAuditObjectTransportManager_transportDictionaryForObject___block_invoke;
        v50[3] = &unk_278BE27E0;
        v50[4] = self;
        v51 = v12;
        v15 = v12;
        [v9 enumerateAttributesInRange:0 options:v14 usingBlock:{2, v50}];

        [v5 setObject:AuditTransportObjectTypePassthrough forKeyedSubscript:AuditTransportObjectTypeKey];
        v16 = [v15 copy];
        [v5 setObject:v16 forKeyedSubscript:AuditTransportValueKey];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = objc_opt_new();
          v18 = objectCopy;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v19 = [v18 countByEnumeratingWithState:&v46 objects:v53 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v47;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v47 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = [(AXAuditObjectTransportManager *)self transportDictionaryForObject:*(*(&v46 + 1) + 8 * i)];
                if (v23)
                {
                  [v17 addObject:v23];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v46 objects:v53 count:16];
            }

            while (v20);
          }

          [v5 setObject:AuditTransportObjectTypePassthrough forKeyedSubscript:AuditTransportObjectTypeKey];
          [v5 setObject:v17 forKeyedSubscript:AuditTransportValueKey];
        }

        else
        {
          v24 = CFGetTypeID(objectCopy);
          if (v24 == CGColorGetTypeID())
          {
            [v5 setObject:AuditTransportObjectTypePassthrough forKeyedSubscript:AuditTransportObjectTypeKey];
            v17 = [MEMORY[0x277D75348] colorWithCGColor:objectCopy];
            [v5 setObject:v17 forKeyedSubscript:AuditTransportValueKey];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = objc_opt_new();
              v25 = objectCopy;
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v26 = [v25 countByEnumeratingWithState:&v42 objects:v52 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v43;
                do
                {
                  v29 = 0;
                  v41 = v27;
                  do
                  {
                    if (*v43 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = *(*(&v42 + 1) + 8 * v29);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v31 = v28;
                      v32 = v25;
                      v33 = [v25 objectForKey:v30];
                      v34 = [(AXAuditObjectTransportManager *)self transportDictionaryForObject:v33];
                      if (v34)
                      {
                        [v39 setObject:v34 forKey:v30];
                      }

                      v25 = v32;
                      v28 = v31;
                      v27 = v41;
                    }

                    ++v29;
                  }

                  while (v27 != v29);
                  v27 = [v25 countByEnumeratingWithState:&v42 objects:v52 count:16];
                }

                while (v27);
              }

              [v5 setObject:AuditTransportObjectTypePassthrough forKeyedSubscript:{AuditTransportObjectTypeKey, v39}];
              v17 = v40;
              [v5 setObject:v40 forKeyedSubscript:AuditTransportValueKey];
            }

            else
            {
              v17 = [(AXAuditObjectTransportManager *)self _transportInfoForObject:objectCopy];
              if (!v17)
              {
                v17 = [(AXAuditObjectTransportManager *)self _transportInfoEncodeOnlyForObject:objectCopy];
              }

              transportKey = [v17 transportKey];
              [v5 setObject:transportKey forKeyedSubscript:AuditTransportObjectTypeKey];

              if (v17)
              {
                createTransportObjectBlock = [v17 createTransportObjectBlock];
                v37 = (createTransportObjectBlock)[2](createTransportObjectBlock, objectCopy);

                v38 = [(AXAuditObjectTransportManager *)self transportDictionaryForObject:v37];
                [v5 setObject:v38 forKeyedSubscript:AuditTransportValueKey];
              }
            }
          }
        }
      }
    }

    [(AXAuditObjectTransportManager *)self _validateTransportObjectIfNeeded:v5];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void __62__AXAuditObjectTransportManager_transportDictionaryForObject___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) transportDictionaryForObject:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) setAttributes:v7 range:{a3, a4}];
  }
}

- (id)objectForTransportDictionary:(id)dictionary expectedClass:(Class)class
{
  v57 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  [(AXAuditObjectTransportManager *)self _validateTransportObjectIfNeeded:dictionaryCopy];
  if (!dictionaryCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_48;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:AuditTransportObjectTypeKey];
  if ([v8 isEqualToString:AuditTransportObjectTypePassthrough])
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:AuditTransportValueKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = v8;
      classCopy2 = class;
      v41 = dictionaryCopy;
      v44 = v9;
      v10 = v9;
      v11 = objc_opt_new();
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v52;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v52 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v51 + 1) + 8 * i);
            v18 = [v12 objectForKey:{v17, v41}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [(AXAuditObjectTransportManager *)self objectForTransportDictionary:v18 expectedClass:0];

              v18 = v19;
            }

            if (v18)
            {
              [v11 setObject:v18 forKey:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v14);
      }

      dictionaryCopy = v41;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = MEMORY[0x277CCAB48];
        v44 = v9;
        v26 = v9;
        v27 = [v25 alloc];
        string = [v26 string];
        v29 = [v27 initWithString:string];

        string2 = [v26 string];
        v31 = [string2 length];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __76__AXAuditObjectTransportManager_objectForTransportDictionary_expectedClass___block_invoke;
        v49[3] = &unk_278BE27E0;
        v49[4] = self;
        v50 = v29;
        v12 = v29;
        [v26 enumerateAttributesInRange:0 options:v31 usingBlock:{2, v49}];

        v11 = [v12 copy];
        goto LABEL_25;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = v9;
      if ((isKindOfClass & 1) == 0)
      {
LABEL_26:

        if (!class)
        {
          goto LABEL_47;
        }

        goto LABEL_43;
      }

      classCopy2 = class;
      v44 = v9;
      v42 = v8;
      v11 = objc_opt_new();
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v12 = v7;
      v33 = [v12 countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v46;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v46 != v35)
            {
              objc_enumerationMutation(v12);
            }

            v37 = *(*(&v45 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = [(AXAuditObjectTransportManager *)self objectForTransportDictionary:v37 expectedClass:0];

              v37 = v38;
            }

            if (v37)
            {
              [v11 addObject:v37];
            }
          }

          v34 = [v12 countByEnumeratingWithState:&v45 objects:v55 count:16];
        }

        while (v34);
      }
    }

    v8 = v42;
    class = classCopy2;
LABEL_25:

    v7 = v11;
    v9 = v44;
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 length])
  {
    _keyToTransportInfo = [(AXAuditObjectTransportManager *)self _keyToTransportInfo];
    v21 = [_keyToTransportInfo objectForKeyedSubscript:v8];

    if (v21)
    {
      v22 = [dictionaryCopy objectForKeyedSubscript:AuditTransportValueKey];
      v23 = [(AXAuditObjectTransportManager *)self objectForTransportDictionary:v22 expectedClass:0];

      createLocalObjectBlock = [v21 createLocalObjectBlock];
      v7 = (createLocalObjectBlock)[2](createLocalObjectBlock, v23);
    }

    else
    {
      v7 = 0;
    }

    if (!class)
    {
      goto LABEL_47;
    }

LABEL_43:
    if (!v7 || (objc_opt_isKindOfClass() & 1) != 0)
    {
      goto LABEL_47;
    }
  }

  v7 = 0;
LABEL_47:

LABEL_48:
  v39 = *MEMORY[0x277D85DE8];

  return v7;
}

void __76__AXAuditObjectTransportManager_objectForTransportDictionary_expectedClass___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectForTransportDictionary:v8 expectedClass:objc_opt_class()];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) setAttributes:v9 range:{a3, a4}];
  }
}

- (id)transportArrayForArray:(id)array
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = arrayCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(AXAuditObjectTransportManager *)self transportDictionaryForObject:*(*(&v14 + 1) + 8 * i), v14];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(AXAuditObjectTransportManager *)self _validateTransportObjectIfNeeded:v5];
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)arrayForTransportArray:(id)array expectedClass:(Class)class
{
  v22 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  [(AXAuditObjectTransportManager *)self _validateTransportObjectIfNeeded:arrayCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = arrayCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [(AXAuditObjectTransportManager *)self objectForTransportDictionary:v13 expectedClass:class, v17];
            if (v14)
            {
              [v7 addObject:v14];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_transportInfoEncodeOnlyForObject:(id)object
{
  v19 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _transportInfoEncodeOnly = [(AXAuditObjectTransportManager *)self _transportInfoEncodeOnly];
  v6 = [_transportInfoEncodeOnly countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(_transportInfoEncodeOnly);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        canEncodeObjectBlock = [v9 canEncodeObjectBlock];
        v11 = (canEncodeObjectBlock)[2](canEncodeObjectBlock, objectCopy);

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [_transportInfoEncodeOnly countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_transportInfoForObject:(id)object
{
  v20 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  [(AXAuditObjectTransportManager *)self _keyToTransportInfo];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [v5 objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * v9), v15}];
      canEncodeObjectBlock = [v10 canEncodeObjectBlock];
      v12 = (canEncodeObjectBlock)[2](canEncodeObjectBlock, objectCopy);

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)registerTransportInfoMasquerade:(id)masquerade encodeOnly:(BOOL)only
{
  onlyCopy = only;
  v24 = *MEMORY[0x277D85DE8];
  masqueradeCopy = masquerade;
  masqueradeAsClass = [masqueradeCopy masqueradeAsClass];
  if (!masqueradeAsClass)
  {
    goto LABEL_24;
  }

  v8 = masqueradeAsClass;
  [(AXAuditObjectTransportManager *)self _keyToTransportInfo];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  v11 = v9;
  if (!v10)
  {
LABEL_22:

    goto LABEL_23;
  }

  v12 = v10;
  selfCopy = self;
  v13 = *v20;
LABEL_4:
  v14 = 0;
  while (1)
  {
    if (*v20 != v13)
    {
      objc_enumerationMutation(v9);
    }

    v11 = [v9 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * v14)];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (onlyCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v11 "masqueradeAsClass")])
        {

          if (!v11)
          {
            goto LABEL_23;
          }

LABEL_20:
          transportKey = [v11 transportKey];
          [masqueradeCopy setTransportKey:transportKey];
          [masqueradeCopy setMasqueradeTransportInfo:v11];
          _transportInfoEncodeOnly = [(AXAuditObjectTransportManager *)selfCopy _transportInfoEncodeOnly];
          [_transportInfoEncodeOnly addObject:masqueradeCopy];

LABEL_21:
          goto LABEL_22;
        }
      }

      goto LABEL_13;
    }

    if ([objc_msgSend(v11 "entryClass")])
    {
      break;
    }

LABEL_13:

    if (v12 == ++v14)
    {
      v12 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        goto LABEL_4;
      }

      v11 = v9;
      goto LABEL_22;
    }
  }

  if (v11)
  {
    if (onlyCopy)
    {
      goto LABEL_20;
    }

    transportKey = [v11 transportKey];
    [masqueradeCopy setTransportKey:transportKey];
    [masqueradeCopy setMasqueradeTransportInfo:v11];
    [v9 setObject:masqueradeCopy forKey:transportKey];
    goto LABEL_21;
  }

LABEL_23:

LABEL_24:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)registerTransportInfoPropertyBased:(id)based
{
  basedCopy = based;
  transportKey = [basedCopy transportKey];
  _keyToTransportInfo = [(AXAuditObjectTransportManager *)self _keyToTransportInfo];
  [_keyToTransportInfo setObject:basedCopy forKey:transportKey];
}

- (void)_validateTransportObjectIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(AXAuditObjectTransportManager *)self enforceSecureTransport])
  {
    [(AXAuditObjectTransportManager *)self validateSupportedConnectionSecureTransport:neededCopy];
  }
}

- (BOOL)validateSupportedConnectionSecureTransport:(id)transport
{
  v45[8] = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  if (transportCopy)
  {
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v45[2] = objc_opt_class();
    v45[3] = objc_opt_class();
    v45[4] = objc_opt_class();
    v45[5] = objc_opt_class();
    v45[6] = objc_opt_class();
    v45[7] = objc_opt_class();
    [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:8];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v5 = v39 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v6)
    {
      v7 = *v39;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v39 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v38 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {

            v14 = 1;
            goto LABEL_41;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v10 = transportCopy;
      v11 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v11)
      {
        v12 = *v35;
        while (2)
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v10);
            }

            if (![(AXAuditObjectTransportManager *)self validateSupportedConnectionSecureTransport:*(*(&v34 + 1) + 8 * j)])
            {
              v14 = 0;
              goto LABEL_34;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v14 = 1;
LABEL_34:
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v15 = transportCopy;
        v16 = [v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v16)
        {
          v17 = *v31;
          while (2)
          {
            for (k = 0; k != v16; ++k)
            {
              if (*v31 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v30 + 1) + 8 * k);
              if ([(AXAuditObjectTransportManager *)self validateSupportedConnectionSecureTransport:v19])
              {
                v20 = [v15 objectForKey:v19];
                v21 = [(AXAuditObjectTransportManager *)self validateSupportedConnectionSecureTransport:v20];

                if (v21)
                {
                  continue;
                }
              }

              v14 = 0;
              goto LABEL_40;
            }

            v16 = [v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
            v14 = 1;
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v14 = 1;
        }

LABEL_40:
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = 0;
          v27 = &v26;
          v28 = 0x2020000000;
          v29 = 0;
          v22 = [transportCopy length];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __76__AXAuditObjectTransportManager_validateSupportedConnectionSecureTransport___block_invoke;
          v25[3] = &unk_278BE2808;
          v25[4] = self;
          v25[5] = &v26;
          [transportCopy enumerateAttributesInRange:0 options:v22 usingBlock:{0, v25}];
          v14 = *(v27 + 24) ^ 1;
          _Block_object_dispose(&v26, 8);
        }

        else
        {
          v14 = 0;
        }
      }
    }

LABEL_41:
  }

  else
  {
    v14 = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

uint64_t __76__AXAuditObjectTransportManager_validateSupportedConnectionSecureTransport___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) validateSupportedConnectionSecureTransport:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

@end