@interface ASDObject
- (ASDObject)init;
- (ASDObject)initWithPlugin:(id)a3;
- (ASDObject)owner;
- (ASDPlugin)plugin;
- (ASDPropertyChangedDelegate)propertyChangedDelegate;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)a3;
- (NSArray)customProperties;
- (id)customPropertyWithAddress:(const AudioObjectPropertyAddress *)a3;
- (id)diagnosticDescriptionWithIndent:(id)a3 walkTree:(BOOL)a4;
- (int)addPassthroughPropertyWithUnderlyingObject:(id)a3 andPropertyAddress:(AudioObjectPropertyAddress)a4;
- (void)addCustomProperty:(id)a3;
- (void)dealloc;
- (void)removeCustomProperty:(id)a3;
- (void)setupDiagnosticStateDumpHandlerWithTreeWalk:(BOOL)a3;
@end

@implementation ASDObject

- (ASDPlugin)plugin
{
  WeakRetained = objc_loadWeakRetained(&self->_plugin);

  return WeakRetained;
}

uint64_t __29__ASDObject_customProperties__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA60] arrayWithArray:*(*(a1 + 32) + 8)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (ASDPropertyChangedDelegate)propertyChangedDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_propertyChangedDelegate);

  return WeakRetained;
}

- (NSArray)customProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  customPropertyQueue = self->_customPropertyQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__ASDObject_customProperties__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(customPropertyQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (ASDObject)init
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [(ASDObject *)self initWithPlugin:0];
  }

  else
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ASDObject init]"];
    [v4 raise:v5 format:{@"Do not call %@", v6}];

    return 0;
  }
}

- (ASDObject)initWithPlugin:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ASDObject;
  v5 = [(ASDObject *)&v14 init];
  if (v5)
  {
    [v4 addCAObject:v5];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 bundleIdentifier];
    objc_storeWeak(&v5->_propertyChangedDelegate, v4);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    customProperties = v5->_customProperties;
    v5->_customProperties = v8;

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.object.%u.customProperties", v7, -[ASDObject objectID](v5, "objectID")];
    v11 = dispatch_queue_create([v10 UTF8String], 0);
    customPropertyQueue = v5->_customPropertyQueue;
    v5->_customPropertyQueue = v11;
  }

  return v5;
}

- (id)customPropertyWithAddress:(const AudioObjectPropertyAddress *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(ASDObject *)self customProperties];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        mSelector = a3->mSelector;
        if (mSelector == [v9 selector])
        {
          mScope = a3->mScope;
          if (mScope == [v9 scope])
          {
            mElement = a3->mElement;
            if (mElement == [v9 element])
            {
              v13 = v9;
              goto LABEL_13;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (a3)
  {
    mSelector = a3->mSelector;
    if (a3->mSelector <= 1668641651)
    {
      v4 = mSelector == 1650682995;
      v5 = 1668047219;
    }

    else
    {
      if (mSelector == 1668641652)
      {
        customPropertyQueue = self->_customPropertyQueue;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __25__ASDObject_hasProperty___block_invoke;
        v11[3] = &unk_278CE3E28;
        v11[4] = self;
        v11[5] = &v12;
        dispatch_sync(customPropertyQueue, v11);
        goto LABEL_12;
      }

      v4 = mSelector == 1937007734;
      v5 = 1870098020;
    }

    if (v4 || mSelector == v5)
    {
      v15 = 1;
    }

    else
    {
      v10 = [(ASDObject *)self customPropertyWithAddress:?];
      *(v13 + 24) = v10 != 0;
    }
  }

LABEL_12:
  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __25__ASDObject_hasProperty___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)a3
{
  if (!a3)
  {
    return 0;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1668641651)
  {
    v4 = mSelector == 1650682995;
    v5 = 1668047219;
  }

  else
  {
    v4 = mSelector == 1668641652 || mSelector == 1870098020;
    v5 = 1937007734;
  }

  if (v4 || mSelector == v5)
  {
    return 0;
  }

  v7 = [(ASDObject *)self customPropertyWithAddress:?];
  v8 = [v7 isSettable];

  return v8;
}

uint64_t __68__ASDObject_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = 12 * result;
  return result;
}

- (void)addCustomProperty:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (![v5 selector])
    {
      [ASDObject addCustomProperty:];
    }

    v7 = [v6 owner];

    if (v7)
    {
      [ASDObject addCustomProperty:];
    }

    if ([v6 propertyDataType] != 1667658612 && objc_msgSend(v6, "propertyDataType") != 1886155636 && objc_msgSend(v6, "propertyDataType") != 1918990199)
    {
      [ASDObject addCustomProperty:];
    }

    if ([v6 qualifierDataType] != 1667658612 && objc_msgSend(v6, "qualifierDataType") != 1886155636 && objc_msgSend(v6, "qualifierDataType") != 1918990199 && objc_msgSend(v6, "qualifierDataType"))
    {
      [ASDObject addCustomProperty:];
    }

    [v6 setOwner:self];
    customPropertyQueue = self->_customPropertyQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__ASDObject_addCustomProperty___block_invoke;
    block[3] = &unk_278CE3EA0;
    block[4] = self;
    v13 = v6;
    v14 = a2;
    dispatch_sync(customPropertyQueue, block);
    v11 = 0;
    v10 = 0x676C6F6263757374;
    v9 = [(ASDObject *)self propertyChangedDelegate];
    [v9 changedProperty:&v10 forObject:self];
  }
}

