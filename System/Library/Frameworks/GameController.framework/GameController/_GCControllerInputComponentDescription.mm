@interface _GCControllerInputComponentDescription
- (BOOL)update:(id)a3 withContext:(id)a4;
- (_GCControllerInputComponentDescription)init;
- (_GCControllerInputComponentDescription)initWithCoder:(id)a3;
- (_GCControllerInputComponentDescription)initWithIdentifier:(id)a3 controllerInputs:(id)a4 bindings:(id)a5;
- (id)createWithContext:(id)a3;
- (id)materializeWithContext:(id)a3;
- (void)_applyBinding:(id)a3 toComponent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _GCControllerInputComponentDescription

- (_GCControllerInputComponentDescription)initWithIdentifier:(id)a3 controllerInputs:(id)a4 bindings:(id)a5
{
  v8 = a4;
  v19.receiver = self;
  v19.super_class = _GCControllerInputComponentDescription;
  v9 = a5;
  v10 = a3;
  v11 = [(_GCControllerInputComponentDescription *)&v19 init];
  v12 = [v10 copyWithZone:{0, v19.receiver, v19.super_class}];

  identifier = v11->_identifier;
  v11->_identifier = v12;

  controllerInputDescriptions = v11->_controllerInputDescriptions;
  v11->_controllerInputDescriptions = v8;
  v15 = v8;

  v16 = [v9 copy];
  bindingDescriptions = v11->_bindingDescriptions;
  v11->_bindingDescriptions = v16;

  return v11;
}

- (_GCControllerInputComponentDescription)init
{
  [(_GCControllerInputComponentDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCControllerInputComponentDescription)initWithCoder:(id)a3
{
  v4 = initWithCoder__onceToken_0;
  v5 = a3;
  if (v4 != -1)
  {
    [_GCControllerInputComponentDescription initWithCoder:];
  }

  v6 = GCIPCObjectIdentifier_Classes();
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"identifier"];

  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"input"];

  v10 = [v5 decodeObjectOfClasses:initWithCoder__BindingClasses_0 forKey:@"bindings"];

  v11 = [(_GCControllerInputComponentDescription *)self initWithIdentifier:v7 controllerInputs:v9 bindings:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_controllerInputDescriptions forKey:@"input"];
  [v5 encodeObject:self->_bindingDescriptions forKey:@"bindings"];
}

- (id)materializeWithContext:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

      v13 = [*(*(&v20 + 1) + 8 * v12) materializeWithContext:{v4, v20}];
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
    v16 = [(_GCControllerInputComponentDescription *)self createWithContext:v4];
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

- (id)createWithContext:(id)a3
{
  v4 = [(GCDevicePhysicalInputDescription *)self->_controllerInputDescriptions makeFacadeParameters];
  v5 = [(_GCControllerInputDescription *)self->_controllerInputDescriptions elements];
  v6 = [v5 gc_arrayByTransformingElementsUsingBlock:&__block_literal_global_224_0];

  v7 = [[_GCControllerInputComponent alloc] initWithIdentifier:self->_identifier templateFacadeParameters:v4 templateElementParameters:v6];

  return v7;
}

- (BOOL)update:(id)a3 withContext:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 identifier];
  v10 = [(_GCControllerInputComponentDescription *)self identifier];
  v11 = [v9 isEqual:v10];

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

      v18 = [*(*(&v24 + 1) + 8 * v17) materializeWithContext:{v8, v24}];
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
    [(_GCControllerInputComponentDescription *)self _applyBinding:v12 toComponent:v7];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20 == v21;
}

- (void)_applyBinding:(id)a3 toComponent:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 conformsToProtocol:&unk_1F4E94BA0])
  {
    [v6 setGamepadEventSource:0];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v5;
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
            [v6 setGamepadEventSource:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }
  }

  if ([v6 conformsToProtocol:&unk_1F4E9EE30])
  {
    [v6 setCollectionEventSource:0];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v5;
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
            [v6 setCollectionEventSource:v18];
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