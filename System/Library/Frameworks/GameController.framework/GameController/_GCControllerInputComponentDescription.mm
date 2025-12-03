@interface _GCControllerInputComponentDescription
- (BOOL)update:(id)update withContext:(id)context;
- (_GCControllerInputComponentDescription)init;
- (_GCControllerInputComponentDescription)initWithCoder:(id)coder;
- (_GCControllerInputComponentDescription)initWithIdentifier:(id)identifier controllerInputs:(id)inputs bindings:(id)bindings;
- (id)createWithContext:(id)context;
- (id)materializeWithContext:(id)context;
- (void)_applyBinding:(id)binding toComponent:(id)component;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCControllerInputComponentDescription

- (_GCControllerInputComponentDescription)initWithIdentifier:(id)identifier controllerInputs:(id)inputs bindings:(id)bindings
{
  inputsCopy = inputs;
  v19.receiver = self;
  v19.super_class = _GCControllerInputComponentDescription;
  bindingsCopy = bindings;
  identifierCopy = identifier;
  v11 = [(_GCControllerInputComponentDescription *)&v19 init];
  v12 = [identifierCopy copyWithZone:{0, v19.receiver, v19.super_class}];

  identifier = v11->_identifier;
  v11->_identifier = v12;

  controllerInputDescriptions = v11->_controllerInputDescriptions;
  v11->_controllerInputDescriptions = inputsCopy;
  v15 = inputsCopy;

  v16 = [bindingsCopy copy];
  bindingDescriptions = v11->_bindingDescriptions;
  v11->_bindingDescriptions = v16;

  return v11;
}

- (_GCControllerInputComponentDescription)init
{
  [(_GCControllerInputComponentDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCControllerInputComponentDescription)initWithCoder:(id)coder
{
  v4 = initWithCoder__onceToken_0;
  coderCopy = coder;
  if (v4 != -1)
  {
    [_GCControllerInputComponentDescription initWithCoder:];
  }

  v6 = GCIPCObjectIdentifier_Classes();
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];

  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"input"];

  v10 = [coderCopy decodeObjectOfClasses:initWithCoder__BindingClasses_0 forKey:@"bindings"];

  v11 = [(_GCControllerInputComponentDescription *)self initWithIdentifier:v7 controllerInputs:v9 bindings:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_controllerInputDescriptions forKey:@"input"];
  [coderCopy encodeObject:self->_bindingDescriptions forKey:@"bindings"];
}

- (id)materializeWithContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  materializedInputComponent = self->_materializedInputComponent;
  if (materializedInputComponent)
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
    v16 = [(_GCControllerInputComponentDescription *)self createWithContext:contextCopy];
    v17 = self->_materializedInputComponent;
    self->_materializedInputComponent = v16;

    if (self->_materializedInputComponent)
    {
      [(_GCControllerInputComponentDescription *)self _applyBinding:v7 toComponent:?];

      materializedInputComponent = self->_materializedInputComponent;
LABEL_2:
      v6 = materializedInputComponent;
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
  makeFacadeParameters = [(GCDevicePhysicalInputDescription *)self->_controllerInputDescriptions makeFacadeParameters];
  elements = [(_GCControllerInputDescription *)self->_controllerInputDescriptions elements];
  v6 = [elements gc_arrayByTransformingElementsUsingBlock:&__block_literal_global_224_0];

  v7 = [[_GCControllerInputComponent alloc] initWithIdentifier:self->_identifier templateFacadeParameters:makeFacadeParameters templateElementParameters:v6];

  return v7;
}

- (BOOL)update:(id)update withContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  contextCopy = context;
  identifier = [updateCopy identifier];
  identifier2 = [(_GCControllerInputComponentDescription *)self identifier];
  v11 = [identifier isEqual:identifier2];

  if ((v11 & 1) == 0)
  {
    [_GCControllerInputComponentDescription update:a2 withContext:self];
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
    [(_GCControllerInputComponentDescription *)self _applyBinding:v12 toComponent:updateCopy];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20 == v21;
}

- (void)_applyBinding:(id)binding toComponent:(id)component
{
  v30 = *MEMORY[0x1E69E9840];
  bindingCopy = binding;
  componentCopy = component;
  if ([componentCopy conformsToProtocol:&unk_1F4E94BA0])
  {
    [componentCopy setGamepadEventSource:0];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = bindingCopy;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          if ([v12 conformsToProtocol:&unk_1F4E97280])
          {
            [componentCopy setGamepadEventSource:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }
  }

  if ([componentCopy conformsToProtocol:&unk_1F4E9EE30])
  {
    [componentCopy setCollectionEventSource:0];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = bindingCopy;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v20 + 1) + 8 * j);
          if ([v18 conformsToProtocol:{&unk_1F4E9D8A0, v20}])
          {
            [componentCopy setCollectionEventSource:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)update:(uint64_t)a1 withContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCControllerInputComponent.m" lineNumber:671 description:&stru_1F4E3B4E0];
}

@end