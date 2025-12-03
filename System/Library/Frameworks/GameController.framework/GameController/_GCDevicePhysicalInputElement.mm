@interface _GCDevicePhysicalInputElement
+ (unsigned)updateContextSize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToElement:(id)element;
- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with;
- (NSString)localizedName;
- (NSString)sfSymbolsName;
- (_GCDevicePhysicalInputElement)initWithParameters:(id)parameters;
- (_GCDevicePhysicalInputElement)initWithTemplate:(id)template context:(id)context;
- (id)symbol;
- (uint64_t)_localizedName;
- (uint64_t)_setLocalizedName:(uint64_t)result;
- (uint64_t)_setSymbol:(uint64_t)result;
- (uint64_t)_symbol;
- (void)postCommit:(const void *)commit sender:(id)sender;
- (void)preCommit:(const void *)commit sender:(id)sender;
@end

@implementation _GCDevicePhysicalInputElement

- (_GCDevicePhysicalInputElement)initWithTemplate:(id)template context:(id)context
{
  v14.receiver = self;
  v14.super_class = _GCDevicePhysicalInputElement;
  contextCopy = context;
  templateCopy = template;
  v7 = [(_GCDevicePhysicalInputView *)&v14 initWithTemplate:templateCopy context:contextCopy];
  identifier = [templateCopy identifier];
  identifier = v7->_identifier;
  v7->_identifier = identifier;

  aliases = [templateCopy aliases];
  aliases = v7->_aliases;
  v7->_aliases = aliases;

  v7->_localizedNameSlot = [contextCopy view:v7 allocateObjectSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[3]];
  v12 = [contextCopy view:v7 allocateObjectSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[4]];

  v7->_symbolSlot = v12;
  return v7;
}

+ (unsigned)updateContextSize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS____GCDevicePhysicalInputElement;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 1;
}

- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with
{
  usagesCopy = usages;
  v17.receiver = self;
  v17.super_class = _GCDevicePhysicalInputElement;
  v9 = [_GCDevicePhysicalInputView update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_11;
  if (MyUpdateContext_Offset_11 == -1)
  {
    v10 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_11 = v10;
    if ((usagesCopy & 2) == 0)
    {
      return v9 & 1;
    }
  }

  else if ((usagesCopy & 2) == 0)
  {
    return v9 & 1;
  }

  _localizedName = [(_GCDevicePhysicalInputElement *)with _localizedName];
  if (self)
  {
    v13 = [(_GCDevicePhysicalInputView *)self _testAndSetObjectValue:_localizedName forSlot:&self->_localizedNameSlot policy:771];
  }

  else
  {
    v13 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFE | v13;

  _symbol = [(_GCDevicePhysicalInputElement *)with _symbol];
  if (self)
  {
    v15 = [(_GCDevicePhysicalInputView *)self _testAndSetObjectValue:_symbol forSlot:&self->_symbolSlot policy:771];
    if (v15)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFD | v16;
  v9 |= v13 | v15;

  return v9 & 1;
}

- (void)preCommit:(const void *)commit sender:(id)sender
{
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputElement;
  [(_GCDevicePhysicalInputView *)&v8 preCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_11;
  if (MyUpdateContext_Offset_11 == -1)
  {
    v6 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_11 = v6;
  }

  v7 = *(commit + v6);
  if (v7)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(commit + v6);
  }

  if ((v7 & 2) != 0)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  }
}

- (void)postCommit:(const void *)commit sender:(id)sender
{
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputElement;
  [(_GCDevicePhysicalInputView *)&v8 postCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_11;
  if (MyUpdateContext_Offset_11 == -1)
  {
    v6 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_11 = v6;
  }

  v7 = *(commit + v6);
  if (v7)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v7 = *(commit + v6);
  }

  if ((v7 & 2) != 0)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  }
}

- (BOOL)isEqualToElement:(id)element
{
  elementCopy = element;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(_GCDevicePhysicalInputElement *)a2 isEqualToElement:&v13];
    v11 = 0;
    identifier = v13;
LABEL_10:

    goto LABEL_11;
  }

  v6 = objc_opt_class();
  if ([v6 isEqual:objc_opt_class()])
  {
    identifier = [(_GCDevicePhysicalInputElement *)self identifier];
    identifier2 = [elementCopy identifier];
    if ([identifier isEqual:identifier2])
    {
      aliases = [(_GCDevicePhysicalInputElement *)self aliases];
      aliases2 = [elementCopy aliases];
      if ([aliases isEqual:aliases2])
      {
        [(_GCDevicePhysicalInputElement *)self isEqualToElement:elementCopy, &v14];
        v11 = v14;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_10;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(_GCDevicePhysicalInputElement *)self identifier];
    v6 = [identifier isEqualToString:equalCopy];
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = equalCopy;
    physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];
    physicalInput2 = [(_GCDevicePhysicalInputView *)identifier physicalInput];
    if (physicalInput | physicalInput2)
    {
      v7PhysicalInput = [physicalInput physicalInput];
      v8PhysicalInput = [physicalInput2 physicalInput];
      v11 = v8PhysicalInput;
      if (physicalInput == physicalInput2 || v7PhysicalInput == v8PhysicalInput)
      {
        identifier2 = [(_GCDevicePhysicalInputElement *)self identifier];
        v5Identifier = [identifier identifier];
        v6 = [identifier2 isEqualToString:v5Identifier];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = [(_GCDevicePhysicalInputElement *)self isEqualToElement:identifier];
    }

    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (_GCDevicePhysicalInputElement)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v6 = parametersCopy;
  if (!parametersCopy || !parametersCopy[1])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_GCDevicePhysicalInputElement.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %s", "parameters.identifier != nil"}];
  }

  v20.receiver = self;
  v20.super_class = _GCDevicePhysicalInputElement;
  v7 = [(_GCDevicePhysicalInputView *)&v20 initWithParameters:v6];
  if (v6)
  {
    v8 = *(v6 + 1);
    v9 = [v8 copy];
    identifier = v7->_identifier;
    v7->_identifier = v9;

    v11 = *(v6 + 2);
  }

  else
  {
    v18 = [0 copy];
    v19 = v7->_identifier;
    v7->_identifier = v18;

    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 copy];
  v14 = v13;
  if (!v13)
  {
    v14 = objc_opt_new();
  }

  objc_storeStrong(&v7->_aliases, v14);
  if (!v13)
  {
  }

  if (v6)
  {
    [(_GCDevicePhysicalInputView *)v7 _testAndSetObjectValue:&v7->_localizedNameSlot forSlot:771 policy:?];
    v15 = *(v6 + 4);
  }

  else
  {
    [(_GCDevicePhysicalInputView *)v7 _testAndSetObjectValue:&v7->_localizedNameSlot forSlot:771 policy:?];
    v15 = 0;
  }

  [(_GCDevicePhysicalInputView *)v7 _testAndSetObjectValue:v15 forSlot:&v7->_symbolSlot policy:771];

  return v7;
}

