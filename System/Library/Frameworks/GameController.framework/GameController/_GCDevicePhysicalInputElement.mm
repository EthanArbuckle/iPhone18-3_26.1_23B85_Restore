@interface _GCDevicePhysicalInputElement
+ (unsigned)updateContextSize;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToElement:(id)a3;
- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5;
- (NSString)localizedName;
- (NSString)sfSymbolsName;
- (_GCDevicePhysicalInputElement)initWithParameters:(id)a3;
- (_GCDevicePhysicalInputElement)initWithTemplate:(id)a3 context:(id)a4;
- (id)symbol;
- (uint64_t)_localizedName;
- (uint64_t)_setLocalizedName:(uint64_t)result;
- (uint64_t)_setSymbol:(uint64_t)result;
- (uint64_t)_symbol;
- (void)postCommit:(const void *)a3 sender:(id)a4;
- (void)preCommit:(const void *)a3 sender:(id)a4;
@end

@implementation _GCDevicePhysicalInputElement

- (_GCDevicePhysicalInputElement)initWithTemplate:(id)a3 context:(id)a4
{
  v14.receiver = self;
  v14.super_class = _GCDevicePhysicalInputElement;
  v5 = a4;
  v6 = a3;
  v7 = [(_GCDevicePhysicalInputView *)&v14 initWithTemplate:v6 context:v5];
  v8 = [v6 identifier];
  identifier = v7->_identifier;
  v7->_identifier = v8;

  v10 = [v6 aliases];
  aliases = v7->_aliases;
  v7->_aliases = v10;

  v7->_localizedNameSlot = [v5 view:v7 allocateObjectSlot:1 withCopyOfValueFromView:v6 slot:v6[3]];
  v12 = [v5 view:v7 allocateObjectSlot:1 withCopyOfValueFromView:v6 slot:v6[4]];

  v7->_symbolSlot = v12;
  return v7;
}

+ (unsigned)updateContextSize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS____GCDevicePhysicalInputElement;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 1;
}

- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = _GCDevicePhysicalInputElement;
  v9 = [_GCDevicePhysicalInputView update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_11;
  if (MyUpdateContext_Offset_11 == -1)
  {
    v10 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_11 = v10;
    if ((v6 & 2) == 0)
    {
      return v9 & 1;
    }
  }

  else if ((v6 & 2) == 0)
  {
    return v9 & 1;
  }

  v12 = [(_GCDevicePhysicalInputElement *)a5 _localizedName];
  if (self)
  {
    v13 = [(_GCDevicePhysicalInputView *)self _testAndSetObjectValue:v12 forSlot:&self->_localizedNameSlot policy:771];
  }

  else
  {
    v13 = 0;
  }

  *(a3 + v10) = *(a3 + v10) & 0xFE | v13;

  v14 = [(_GCDevicePhysicalInputElement *)a5 _symbol];
  if (self)
  {
    v15 = [(_GCDevicePhysicalInputView *)self _testAndSetObjectValue:v14 forSlot:&self->_symbolSlot policy:771];
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

  *(a3 + v10) = *(a3 + v10) & 0xFD | v16;
  v9 |= v13 | v15;

  return v9 & 1;
}

- (void)preCommit:(const void *)a3 sender:(id)a4
{
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputElement;
  [(_GCDevicePhysicalInputView *)&v8 preCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_11;
  if (MyUpdateContext_Offset_11 == -1)
  {
    v6 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_11 = v6;
  }

  v7 = *(a3 + v6);
  if (v7)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(a3 + v6);
  }

  if ((v7 & 2) != 0)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  }
}

- (void)postCommit:(const void *)a3 sender:(id)a4
{
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputElement;
  [(_GCDevicePhysicalInputView *)&v8 postCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_11;
  if (MyUpdateContext_Offset_11 == -1)
  {
    v6 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_11 = v6;
  }

  v7 = *(a3 + v6);
  if (v7)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v7 = *(a3 + v6);
  }

  if ((v7 & 2) != 0)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  }
}

- (BOOL)isEqualToElement:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(_GCDevicePhysicalInputElement *)a2 isEqualToElement:&v13];
    v11 = 0;
    v7 = v13;
LABEL_10:

    goto LABEL_11;
  }

  v6 = objc_opt_class();
  if ([v6 isEqual:objc_opt_class()])
  {
    v7 = [(_GCDevicePhysicalInputElement *)self identifier];
    v8 = [v5 identifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(_GCDevicePhysicalInputElement *)self aliases];
      v10 = [v5 aliases];
      if ([v9 isEqual:v10])
      {
        [(_GCDevicePhysicalInputElement *)self isEqualToElement:v5, &v14];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_GCDevicePhysicalInputElement *)self identifier];
    v6 = [v5 isEqualToString:v4];
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v7 = [(_GCDevicePhysicalInputView *)self physicalInput];
    v8 = [(_GCDevicePhysicalInputView *)v5 physicalInput];
    if (v7 | v8)
    {
      v9 = [v7 physicalInput];
      v10 = [v8 physicalInput];
      v11 = v10;
      if (v7 == v8 || v9 == v10)
      {
        v12 = [(_GCDevicePhysicalInputElement *)self identifier];
        v13 = [v5 identifier];
        v6 = [v12 isEqualToString:v13];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = [(_GCDevicePhysicalInputElement *)self isEqualToElement:v5];
    }

    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (_GCDevicePhysicalInputElement)initWithParameters:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5 || !v5[1])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_GCDevicePhysicalInputElement.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %s", "parameters.identifier != nil"}];
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
  v2 = [(_GCDevicePhysicalInputElement *)self _localizedName];

  return v2;
}

- (id)symbol
{
  v2 = [(_GCDevicePhysicalInputElement *)self _symbol];

  return v2;
}

- (NSString)sfSymbolsName
{
  v2 = [(_GCDevicePhysicalInputElement *)self _symbol];
  v3 = [v2 sfSymbolsName];

  return v3;
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