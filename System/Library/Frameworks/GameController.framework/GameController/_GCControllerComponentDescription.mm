@interface _GCControllerComponentDescription
- (BOOL)update:(id)update withContext:(id)context;
- (NSString)debugDescription;
- (NSString)description;
- (_GCControllerComponentDescription)init;
- (_GCControllerComponentDescription)initWithCoder:(id)coder;
- (_GCControllerComponentDescription)initWithComponent:(id)component bindings:(id)bindings;
- (id)materializeWithContext:(id)context;
- (id)redactedDescription;
- (void)_applyBinding:(id)binding toComponent:(id)component;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCControllerComponentDescription

- (_GCControllerComponentDescription)initWithComponent:(id)component bindings:(id)bindings
{
  componentCopy = component;
  bindingsCopy = bindings;
  v14.receiver = self;
  v14.super_class = _GCControllerComponentDescription;
  v9 = [(_GCControllerComponentDescription *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_component, component);
    v11 = [bindingsCopy copy];
    bindingDescriptions = v10->_bindingDescriptions;
    v10->_bindingDescriptions = v11;
  }

  return v10;
}

- (_GCControllerComponentDescription)init
{
  [(_GCControllerComponentDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCControllerComponentDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _GCControllerComponentDescription;
  v5 = [(_GCControllerComponentDescription *)&v13 init];
  if (v5)
  {
    if (initWithCoder__onceToken != -1)
    {
      [_GCControllerComponentDescription initWithCoder:];
    }

    v6 = GCControllerComponent_Classes();
    v7 = [v6 setByAddingObject:objc_opt_class()];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"component"];
    component = v5->_component;
    v5->_component = v8;

    v10 = [coderCopy decodeObjectOfClasses:initWithCoder__BindingClasses forKey:@"bindings"];
    bindingDescriptions = v5->_bindingDescriptions;
    v5->_bindingDescriptions = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bindingDescriptions = self->_bindingDescriptions;
  coderCopy = coder;
  [coderCopy encodeObject:bindingDescriptions forKey:@"bindings"];
  [coderCopy encodeObject:self->_component forKey:@"component"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(_GCControllerComponentDescription *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@ '%@'>", v5, identifier];

  return v7;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(_GCControllerComponentDescription *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@ '#%llx'>", v5, objc_msgSend(identifier, "hash")];

  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(_GCControllerComponentDescription *)self identifier];
  v7 = [(GCControllerComponent *)self->_component debugDescription];
  v8 = [(NSArray *)self->_bindingDescriptions debugDescription];
  v9 = [v3 stringWithFormat:@"<%@ %p '%@'> {\n\tcomponent: %@\n\tbindings: %@\n}", v5, self, identifier, v7, v8];

  return v9;
}

- (id)materializeWithContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  materializedComponent = self->_materializedComponent;
  if (materializedComponent)
  {
    goto LABEL_12;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_bindingDescriptions, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_bindingDescriptions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [*(*(&v18 + 1) + 8 * v11) materializeWithContext:{contextCopy, v18}];
      if (!v12)
      {
        break;
      }

      v13 = v12;
      [v6 addObject:v12];

      if (v9 == ++v11)
      {
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  v14 = [v6 count];
  if (v14 == [(NSArray *)self->_bindingDescriptions count])
  {
    [(_GCControllerComponentDescription *)self _applyBinding:v6 toComponent:self->_component];
    objc_storeStrong(&self->_materializedComponent, self->_component);

    materializedComponent = self->_materializedComponent;
LABEL_12:
    v15 = materializedComponent;
    goto LABEL_13;
  }

  v15 = 0;
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)update:(id)update withContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  contextCopy = context;
  identifier = [updateCopy identifier];
  identifier2 = [(_GCControllerComponentDescription *)self identifier];
  v11 = [identifier isEqual:identifier2];

  if ((v11 & 1) == 0)
  {
    [_GCControllerComponentDescription update:a2 withContext:self];
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
    [(_GCControllerComponentDescription *)self _applyBinding:v12 toComponent:updateCopy];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20 == v21;
}

- (void)_applyBinding:(id)binding toComponent:(id)component
{
  v53 = *MEMORY[0x1E69E9840];
  bindingCopy = binding;
  componentCopy = component;
  if ([componentCopy conformsToProtocol:&unk_1F4EB3468])
  {
    [(GCControllerComponent *)self->_component setHIDEventSource:0];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v8 = bindingCopy;
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v46;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v45 + 1) + 8 * i);
          if ([v13 conformsToProtocol:&unk_1F4E94AA8])
          {
            [(GCControllerComponent *)self->_component setHIDEventSource:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v10);
    }
  }

  if ([componentCopy conformsToProtocol:&unk_1F4E94BA0])
  {
    [(GCControllerComponent *)self->_component setGamepadEventSource:0];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v14 = bindingCopy;
    v15 = [v14 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v41 + 1) + 8 * j);
          if ([v19 conformsToProtocol:&unk_1F4E97280])
          {
            [(GCControllerComponent *)self->_component setGamepadEventSource:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v16);
    }
  }

  if ([componentCopy conformsToProtocol:&unk_1F4EA7458])
  {
    [(GCControllerComponent *)self->_component setKeyboardEventSource:0];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = bindingCopy;
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v50 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v37 + 1) + 8 * k);
          if ([v25 conformsToProtocol:&unk_1F4E90688])
          {
            [(GCControllerComponent *)self->_component setKeyboardEventSource:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v50 count:16];
      }

      while (v22);
    }
  }

  if ([componentCopy conformsToProtocol:&unk_1F4E9D470])
  {
    [(GCControllerComponent *)self->_component setMotionEventSource:0];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = bindingCopy;
    v27 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v34;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v33 + 1) + 8 * m);
          if ([v31 conformsToProtocol:{&unk_1F4EA40F8, v33}])
          {
            [(GCControllerComponent *)self->_component setMotionEventSource:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
      }

      while (v28);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)update:(uint64_t)a1 withContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCControllerComponent.m" lineNumber:149 description:&stru_1F4E3B4E0];
}

@end