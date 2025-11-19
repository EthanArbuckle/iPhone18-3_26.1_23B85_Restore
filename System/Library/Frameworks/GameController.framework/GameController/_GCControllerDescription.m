@interface _GCControllerDescription
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDescription:(id)a3;
- (BOOL)update:(id)a3 withContext:(id)a4;
- (NSString)debugDescription;
- (NSString)description;
- (_GCControllerDescription)init;
- (_GCControllerDescription)initWithCoder:(id)a3;
- (_GCControllerDescription)initWithIdentifier:(id)a3 components:(id)a4;
- (id)materializeWithContext:(id)a3;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _GCControllerDescription

- (_GCControllerDescription)initWithIdentifier:(id)a3 components:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _GCControllerDescription;
  v8 = [(_GCControllerDescription *)&v14 init];
  if (v8)
  {
    v9 = [v6 copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    componentDescriptions = v8->_componentDescriptions;
    v8->_componentDescriptions = v11;
  }

  return v8;
}

- (_GCControllerDescription)init
{
  [(_GCControllerDescription *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCControllerDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _GCControllerDescription;
  v5 = [(_GCControllerDescription *)&v14 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = _GCControllerComponentDescription_Classes();
    v10 = [v9 setByAddingObject:objc_opt_class()];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"components"];
    componentDescriptions = v5->_componentDescriptions;
    v5->_componentDescriptions = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  componentDescriptions = self->_componentDescriptions;
  v5 = a3;
  [v5 encodeObject:componentDescriptions forKey:@"components"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
}

- (BOOL)isEqualToDescription:(id)a3
{
  v4 = a3;
  if ([(NSCopying *)self->_identifier isEqual:v4[1]])
  {
    v5 = [(NSArray *)self->_componentDescriptions isEqualToArray:v4[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_GCControllerDescription *)self isEqualToDescription:v4];
  }

  else
  {
    identifier = self->_identifier;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = [(NSCopying *)self->_identifier isEqual:v4];
  }

  v7 = v5;
LABEL_7:

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ '%@'>", v5, self->_identifier];

  return v6;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ '#%llx'>", v5, -[NSCopying hash](self->_identifier, "hash")];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p '%@'> %@", v5, self, self->_identifier, self->_componentDescriptions];

  return v6;
}

- (id)materializeWithContext:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  materializedController = self->_materializedController;
  if (!materializedController)
  {
    v6 = self->_identifier;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_componentDescriptions, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = self->_componentDescriptions;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v21 + 1) + 8 * v12) materializeWithContext:{v4, v21}];
        if (!v13)
        {
          break;
        }

        v14 = v13;
        [v7 addObject:v13];

        if (v10 == ++v12)
        {
          v10 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      if (objc_opt_respondsToSelector())
      {
        v8 = [v4 targetQueue];
      }

      else
      {
        v8 = 0;
      }

      v15 = [objc_alloc(objc_msgSend(objc_opt_class() "controllerClass"))];
      v16 = self->_materializedController;
      self->_materializedController = v15;

      if (self->_materializedController && [v4 conformsToProtocol:&unk_1F4EA1E20])
      {
        v17 = [v4 IPCObjectRegistry];
        [v17 registerIPCObject:self->_materializedController];
      }
    }

    materializedController = self->_materializedController;
  }

  v18 = materializedController;

  v19 = *MEMORY[0x1E69E9840];
  return materializedController;
}

- (BOOL)update:(id)a3 withContext:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v40 = a4;
  v8 = [v7 identifier];
  v46 = self;
  v9 = [v8 isEqual:self->_identifier];

  if ((v9 & 1) == 0)
  {
    [_GCControllerDescription update:a2 withContext:self];
  }

  v41 = v7;
  v10 = [v7 components];
  v42 = [v10 mutableCopy];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v11)
  {
    v12 = v11;
    v44 = *v57;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v57 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v56 + 1) + 8 * i);
        v15 = [v14 identifier];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v16 = v46->_componentDescriptions;
        v17 = [(NSArray *)v16 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v53;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v53 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v52 + 1) + 8 * j) identifier];
              v22 = [v15 isEqual:v21];

              if (v22)
              {

                goto LABEL_18;
              }
            }

            v18 = [(NSArray *)v16 countByEnumeratingWithState:&v52 objects:v61 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        [v42 removeObject:v14];
LABEL_18:
      }

      v12 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    }

    while (v12);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v45 = v46->_componentDescriptions;
  v23 = [(NSArray *)v45 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v23)
  {
    v24 = v23;
    v47 = *v49;
    do
    {
      v25 = 0;
      do
      {
        if (*v49 != v47)
        {
          objc_enumerationMutation(v45);
        }

        v26 = *(*(&v48 + 1) + 8 * v25);
        v27 = [v26 identifier];
        if (![v42 count])
        {
          goto LABEL_34;
        }

        v28 = 0;
        while (1)
        {
          v29 = [obj objectAtIndexedSubscript:v28];
          v30 = [v29 identifier];
          v31 = [v27 isEqual:v30];

          if (v31)
          {
            break;
          }

          if (++v28 >= [v42 count])
          {
            goto LABEL_34;
          }
        }

        if (!v29)
        {
LABEL_34:
          v32 = [v26 materializeWithContext:v40];
          if (!v32)
          {
            goto LABEL_44;
          }

          v33 = v32;
          [v42 addObject:v32];
          v29 = 0;
LABEL_36:

          goto LABEL_37;
        }

        if (![v26 conformsToProtocol:&unk_1F4E98670])
        {
          v34 = [v26 materializeWithContext:v40];
          if (!v34)
          {
LABEL_43:

LABEL_44:
            v37 = 0;
            v36 = v41;
            goto LABEL_45;
          }

          v33 = v34;
          [v42 replaceObjectAtIndex:v28 withObject:v34];
          goto LABEL_36;
        }

        if (([v26 update:v29 withContext:v40] & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_37:

        ++v25;
      }

      while (v25 != v24);
      v35 = [(NSArray *)v45 countByEnumeratingWithState:&v48 objects:v60 count:16];
      v24 = v35;
    }

    while (v35);
  }

  v36 = v41;
  [v41 setComponents:v42];
  v37 = 1;
LABEL_45:

  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

- (void)update:(uint64_t)a1 withContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCController.m" lineNumber:827 description:&stru_1F4E3B4E0];
}

@end