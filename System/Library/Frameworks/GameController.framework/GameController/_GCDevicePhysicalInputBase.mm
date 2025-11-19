@interface _GCDevicePhysicalInputBase
+ (id)debugDescription;
- (BOOL)view:(id)a3 testAndSetObjectValue:(id)a4 forSlot:(unint64_t *)a5 policy:(unint64_t)a6;
- (BOOL)view:(id)a3 testAndSetPrimitiveValue:(unint64_t)a4 forSlot:(unint64_t *)a5;
- (GCDevice)device;
- (NSString)debugDescription;
- (NSString)description;
- (_GCDevicePhysicalInputDataSource)dataSource;
- (double)debugDescription;
- (double)lastEventLatency;
- (double)lastEventTimestamp;
- (id)_initWithFacadeTemplate:(id)a3 elementsTemplates:(id)a4 attributes:(id)a5 context:(id)a6;
- (id)_stateTableForSlot:(SlotID)a3;
- (id)elementsForProtocol:(id *)result;
- (id)view:(id)a3 objectValueForSlot:(unint64_t *)a4;
- (id)view:(id)a3 viewForSlot:(unint64_t *)a4;
- (id)viewConfiguration;
- (id)viewState;
- (uint64_t)_elementAtIndex:(uint64_t)result;
- (uint64_t)_elementForAlias:(uint64_t)a1;
- (uint64_t)attributes;
- (uint64_t)elements;
- (uint64_t)facade;
- (uint64_t)viewProperties;
- (unint64_t)view:(id)a3 primitiveValueForSlot:(unint64_t *)a4;
- (void)dealloc;
- (void)setViewConfiguration:(void *)a1;
- (void)setViewState:(void *)a1;
- (void)view:(id)a3 setObjectValue:(id)a4 forSlot:(unint64_t *)a5 policy:(unint64_t)a6;
- (void)view:(id)a3 setPrimitiveValue:(unint64_t)a4 forSlot:(unint64_t *)a5;
@end

@implementation _GCDevicePhysicalInputBase

