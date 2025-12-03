@interface AUParameterGroup
- (AUParameterGroup)initWithCoder:(id)coder;
- (AUParameterGroup)initWithID:(id)d name:(id)name children:(id)children;
- (AUParameterGroup)initWithTemplate:(id)template identifier:(id)identifier name:(id)name addressOffset:(unint64_t)offset;
- (NSArray)allParameters;
- (id)copyNodeWithOffset:(unint64_t)offset;
- (id)valueForKey:(id)key;
- (void)_indexChildren;
- (void)_serialize:(CASerializer *)_serialize;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AUParameterGroup

- (void)_serialize:(CASerializer *)_serialize
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  children = [(AUParameterGroup *)self children];
  v5 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(children);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        isGroup = [v8 isGroup];
        CASerializer::Write(_serialize, &isGroup);
        identifier = [v8 identifier];
        v12 = identifier;
        operator<<();

        if (isGroup)
        {
          [v8 _serialize:_serialize];
        }

        else
        {
          [v8 value];
          LODWORD(v12) = v10;
          CASerializer::Write(_serialize, &v12);
        }
      }

      v5 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  LOBYTE(v12) = -1;
  CASerializer::Write(_serialize, &v12);
  v11 = *MEMORY[0x1E69E9840];
}

- (AUParameterGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  {
    v15 = objc_alloc(MEMORY[0x1E695DFD8]);
    v16 = objc_opt_self();
    v17 = objc_opt_self();
    v18 = objc_opt_self();
    -[AUParameterGroup initWithCoder:]::childIndexClasses = [v15 initWithObjects:{v16, v17, v18, 0}];
  }

  {
    v19 = objc_alloc(MEMORY[0x1E695DFD8]);
    v20 = objc_opt_self();
    v21 = objc_opt_self();
    v22 = objc_opt_self();
    v23 = objc_opt_self();
    v24 = objc_opt_self();
    -[AUParameterGroup initWithCoder:]::childrenClasses = [v19 initWithObjects:{v20, v21, v22, v23, v24, 0}];
  }

  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"id"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"name"];

  v25.receiver = self;
  v25.super_class = AUParameterGroup;
  v9 = [(AUParameterNode *)&v25 initWithID:v6 name:v8];
  if (v9)
  {
    v10 = [coderCopy decodeObjectOfClasses:-[AUParameterGroup initWithCoder:]::childIndexClasses forKey:@"childIndex"];
    childIndicesByIdentifier = v9->_childIndicesByIdentifier;
    v9->_childIndicesByIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClasses:-[AUParameterGroup initWithCoder:]::childrenClasses forKey:@"children"];
    children = v9->_children;
    v9->_children = v12;

    [(AUParameterGroup *)v9 _indexChildren];
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(AUParameterNode *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"id"];

  displayName = [(AUParameterNode *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"name"];

  [coderCopy encodeObject:self->_childIndicesByIdentifier forKey:@"childIndex"];
  children = [(AUParameterGroup *)self children];
  [coderCopy encodeObject:children forKey:@"children"];
}

- (id)valueForKey:(id)key
{
  v4 = [(NSMutableDictionary *)self->_childIndicesByIdentifier objectForKey:key];
  v5 = v4;
  if (v4 && (v6 = [v4 unsignedIntegerValue], -[AUParameterGroup children](self, "children"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 < v8))
  {
    children = [(AUParameterGroup *)self children];
    v10 = [children objectAtIndexedSubscript:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSArray)allParameters
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_children;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isGroup])
        {
          allParameters = [v8 allParameters];
          [array addObjectsFromArray:allParameters];
        }

        else
        {
          [array addObject:v8];
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUParameterGroup;
  [(AUParameterNode *)&v2 dealloc];
}

- (AUParameterGroup)initWithTemplate:(id)template identifier:(id)identifier name:(id)name addressOffset:(unint64_t)offset
{
  v29 = *MEMORY[0x1E69E9840];
  templateCopy = template;
  v27.receiver = self;
  v27.super_class = AUParameterGroup;
  v11 = [(AUParameterNode *)&v27 initWithID:identifier name:name];
  if (v11)
  {
    children = [templateCopy children];
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(children, "count")}];
    objc_storeStrong(&v11->_children, v13);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = children;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v15)
    {
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = [*(*(&v23 + 1) + 8 * v17) copyNodeWithOffset:{offset, v23}];
          [v13 addObject:v18];
          [v18 setParentNode:v11];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    childIndicesByIdentifier = [templateCopy childIndicesByIdentifier];
    childIndicesByIdentifier = v11->_childIndicesByIdentifier;
    v11->_childIndicesByIdentifier = childIndicesByIdentifier;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

- (AUParameterGroup)initWithID:(id)d name:(id)name children:(id)children
{
  dCopy = d;
  nameCopy = name;
  childrenCopy = children;
  v14.receiver = self;
  v14.super_class = AUParameterGroup;
  v11 = [(AUParameterNode *)&v14 initWithID:dCopy name:nameCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_children, children);
    [(AUParameterGroup *)v12 _indexChildren];
  }

  return v12;
}

- (id)copyNodeWithOffset:(unint64_t)offset
{
  v5 = [AUParameterGroup alloc];
  identifier = [(AUParameterNode *)self identifier];
  displayName = [(AUParameterNode *)self displayName];
  v8 = [(AUParameterGroup *)v5 initWithTemplate:self identifier:identifier name:displayName addressOffset:offset];

  return v8;
}

- (void)_indexChildren
{
  v27 = *MEMORY[0x1E69E9840];
  childIndicesByIdentifier = self->_childIndicesByIdentifier;
  if (!childIndicesByIdentifier)
  {
    v4 = objc_opt_new();
    v5 = self->_childIndicesByIdentifier;
    self->_childIndicesByIdentifier = v4;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_children;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        [v11 setIndexInGroup:v8];
        if (!childIndicesByIdentifier)
        {
          identifier = [v11 identifier];
          v13 = identifier;
          if (identifier && [identifier length])
          {
            v14 = [(NSMutableDictionary *)self->_childIndicesByIdentifier objectForKeyedSubscript:v13];
            v15 = v14 == 0;

            if (!v15)
            {
              v18 = MEMORY[0x1E695DF30];
              v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Multiple nodes with identifier '%@'", v13];
              v20 = [v18 exceptionWithName:@"AUInvalidNodeInfoException" reason:v19 userInfo:0];
              v21 = v20;

              objc_exception_throw(v20);
            }

            v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
            [(NSMutableDictionary *)self->_childIndicesByIdentifier setObject:v16 forKeyedSubscript:v13];
          }
        }

        [v11 setParentNode:self];

        ++v8;
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end