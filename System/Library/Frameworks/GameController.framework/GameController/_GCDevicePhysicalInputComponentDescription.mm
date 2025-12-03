@interface _GCDevicePhysicalInputComponentDescription
- (BOOL)update:(id)update withContext:(id)context;
- (_GCDevicePhysicalInputComponentDescription)init;
- (_GCDevicePhysicalInputComponentDescription)initWithCoder:(id)coder;
- (_GCDevicePhysicalInputComponentDescription)initWithIdentifier:(id)identifier elements:(id)elements bindings:(id)bindings;
- (id)createWithContext:(id)context;
- (id)materializeWithContext:(id)context;
- (void)_applyBinding:(id)binding toComponent:(id)component;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCDevicePhysicalInputComponentDescription

- (_GCDevicePhysicalInputComponentDescription)initWithIdentifier:(id)identifier elements:(id)elements bindings:(id)bindings
{
  v18.receiver = self;
  v18.super_class = _GCDevicePhysicalInputComponentDescription;
  bindingsCopy = bindings;
  elementsCopy = elements;
  identifierCopy = identifier;
  v10 = [(_GCDevicePhysicalInputComponentDescription *)&v18 init];
  v11 = [identifierCopy copyWithZone:{0, v18.receiver, v18.super_class}];

  identifier = v10->_identifier;
  v10->_identifier = v11;

  v13 = [elementsCopy copy];
  elementDescriptions = v10->_elementDescriptions;
  v10->_elementDescriptions = v13;

  v15 = [bindingsCopy copy];
  bindingDescriptions = v10->_bindingDescriptions;
  v10->_bindingDescriptions = v15;

  return v10;
}

- (_GCDevicePhysicalInputComponentDescription)init
{
  [(_GCDevicePhysicalInputComponentDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCDevicePhysicalInputComponentDescription)initWithCoder:(id)coder
{
  v4 = initWithCoder__onceToken_1;
  coderCopy = coder;
  if (v4 != -1)
  {
    [_GCDevicePhysicalInputComponentDescription initWithCoder:];
  }

  v6 = GCIPCObjectIdentifier_Classes();
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"elements"];

  v12 = [coderCopy decodeObjectOfClasses:initWithCoder__BindingClasses_1 forKey:@"bindings"];

  v13 = [(_GCDevicePhysicalInputComponentDescription *)self initWithIdentifier:v7 elements:v11 bindings:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_elementDescriptions forKey:@"elements"];
  [coderCopy encodeObject:self->_bindingDescriptions forKey:@"bindings"];
}

- (id)materializeWithContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  materializedInputProfile = self->_materializedInputProfile;
  if (materializedInputProfile)
  {
    goto LABEL_2;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_bindingDescriptions, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_bindingDescriptions;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = [*(*(&v20 + 1) + 8 * v12) materializeWithContext:{contextCopy, v20}];
      if (!v13)
      {
        break;
      }

      v14 = v13;
      [v7 addObject:v13];

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v15 = [v7 count];
  if (v15 == [(NSArray *)self->_bindingDescriptions count])
  {
    v16 = [(_GCDevicePhysicalInputComponentDescription *)self createWithContext:contextCopy];
    v17 = self->_materializedInputProfile;
    self->_materializedInputProfile = v16;

    if (self->_materializedInputProfile)
    {
      [(_GCDevicePhysicalInputComponentDescription *)self _applyBinding:v7 toComponent:?];

      materializedInputProfile = self->_materializedInputProfile;
LABEL_2:
      v6 = materializedInputProfile;
      goto LABEL_15;
    }
  }

  v6 = 0;
LABEL_15:

  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)createWithContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [GCPhysicalInputProfile alloc];
  identifier = [(_GCDevicePhysicalInputComponentDescription *)self identifier];
  v6 = [(GCPhysicalInputProfile *)v4 initWithIdentifier:identifier];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_elementDescriptions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [(GCPhysicalInputProfile *)v6 _buttonWithDescription:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [(GCPhysicalInputProfile *)v6 _directionPadWithDescription:v12, v17];
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)update:(id)update withContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  contextCopy = context;
  identifier = [updateCopy identifier];
  identifier2 = [(_GCDevicePhysicalInputComponentDescription *)self identifier];
  v11 = [identifier isEqual:identifier2];

  if ((v11 & 1) == 0)
  {
    [_GCDevicePhysicalInputComponentDescription update:a2 withContext:self];
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_bindingDescriptions, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_bindingDescriptions;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v25 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = [*(*(&v24 + 1) + 8 * v17) materializeWithContext:{contextCopy, v24}];
      if (!v18)
      {
        break;
      }

      v19 = v18;
      [v12 addObject:v18];

      if (v15 == ++v17)
      {
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v15)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v20 = [v12 count];
  v21 = [(NSArray *)self->_bindingDescriptions count];
  if (v20 == v21)
  {
    [(_GCDevicePhysicalInputComponentDescription *)self _applyBinding:v12 toComponent:updateCopy];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20 == v21;
}

- (void)_applyBinding:(id)binding toComponent:(id)component
{
  v31 = *MEMORY[0x1E69E9840];
  bindingCopy = binding;
  componentCopy = component;
  if ([componentCopy conformsToProtocol:&unk_1F4E94BA0])
  {
    [(GCPhysicalInputProfile *)self->_materializedInputProfile setGamepadEventSource:0];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = bindingCopy;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          if ([v13 conformsToProtocol:&unk_1F4E97280])
          {
            [(GCPhysicalInputProfile *)self->_materializedInputProfile setGamepadEventSource:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }
  }

  if ([componentCopy conformsToProtocol:&unk_1F4EA7458])
  {
    [(GCPhysicalInputProfile *)self->_materializedInputProfile setKeyboardEventSource:0];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = bindingCopy;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * j);
          if ([v19 conformsToProtocol:{&unk_1F4E90688, v21}])
          {
            [(GCPhysicalInputProfile *)self->_materializedInputProfile setKeyboardEventSource:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)update:(uint64_t)a1 withContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCPhysicalInputProfile.m" lineNumber:1373 description:&stru_1F4E3B4E0];
}

@end