- (id)_initWithFacadeTemplate:(id)a3 elementsTemplates:(id)a4 attributes:(id)a5 context:(id)a6
{
  v6 = a6;
  v45 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_GCDevicePhysicalInputBase _initWithFacadeTemplate:elementsTemplates:attributes:context:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [_GCDevicePhysicalInputBase _initWithFacadeTemplate:elementsTemplates:attributes:context:];
LABEL_3:
  v42.receiver = self;
  v42.super_class = _GCDevicePhysicalInputBase;
  v11 = [(_GCDevicePhysicalInputBase *)&v42 init];
  v12 = [a5 copy];
  if (!v12)
  {
    v12 = objc_opt_new();
  }

  v11->_attributes = v12;
  *(v6 + 1) = v11;
  v11->_viewConfiguration = *(v6 + 3);
  v11->_viewProperties = *(v6 + 4);
  v11->_viewState = *(v6 + 5);
  v13 = [a4 mutableCopy];
  [v13 sortUsingComparator:&__block_literal_global_5];
  v11->_elementCount = [v13 count];
  v11->_indexedElements = malloc_type_calloc([v13 count], 8uLL, 0x80040B8603338uLL);
  v14 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v13;
  v33 = [v13 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v33)
  {
    v15 = 0;
    v31 = *v39;
    v32 = v6;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v38 + 1) + 8 * i);
        v11->_indexedElements[v15] = [objc_opt_class() withTemplate:v17 context:v6];
        if (!v11->_indexedElements[v15])
        {
          [_GCDevicePhysicalInputBase _initWithFacadeTemplate:elementsTemplates:attributes:context:];
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v18 = [v17 aliases];
        v19 = [v18 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v35;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v35 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v34 + 1) + 8 * j);
              if ([v14 objectForKey:v23])
              {
                [_GCDevicePhysicalInputBase _initWithFacadeTemplate:elementsTemplates:attributes:context:];
              }

              [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", v15), v23}];
            }

            v20 = [v18 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v20);
        }

        ++v15;
        v6 = v32;
      }

      v33 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v33);
  }

  v11->_elementIndexByAlias = [v14 copy];

  v11->_additionalViews = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(v6 + 2));
  v24 = [_GCDevicePhysicalInputElementsArray alloc];
  v11->_indexedElementViews = v24;
  v24->_implementation = v11;
  v25 = [_GCDevicePhysicalInputElementsCollection alloc];
  v11->_elementCollection = v25;
  v25->_implementation = v11;
  v26 = [objc_opt_class() withTemplate:v29 context:v6];
  v11->_facade = v26;
  if (!v26)
  {
    [_GCDevicePhysicalInputBase _initWithFacadeTemplate:elementsTemplates:attributes:context:];
  }

  v11->_viewConfiguration = [*(v6 + 3) copy];
  v11->_viewProperties = [*(v6 + 4) copy];
  v11->_viewState = [*(v6 + 5) copy];
  v27 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)dealloc
{
  facade = self->_facade;
  if (_objc_rootRetainCount() != 1)
  {
    [_GCDevicePhysicalInputBase dealloc];
  }

  v4 = self->_facade;
  _objc_rootRelease();
  self->_facade = 0;
  elementCollection = self->_elementCollection;
  if (_objc_rootRetainCount() != 1)
  {
    [_GCDevicePhysicalInputBase dealloc];
  }

  v6 = self->_elementCollection;
  _objc_rootRelease();
  self->_elementCollection = 0;
  indexedElementViews = self->_indexedElementViews;
  if (_objc_rootRetainCount() != 1)
  {
    [_GCDevicePhysicalInputBase dealloc];
  }

  v8 = self->_indexedElementViews;
  _objc_rootRelease();
  self->_indexedElementViews = 0;
  if (self->_elementCount)
  {
    v9 = 0;
    do
    {
      v10 = self->_indexedElements[v9];
      if (_objc_rootRetainCount() != 1)
      {
        [_GCDevicePhysicalInputBase dealloc];
      }

      v11 = self->_indexedElements[v9];
      _objc_rootRelease();
      self->_indexedElements[v9++] = 0;
    }

    while (v9 < self->_elementCount);
  }

  free(self->_indexedElements);
  self->_indexedElements = 0;
  objc_storeStrong(&self->_elementIndexByAlias, 0);
  if (CFArrayGetCount(self->_additionalViews) >= 1)
  {
    v12 = 0;
    do
    {
      CFArrayGetValueAtIndex(self->_additionalViews, v12);
      if (_objc_rootRetainCount() != 1)
      {
        [_GCDevicePhysicalInputBase dealloc];
      }

      _objc_rootRelease();
      ++v12;
    }

    while (v12 < CFArrayGetCount(self->_additionalViews));
  }

  CFRelease(self->_additionalViews);
  self->_additionalViews = 0;
  objc_storeStrong(&self->_viewConfiguration, 0);
  objc_storeStrong(&self->_viewProperties, 0);
  objc_storeStrong(&self->_viewState, 0);
  objc_storeStrong(&self->_attributes, 0);
  objc_storeWeak(&self->_dataSource, 0);
  objc_storeWeak(&self->_device, 0);
  v13.receiver = self;
  v13.super_class = _GCDevicePhysicalInputBase;
  [(_GCDevicePhysicalInputBase *)&v13 dealloc];
}

- (GCDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (_GCDevicePhysicalInputDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (uint64_t)_elementAtIndex:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 24);
    if (v2 <= a2)
    {
      [(_GCDevicePhysicalInputBase *)a2 _elementAtIndex:v2];
    }

    return *(*(result + 32) + 8 * a2);
  }

  return result;
}

- (double)lastEventTimestamp
{
  v2 = [(_GCDevicePhysicalInputBase *)self lastEventHostTimestamp];

  return GCNSTimeIntervalFromMachAbsoluteTime(v2);
}

- (double)lastEventLatency
{
  if (!dword_1EC735EC4)
  {
    mach_timebase_info(&lastEventLatency_sTimebaseInfo);
  }

  [(_GCDevicePhysicalInputBase *)self lastEventTimestamp];
  return (mach_absolute_time() * lastEventLatency_sTimebaseInfo / dword_1EC735EC4) / 1000000000.0 - v3;
}