- (uint64_t)_setLocalizedName:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_26(result, a2, 24);
  }

  return result;
}

- (uint64_t)_setSymbol:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_26(result, a2, 32);
  }

  return result;
}

- (uint64_t)_localizedName
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_symbol
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (NSString)localizedName
{
  _localizedName = [(_GCDevicePhysicalInputElement *)self _localizedName];

  return _localizedName;
}

- (id)symbol
{
  _symbol = [(_GCDevicePhysicalInputElement *)self _symbol];

  return _symbol;
}

- (NSString)sfSymbolsName
{
  _symbol = [(_GCDevicePhysicalInputElement *)self _symbol];
  sfSymbolsName = [_symbol sfSymbolsName];

  return sfSymbolsName;
}

- (uint64_t)isEqualToElement:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"_GCDevicePhysicalInputElement.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %s", "[otherElement isKindOfClass:_GCDevicePhysicalInputElement.class]"}];
}

- (void)isEqualToElement:(char *)a3 .cold.2(uint64_t a1, uint64_t a2, char *a3)
{
  v15 = [(_GCDevicePhysicalInputElement *)a1 _localizedName];
  v8 = [(_GCDevicePhysicalInputElement *)a2 _localizedName];
  if (v15 == v8 || (v3 = -[_GCDevicePhysicalInputElement _localizedName](a1), v4 = -[_GCDevicePhysicalInputElement _localizedName](a2), ([v3 isEqual:v4] & 1) != 0))
  {
    v9 = [(_GCDevicePhysicalInputElement *)a1 _symbol];
    v10 = [(_GCDevicePhysicalInputElement *)a2 _symbol];
    v11 = v10;
    if (v9 == v10)
    {

      v12 = 1;
    }

    else
    {
      v13 = [(_GCDevicePhysicalInputElement *)a1 _symbol];
      v14 = [(_GCDevicePhysicalInputElement *)a2 _symbol];
      v12 = [v13 isEqual:v14];
    }

    if (v15 == v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_9:
  *a3 = v12;
}

@end