uint64_t __31__ASDObject_addCustomProperty___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) containsObject:*(a1 + 40)])
  {
    __31__ASDObject_addCustomProperty___block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);

  return [v3 addObject:v2];
}

- (void)removeCustomProperty:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    customPropertyQueue = self->_customPropertyQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__ASDObject_removeCustomProperty___block_invoke;
    block[3] = &unk_278CE3EA0;
    block[4] = self;
    v8 = v5;
    v13 = v8;
    v14 = a2;
    dispatch_sync(customPropertyQueue, block);
    [v8 setOwner:0];
    v11 = 0;
    v10 = 0x676C6F6263757374;
    v9 = [(ASDObject *)self propertyChangedDelegate];
    [v9 changedProperty:&v10 forObject:self];
  }
}

uint64_t __34__ASDObject_removeCustomProperty___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 8) containsObject:*(a1 + 40)] & 1) == 0)
  {
    __34__ASDObject_removeCustomProperty___block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);

  return [v3 removeObject:v2];
}

- (void)setupDiagnosticStateDumpHandlerWithTreeWalk:(BOOL)a3
{
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(0, 0);
  objc_copyWeak(&v6, &location);
  v7 = a3;
  self->_stateDumpHandler = os_state_add_handler();

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

_DWORD *__57__ASDObject_setupDiagnosticStateDumpHandlerWithTreeWalk___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (*(a2 + 16) == 3)
  {
    v6 = [WeakRetained diagnosticDescriptionWithIndent:&stru_2853456D8 walkTree:*(a1 + 40)];
    v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 length];
      v10 = malloc_type_calloc(1uLL, v9 + 200, 0x1000040BEF03554uLL);
      if (v10)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [v5 driverClassName];
        v13 = [v11 stringWithFormat:@"AudioServerDriver %@ State:", v12];

        *v10 = 1;
        v10[1] = v9;
        [v13 UTF8String];
        __strlcpy_chk();
        memcpy(v10 + 50, [v8 bytes], v9);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)diagnosticDescriptionWithIndent:(id)a3 walkTree:(BOOL)a4
{
  v5 = MEMORY[0x277CCAB68];
  v6 = a3;
  v7 = [v5 string];
  v8 = [(ASDObject *)self driverClassName];
  [v7 appendFormat:@"%@+%s\n", v6, objc_msgSend(v8, "UTF8String")];

  [v7 appendFormat:@"%@|    Object ID: %u\n", v6, -[ASDObject objectID](self, "objectID")];
  v9 = [(ASDObject *)self baseClass];
  LODWORD(v10) = v9 >> 24;
  if (((v9 >> 24) - 32) >= 0x5F)
  {
    v10 = 32;
  }

  else
  {
    v10 = v10;
  }

  LODWORD(v11) = v9 << 8 >> 24;
  if ((v11 - 32) >= 0x5F)
  {
    v11 = 32;
  }

  else
  {
    v11 = v11;
  }

  LODWORD(v12) = v9 >> 8;
  if ((v12 - 32) >= 0x5F)
  {
    v12 = 32;
  }

  else
  {
    v12 = v12;
  }

  if ((v9 - 32) >= 0x5F)
  {
    v13 = 32;
  }

  else
  {
    v13 = v9;
  }

  [v7 appendFormat:@"%@|    Base Class: %c%c%c%c\n", v6, v10, v11, v12, v13];
  v14 = [(ASDObject *)self objectClass];
  LODWORD(v15) = v14 >> 24;
  if (((v14 >> 24) - 32) >= 0x5F)
  {
    v15 = 32;
  }

  else
  {
    v15 = v15;
  }

  LODWORD(v16) = v14 << 8 >> 24;
  if ((v16 - 32) >= 0x5F)
  {
    v16 = 32;
  }

  else
  {
    v16 = v16;
  }

  LODWORD(v17) = v14 >> 8;
  if ((v17 - 32) >= 0x5F)
  {
    v17 = 32;
  }

  else
  {
    v17 = v17;
  }

  if ((v14 - 32) >= 0x5F)
  {
    v18 = 32;
  }

  else
  {
    v18 = v14;
  }

  [v7 appendFormat:@"%@|    Object Class: %c%c%c%c\n", v6, v15, v16, v17, v18];
  v19 = [(ASDObject *)self owner];
  [v7 appendFormat:@"%@|    Owner ID: %u\n", v6, objc_msgSend(v19, "objectID")];

  return v7;
}