- (id)_stateTableForSlot:(SlotID)a3
{
  if (*(&a3.var1 + 4) == 3)
  {
    if (self)
    {
      v5 = 88;
LABEL_10:
      Property = objc_getProperty(self, a2, v5, 1);
      goto LABEL_11;
    }
  }

  else
  {
    if (*(&a3.var1 + 4) == 2)
    {
      if ((a3.var0 & 0xFF0000000000) != 0x20000000000)
      {
        [_GCDevicePhysicalInputBase _stateTableForSlot:];
      }

      if (self)
      {
        Property = self->_viewProperties;
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    if (self)
    {
      v5 = 72;
      goto LABEL_10;
    }
  }

LABEL_15:
  Property = 0;
LABEL_11:
  if (HIWORD(a3.var0) != [Property magic])
  {
    [_GCDevicePhysicalInputBase _stateTableForSlot:];
  }

  return Property;
}

- (unint64_t)view:(id)a3 primitiveValueForSlot:(unint64_t *)a4
{
  v5 = *a4;
  if ((*a4 & 0xFF0000000000) != 0x10000000000)
  {
    v8 = *a4;
    [_GCDevicePhysicalInputBase view:primitiveValueForSlot:];
  }

  if ((v5 & 0xFF00000000) == 0x300000000)
  {
    [(_GCDevicePhysicalInputBase *)self updateViewStateIfNeeded];
  }

  v6 = [(_GCDevicePhysicalInputBase *)self _stateTableForSlot:v5];

  return [v6 primitiveValueAtIndex:v5];
}

- (void)view:(id)a3 setPrimitiveValue:(unint64_t)a4 forSlot:(unint64_t *)a5
{
  v7 = *a5;
  if ((*a5 & 0xFF0000000000) != 0x10000000000)
  {
    v9 = *a5;
    [_GCDevicePhysicalInputBase view:setPrimitiveValue:forSlot:];
  }

  v8 = [(_GCDevicePhysicalInputBase *)self _stateTableForSlot:v7];

  [v8 setPrimitiveValue:a4 atIndex:v7];
}

- (BOOL)view:(id)a3 testAndSetPrimitiveValue:(unint64_t)a4 forSlot:(unint64_t *)a5
{
  v7 = *a5;
  if ((*a5 & 0xFF0000000000) != 0x10000000000)
  {
    v10 = *a5;
    [_GCDevicePhysicalInputBase view:testAndSetPrimitiveValue:forSlot:];
  }

  v8 = [(_GCDevicePhysicalInputBase *)self _stateTableForSlot:v7];

  return [v8 testAndSetPrimitiveValue:a4 atIndex:v7 previous:0];
}

- (id)view:(id)a3 objectValueForSlot:(unint64_t *)a4
{
  v5 = *a4;
  if ((*a4 & 0xFF0000000000) != 0x20000000000)
  {
    v8 = *a4;
    [_GCDevicePhysicalInputBase view:objectValueForSlot:];
  }

  if ((v5 & 0xFF00000000) == 0x300000000)
  {
    [(_GCDevicePhysicalInputBase *)self updateViewStateIfNeeded];
  }

  v6 = [(_GCDevicePhysicalInputBase *)self _stateTableForSlot:v5];

  return [v6 objectValueAtIndex:v5];
}

- (void)view:(id)a3 setObjectValue:(id)a4 forSlot:(unint64_t *)a5 policy:(unint64_t)a6
{
  v9 = *a5;
  if ((*a5 & 0xFF00000000) == 0x200000000)
  {

    [_GCDevicePhysicalInputBase view:"view:testAndSetObjectValue:forSlot:policy:" testAndSetObjectValue:a3 forSlot:? policy:?];
  }

  else
  {
    if ((v9 & 0xFF0000000000) != 0x20000000000)
    {
      v11 = *a5;
      [_GCDevicePhysicalInputBase view:setObjectValue:forSlot:policy:];
    }

    v10 = [(_GCDevicePhysicalInputBase *)self _stateTableForSlot:v9];

    [v10 setObjectValue:a4 atIndex:v9 policy:a6];
  }
}

- (BOOL)view:(id)a3 testAndSetObjectValue:(id)a4 forSlot:(unint64_t *)a5 policy:(unint64_t)a6
{
  v9 = *a5;
  if ((*a5 & 0xFF0000000000) != 0x20000000000)
  {
    v12 = *a5;
    [_GCDevicePhysicalInputBase view:testAndSetObjectValue:forSlot:policy:];
  }

  v10 = [(_GCDevicePhysicalInputBase *)self _stateTableForSlot:v9];

  return [v10 testAndSetObjectValue:a4 atIndex:v9 policy:a6 compareObjects:1 previous:0];
}

- (id)view:(id)a3 viewForSlot:(unint64_t *)a4
{
  v5 = *a4;
  if ((*a4 & 0xFF0000000000) != 0x30000000000)
  {
    v8 = *a4;
    [_GCDevicePhysicalInputBase view:viewForSlot:];
  }

  result = self->_additionalViews;
  if (result)
  {
    if (v5 >= CFArrayGetCount(result))
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"*** %s: index %u beyond bounds [0 .. %lu]", "-[_GCDevicePhysicalInputBase view:viewForSlot:]", v5, CFArrayGetCount(self->_additionalViews)), 0}];
      objc_exception_throw(v9);
    }

    additionalViews = self->_additionalViews;

    return CFArrayGetValueAtIndex(additionalViews, v5);
  }

  return result;
}

+ (id)debugDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)debugDescription
{
  v2 = self;
  v19 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ([(NSSet *)self->_attributes count])
    {
      attributes = v2->_attributes;
LABEL_4:
      v4 = [(NSArray *)[(NSSet *)attributes allObjects] componentsJoinedByString:@", "];
      goto LABEL_7;
    }
  }

  else if (![_GCDevicePhysicalInputBase debugDescription])
  {
    attributes = 0;
    goto LABEL_4;
  }

  v4 = @"default";
LABEL_7:
  v5 = MEMORY[0x1E696AD60];
  v6 = objc_opt_class();
  v7 = [v5 stringWithFormat:@"<%@ %p> '%@' {", NSStringFromClass(v6), v2, v4];
  if (v2)
  {
    [v7 appendFormat:@"\n\t%@", objc_msgSend(-[_GCDevicePhysicalInputFacade debugDescription](v2->_facade, "debugDescription"), "stringByReplacingOccurrencesOfString:withString:", @"\n", @"\n\t"];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = v2->_indexedElementViews;
  }

  else
  {
    [_GCDevicePhysicalInputBase debugDescription];
  }

  v8 = [(_GCDevicePhysicalInputBase *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v2);
        }

        [v7 appendFormat:@"\n\t%@", objc_msgSend(objc_msgSend(*(*(&v14 + 1) + 8 * i), "debugDescription"), "stringByReplacingOccurrencesOfString:withString:", @"\n", @"\n\t"];
      }

      v9 = [(_GCDevicePhysicalInputBase *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v7 appendString:@"\n}"];
  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (uint64_t)_elementForAlias:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [*(a1 + 40) objectForKey:a2];
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 unsignedIntegerValue];

  return [(_GCDevicePhysicalInputBase *)a1 _elementAtIndex:v4];
}

- (uint64_t)elements
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (id)elementsForProtocol:(id *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_8_2();
    if (v3)
    {
      v4 = [[_GCPhysicalInputFilteredElementCollection alloc] initWithCollection:v1 filter:?];

      return v4;
    }

    else
    {
      return *(v2 + 64);
    }
  }

  return result;
}

- (id)viewConfiguration
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_2(result, a2, 72);
  }

  return result;
}

- (uint64_t)viewProperties
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (id)viewState
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_2(result, a2, 88);
  }

  return result;
}

- (NSString)description
{
  if (self)
  {
    if ([(NSSet *)self->_attributes count])
    {
      attributes = self->_attributes;
LABEL_4:
      v4 = [(NSArray *)[(NSSet *)attributes allObjects] componentsJoinedByString:@", "];
      goto LABEL_7;
    }
  }

  else
  {
    v5 = [0 count];
    attributes = 0;
    if (v5)
    {
      goto LABEL_4;
    }
  }

  v4 = @"default";
LABEL_7:
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = [(_GCDevicePhysicalInputBase *)self isSnapshot];
  if (self)
  {
    indexedElementViews = self->_indexedElementViews;
  }

  else
  {
    indexedElementViews = 0;
  }

  if (v8)
  {
    v10 = @" Snapshot";
  }

  else
  {
    v10 = &stru_1F4E3B4E0;
  }

  return [v6 stringWithFormat:@"%@%@ '%@' (%zi elements)", v7, v10, v4, -[_GCDevicePhysicalInputElementsArray count](indexedElementViews, "count")];
}

- (uint64_t)attributes
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)facade
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (void)setViewConfiguration:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 72);
  }
}

- (void)setViewState:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 88);
  }
}