- (void)dealloc
{
  if (self->_stateDumpHandler)
  {
    os_state_remove_handler();
  }

  WeakRetained = objc_loadWeakRetained(&self->_plugin);
  [WeakRetained removeCAObject:self];

  v4.receiver = self;
  v4.super_class = ASDObject;
  [(ASDObject *)&v4 dealloc];
}

- (int)addPassthroughPropertyWithUnderlyingObject:(id)a3 andPropertyAddress:(AudioObjectPropertyAddress)a4
{
  v10 = a4;
  v5 = a3;
  if ([v5 hasProperty:&v10])
  {
    v6 = [ASDPassthroughProperty alloc];
    v7 = [(ASDPassthroughProperty *)v6 initWithUnderlyingObject:v5 andPropertyAddress:*&v10.mSelector, v10.mElement];
    if (v7)
    {
      [(ASDObject *)self addCustomProperty:v7];
      v8 = 0;
    }

    else
    {
      v8 = 1852797029;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ASDObject addPassthroughPropertyWithUnderlyingObject:? andPropertyAddress:?];
      }
    }
  }

  else
  {
    v8 = 2003332927;
  }

  return v8;
}

- (ASDObject)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (void)addCustomProperty:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addCustomProperty:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addCustomProperty:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addCustomProperty:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __31__ASDObject_addCustomProperty___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 48) object:*v0 file:@"ASDObject.m" lineNumber:347 description:@"Custom property already exists."];
}

void __34__ASDObject_removeCustomProperty___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 48) object:*v0 file:@"ASDObject.m" lineNumber:365 description:@"Custom property doesn't exist."];
}

- (void)addPassthroughPropertyWithUnderlyingObject:(int *)a1 andPropertyAddress:.cold.1(int *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *a1 >> 24;
  if ((v2 - 32) >= 0x5F)
  {
    v2 = 32;
  }

  v3 = v1 << 8 >> 24;
  if ((v3 - 32) >= 0x5F)
  {
    v3 = 32;
  }

  v4 = v1 >> 8;
  if ((v4 - 32) >= 0x5F)
  {
    v4 = 32;
  }

  v1 = v1;
  v6[0] = 67109888;
  v6[1] = v2;
  v7 = 1024;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  if ((v1 - 32) >= 0x5F)
  {
    v1 = 32;
  }

  v11 = 1024;
  v12 = v1;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to add passthrough property '%c%c%c%c'", v6, 0x1Au);
  v5 = *MEMORY[0x277D85DE8];
}

@end