- (uint64_t)_initWithFacadeTemplate:elementsTemplates:attributes:context:.cold.1()
{
  OUTLINED_FUNCTION_8_2();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7_2();
  return [v0 handleFailureInMethod:"facadeTemplate != nil" object:? file:? lineNumber:? description:?];
}

- (uint64_t)_initWithFacadeTemplate:elementsTemplates:attributes:context:.cold.2()
{
  OUTLINED_FUNCTION_8_2();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7_2();
  return [v0 handleFailureInMethod:"context != nil" object:? file:? lineNumber:? description:?];
}

- (uint64_t)_initWithFacadeTemplate:elementsTemplates:attributes:context:.cold.3()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x1E696AAA8] currentHandler];
  v0 = objc_opt_class();
  v3 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_7_2();
  return [v1 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (uint64_t)_initWithFacadeTemplate:elementsTemplates:attributes:context:.cold.5()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x1E696AAA8] currentHandler];
  v0 = objc_opt_class();
  v3 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_7_2();
  return [v1 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (void)_stateTableForSlot:.cold.1()
{
  OUTLINED_FUNCTION_8_2();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  __break(1u);
}

- (uint64_t)_stateTableForSlot:.cold.2()
{
  OUTLINED_FUNCTION_8_2();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_7_2();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)view:primitiveValueForSlot:.cold.1()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_0_5();
  [MEMORY[0x1E696AAA8] currentHandler];
  v0 = OUTLINED_FUNCTION_5_2();
  NSStringFromClass(v0);
  OUTLINED_FUNCTION_3_2();
  [OUTLINED_FUNCTION_1_4() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  OUTLINED_FUNCTION_9_2();
}

- (void)view:setPrimitiveValue:forSlot:.cold.1()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_0_5();
  [MEMORY[0x1E696AAA8] currentHandler];
  v0 = OUTLINED_FUNCTION_5_2();
  NSStringFromClass(v0);
  OUTLINED_FUNCTION_3_2();
  [OUTLINED_FUNCTION_1_4() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  OUTLINED_FUNCTION_9_2();
}

- (void)view:testAndSetPrimitiveValue:forSlot:.cold.1()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_0_5();
  [MEMORY[0x1E696AAA8] currentHandler];
  v0 = OUTLINED_FUNCTION_5_2();
  NSStringFromClass(v0);
  OUTLINED_FUNCTION_3_2();
  [OUTLINED_FUNCTION_1_4() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  OUTLINED_FUNCTION_9_2();
}

- (void)view:objectValueForSlot:.cold.1()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_0_5();
  [MEMORY[0x1E696AAA8] currentHandler];
  v0 = OUTLINED_FUNCTION_5_2();
  NSStringFromClass(v0);
  OUTLINED_FUNCTION_3_2();
  [OUTLINED_FUNCTION_1_4() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  OUTLINED_FUNCTION_9_2();
}

- (void)view:setObjectValue:forSlot:policy:.cold.1()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_0_5();
  [MEMORY[0x1E696AAA8] currentHandler];
  v0 = OUTLINED_FUNCTION_5_2();
  NSStringFromClass(v0);
  OUTLINED_FUNCTION_3_2();
  [OUTLINED_FUNCTION_1_4() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  OUTLINED_FUNCTION_9_2();
}

- (void)view:testAndSetObjectValue:forSlot:policy:.cold.1()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_0_5();
  [MEMORY[0x1E696AAA8] currentHandler];
  v0 = OUTLINED_FUNCTION_5_2();
  NSStringFromClass(v0);
  OUTLINED_FUNCTION_3_2();
  [OUTLINED_FUNCTION_1_4() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  OUTLINED_FUNCTION_9_2();
}

- (void)view:viewForSlot:.cold.1()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_0_5();
  [MEMORY[0x1E696AAA8] currentHandler];
  v0 = OUTLINED_FUNCTION_5_2();
  NSStringFromClass(v0);
  OUTLINED_FUNCTION_3_2();
  [OUTLINED_FUNCTION_1_4() handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  OUTLINED_FUNCTION_9_2();
}

- (double)debugDescription
{
  OUTLINED_FUNCTION_8_2();
  [v1 appendFormat:@"\n\t%@", objc_msgSend(objc_msgSend(0, "debugDescription"), "stringByReplacingOccurrencesOfString:withString:", @"\n", @"\n\t"];
  result = 0.0;
  v0[2] = 0u;
  v0[3] = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

@end