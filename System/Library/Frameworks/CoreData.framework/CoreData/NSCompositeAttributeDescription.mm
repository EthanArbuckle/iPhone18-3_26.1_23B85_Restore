@interface NSCompositeAttributeDescription
- (BOOL)_isSchemaEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (NSCompositeAttributeDescription)init;
- (NSCompositeAttributeDescription)initWithCoder:(id)coder;
- (id)_buildDefaultValue;
- (id)_flattenElements:(id)elements;
- (id)_flattenedElements;
- (id)_initWithName:(id)name;
- (id)_initWithName:(id)name type:(unint64_t)type;
- (id)_initWithName:(id)name type:(unint64_t)type withClassName:(id)className;
- (id)_initWithType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (uint64_t)_buildDefaultValue:(void *)value usingElements:;
- (uint64_t)_checkElements:(uint64_t)result;
- (void)_addElement:(id)element;
- (void)_createCachesAndOptimizeState;
- (void)_setEntityAndMaintainIndices:(id)indices;
- (void)_versionHash:(char *)hash inStyle:(unint64_t)style;
- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAttributeType:(unint64_t)type;
- (void)setDefaultValue:(id)value;
- (void)setElements:(NSArray *)elements;
@end

@implementation NSCompositeAttributeDescription

- (NSCompositeAttributeDescription)init
{
  v5.receiver = self;
  v5.super_class = NSCompositeAttributeDescription;
  v2 = [(NSPropertyDescription *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NSCompositeAttributeDescription *)v2 setAttributeType:2100];
  }

  return v3;
}

- (id)_initWithName:(id)name
{
  v6.receiver = self;
  v6.super_class = NSCompositeAttributeDescription;
  v3 = [(NSPropertyDescription *)&v6 _initWithName:name];
  v4 = v3;
  if (v3)
  {
    [v3 setAttributeType:2100];
  }

  return v4;
}

- (id)_initWithType:(unint64_t)type
{
  if (type != 2100)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSCompositeAttributeDescription only supports NSCompositeAttributeType as a type." userInfo:0]);
  }

  v4.receiver = self;
  v4.super_class = NSCompositeAttributeDescription;
  return [(NSAttributeDescription *)&v4 _initWithType:?];
}

- (id)_initWithName:(id)name type:(unint64_t)type
{
  if (type != 2100)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSCompositeAttributeDescription only supports NSCompositeAttributeType as a type." userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSCompositeAttributeDescription;
  return [(NSAttributeDescription *)&v5 _initWithName:name type:?];
}

- (id)_initWithName:(id)name type:(unint64_t)type withClassName:(id)className
{
  if (type != 2100)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSCompositeAttributeDescription only supports NSCompositeAttributeType as a type." userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = NSCompositeAttributeDescription;
  return [(NSAttributeDescription *)&v6 _initWithName:name type:2100 withClassName:className];
}

- (void)dealloc
{
  self->_elements = 0;

  self->_elementsByName = 0;
  v3.receiver = self;
  v3.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v3 dealloc];
}

- (void)setAttributeType:(unint64_t)type
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (type != 2100)
  {
    v4 = *MEMORY[0x1E695D940];
    v6 = @"offending attribute";
    v7[0] = self;
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v4 reason:@"The attribute type of a composite cannot be changed from NSCompositeAttributeType." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}]);
  }

  v5.receiver = self;
  v5.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v5 setAttributeType:?];
  v3 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = NSCompositeAttributeDescription;
  v5 = [(NSAttributeDescription *)&v12 description];
  attributeType = [(NSCompositeAttributeDescription *)self attributeType];
  elements = [(NSCompositeAttributeDescription *)self elements];
  preservesValueInHistoryOnDeletion = [(NSAttributeDescription *)self preservesValueInHistoryOnDeletion];
  v9 = @"NO";
  if (preservesValueInHistoryOnDeletion)
  {
    v9 = @"YES";
  }

  v10 = [v4 stringWithFormat:@"%@, attributeType %lu, elements %@, preservesValueInHistoryOnDeletion %@", v5, attributeType, elements, v9];
  objc_autoreleasePoolPop(v3);
  return v10;
}

- (NSCompositeAttributeDescription)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = NSCompositeAttributeDescription;
  v4 = [(NSAttributeDescription *)&v21 initWithCoder:?];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_elements = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"NSCompositeElements"}];
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](v4->_elements, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    elements = v4->_elements;
    v9 = [(NSArray *)elements countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(elements);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          [v7 setObject:v13 forKey:{objc_msgSend(v13, "name")}];
          objc_autoreleasePoolPop(v14);
        }

        v10 = [(NSArray *)elements countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    v4->_elementsByName = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v7];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_elements forKey:@"NSCompositeElements"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NSCompositeAttributeDescription;
  v4 = [(NSAttributeDescription *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setElements:self->_elements];
  }

  return v5;
}

- (void)setElements:(NSArray *)elements
{
  v48[2] = *MEMORY[0x1E69E9840];
  [(NSPropertyDescription *)self _throwIfNotEditable];
  [(NSCompositeAttributeDescription *)self _checkElements:?];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](elements, "count")}];
  preservesValueInHistoryOnDeletion = [(NSAttributeDescription *)self preservesValueInHistoryOnDeletion];
  [v5 addObjectsFromArray:elements];
  v7 = 0;
  v8 = 0;
  while ([v5 count])
  {
    firstObject = [v5 firstObject];
    if ([firstObject preservesValueInHistoryOnDeletion])
    {
      v7 = firstObject;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([firstObject preservesValueInHistoryOnDeletion] && !-[NSAttributeDescription preservesValueInHistoryOnDeletion](self, "preservesValueInHistoryOnDeletion"))
      {
        v24 = MEMORY[0x1E695DF30];
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Nested composite %@ is not eligible for preserving values on deletion (only allowed for root composite and leaves).", objc_msgSend(firstObject, "_qualifiedName")];
        v47[0] = @"Composite";
        v47[1] = @"Element";
        v48[0] = self;
        v48[1] = firstObject;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
LABEL_36:
        objc_exception_throw([v24 exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:v26]);
      }

      preservesValueInHistoryOnDeletion2 = [firstObject preservesValueInHistoryOnDeletion];
      if (preservesValueInHistoryOnDeletion2 != [(NSAttributeDescription *)self preservesValueInHistoryOnDeletion])
      {
        v24 = MEMORY[0x1E695DF30];
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Nested composite %@ is not eligible for preserving values on deletion (only allowed for root composite and leaves).", objc_msgSend(firstObject, "_qualifiedName")];
        v45[0] = @"Composite";
        v45[1] = @"Element";
        v46[0] = self;
        v46[1] = firstObject;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
        goto LABEL_36;
      }
    }

    if (preservesValueInHistoryOnDeletion)
    {
      if (!v7)
      {
        v24 = MEMORY[0x1E695DF30];
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Composite %@ that is preserved on deletion but element %@ is not.", -[NSPropertyDescription _qualifiedName](self, "_qualifiedName"), objc_msgSend(firstObject, "_qualifiedName")];
        v41[0] = @"Composite";
        v41[1] = @"Element";
        v42[0] = self;
        v42[1] = firstObject;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
        goto LABEL_36;
      }
    }

    else if ([firstObject preservesValueInHistoryOnDeletion])
    {
      v24 = MEMORY[0x1E695DF30];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Element %@ is preserved on deletion but its composite %@ is not.", objc_msgSend(firstObject, "_qualifiedName"), -[NSPropertyDescription _qualifiedName](self, "_qualifiedName")];
      v43[0] = @"Element";
      v43[1] = @"Composite";
      v44[0] = firstObject;
      v44[1] = self;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
      goto LABEL_36;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 addObjectsFromArray:{objc_msgSend(firstObject, "elements")}];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(1u);
      }
    }

    ++v8;
    [v5 removeObject:firstObject];
  }

  if (v8 >= 0x3EA)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ does not yet support more than 1000 total attributes as part of the modeled composite attribute graph. This attribute, %@, has %lu.", +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", -[NSCompositeAttributeDescription attributeType](self, "attributeType")), -[NSPropertyDescription _qualifiedName](self, "_qualifiedName"), v8];
    objc_exception_throw([v27 exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0]);
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](elements, "count")}];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [(NSArray *)elements countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v12)
  {
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(elements);
        }

        v15 = [*(*(&v35 + 1) + 8 * i) copy];
        [(NSArray *)v11 addObject:v15];
      }

      v12 = [(NSArray *)elements countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  self->_elements = 0;
  self->_elementsByName = 0;
  self->_elements = v11;
  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](self->_elements, "count")}];
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v17 = self->_elements;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v18)
  {
    v19 = *v32;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v31 + 1) + 8 * j);
        v22 = objc_autoreleasePoolPush();
        [v16 setObject:v21 forKey:{objc_msgSend(v21, "name")}];
        objc_autoreleasePoolPop(v22);
      }

      v18 = [(NSArray *)v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v18);
  }

  self->_elementsByName = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v16];

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3052000000;
  v30[3] = __Block_byref_object_copy__52;
  v30[4] = __Block_byref_object_dispose__52;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __47__NSCompositeAttributeDescription_setElements___block_invoke;
  v29[3] = &unk_1E6EC5800;
  v29[4] = v30;
  v30[5] = v29;
  __47__NSCompositeAttributeDescription_setElements___block_invoke(v29, self->_elements, self);
  _Block_object_dispose(v30, 8);
  v23 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_checkElements:(uint64_t)result
{
  v33 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    result = [a2 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v23;
      do
      {
        v6 = 0;
        do
        {
          if (*v23 != v5)
          {
            objc_enumerationMutation(a2);
          }

          v7 = *(*(&v22 + 1) + 8 * v6);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([v7 isNSArray])
            {
              [(NSCompositeAttributeDescription *)v3 _checkElements:v7];
            }

            v20 = MEMORY[0x1E695DF30];
            v21 = *MEMORY[0x1E695D940];
            v26 = @"Attribute";
            v27 = v7;
            v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
            v19 = @"Unsupported attribute type for composite.";
            v17 = v20;
            v18 = v21;
            goto LABEL_51;
          }

          attributeType = [v7 attributeType];
          v9 = attributeType;
          if (attributeType <= 799)
          {
            if (attributeType <= 399)
            {
              if (attributeType <= 199)
              {
                if (attributeType != 100)
                {
                  if (!attributeType)
                  {
                    goto LABEL_50;
                  }

LABEL_46:
                  LogStream = _PFLogGetLogStream(17);
                  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v31 = v7;
                    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: New attribute type? %@\n", buf, 0xCu);
                  }

                  v12 = _PFLogGetLogStream(17);
                  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412290;
                    v31 = v7;
                    _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: New attribute type? %@", buf, 0xCu);
                  }

LABEL_50:
                  v13 = MEMORY[0x1E695DF30];
                  v14 = *MEMORY[0x1E695D940];
                  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ does not yet support elements of type %@. Please file a radar for this support and assign it to CoreData | (New Bugs).", +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", 2100), +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", v9)];
                  v28 = @"offendingAttribute";
                  v29 = v7;
                  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
                  v17 = v13;
                  v18 = v14;
                  v19 = v15;
LABEL_51:
                  objc_exception_throw([v17 exceptionWithName:v18 reason:v19 userInfo:v16]);
                }
              }

              else if (attributeType != 200 && attributeType != 300)
              {
                goto LABEL_46;
              }
            }

            else if (attributeType > 599)
            {
              if (attributeType != 600 && attributeType != 700)
              {
                goto LABEL_46;
              }
            }

            else if (attributeType != 400 && attributeType != 500)
            {
              goto LABEL_46;
            }
          }

          else if (attributeType <= 1199)
          {
            if (attributeType > 999)
            {
              if (attributeType == 1000)
              {
                if ([v7 allowsExternalBinaryDataStorage] & 1) != 0 || (objc_msgSend(v7, "isFileBackedFuture"))
                {
                  goto LABEL_50;
                }
              }

              else if (attributeType != 1100)
              {
                goto LABEL_46;
              }
            }

            else if (attributeType != 800 && attributeType != 900)
            {
              goto LABEL_46;
            }
          }

          else if (attributeType <= 1999)
          {
            if (attributeType != 1200 && attributeType != 1800)
            {
              goto LABEL_46;
            }
          }

          else if (attributeType != 2100 && attributeType != 2200)
          {
            if (attributeType == 2000)
            {
              goto LABEL_50;
            }

            goto LABEL_46;
          }

          ++v6;
        }

        while (v4 != v6);
        result = [a2 countByEnumeratingWithState:&v22 objects:v32 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __47__NSCompositeAttributeDescription_setElements___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if ([v10 isNSArray])
        {
          v11 = *(*(*(*(a1 + 32) + 8) + 40) + 16);
LABEL_10:
          v11();
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setSuperCompositeAttribute:a3];
          v12 = *(*(*(a1 + 32) + 8) + 40);
          [v10 elements];
          v11 = *(v12 + 16);
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setSuperCompositeAttribute:a3];
        }

LABEL_11:
        ++v9;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v7 = result;
    }

    while (result);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_setEntityAndMaintainIndices:(id)indices
{
  v7.receiver = self;
  v7.super_class = NSCompositeAttributeDescription;
  [(NSPropertyDescription *)&v7 _setEntityAndMaintainIndices:?];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = __Block_byref_object_copy__52;
  v6[4] = __Block_byref_object_dispose__52;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__NSCompositeAttributeDescription__setEntityAndMaintainIndices___block_invoke;
  v5[3] = &unk_1E6EC5828;
  v5[4] = indices;
  v5[5] = v6;
  v6[5] = v5;
  __64__NSCompositeAttributeDescription__setEntityAndMaintainIndices___block_invoke(v5, self->_elements, indices);
  _Block_object_dispose(v6, 8);
}

uint64_t __64__NSCompositeAttributeDescription__setEntityAndMaintainIndices___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if ([v10 isNSArray])
        {
          v11 = *(*(*(*(a1 + 40) + 8) + 40) + 16);
LABEL_10:
          v11();
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 _setEntityAndMaintainIndices:a3];
          v12 = *(*(*(a1 + 40) + 8) + 40);
          [v10 elements];
          v11 = *(v12 + 16);
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 _setEntityAndMaintainIndices:*(a1 + 32)];
        }

LABEL_11:
        ++v9;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v7 = result;
    }

    while (result);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_addElement:(id)element
{
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:self->_elements];
  [v5 addObject:element];
  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];

  [(NSCompositeAttributeDescription *)self setElements:v6];
}

- (BOOL)_isSchemaEqual:(id)equal
{
  v7.receiver = self;
  v7.super_class = NSCompositeAttributeDescription;
  v5 = [(NSAttributeDescription *)&v7 _isSchemaEqual:?];
  if (v5)
  {
    LOBYTE(v5) = -[NSArray isEqual:](self->_elements, "isEqual:", [equal elements]);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v13 = v3;
    v14 = v4;
    v12.receiver = self;
    v12.super_class = NSCompositeAttributeDescription;
    v7 = [(NSAttributeDescription *)&v12 isEqual:?];
    if (v7)
    {
      elements = self->_elements;
      elements = [equal elements];
      if (elements == elements)
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        if (elements)
        {
          v10 = elements == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          LOBYTE(v7) = 0;
        }

        else
        {
          LOBYTE(v7) = [(NSArray *)elements isEqual:elements];
        }
      }
    }
  }

  return v7;
}

- (void)setDefaultValue:(id)value
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (([value isNSDictionary] & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v9 = @"Attribute";
    v10[0] = [(NSPropertyDescription *)self name];
    objc_exception_throw([v6 exceptionWithName:v7 reason:@"Unsupported default value for composite. Must be an NSDictionary." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}]);
  }

  v8.receiver = self;
  v8.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v8 setDefaultValue:value];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)_buildDefaultValue
{
  v3 = [-[NSAttributeDescription defaultValue](self "defaultValue")];
  v4 = v3;
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [(NSCompositeAttributeDescription *)self _buildDefaultValue:v4 usingElements:[(NSCompositeAttributeDescription *)self elements]];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];

  if (!v3 && ![v5 count])
  {
    return 0;
  }

  return v5;
}

- (uint64_t)_buildDefaultValue:(void *)value usingElements:
{
  v43 = *MEMORY[0x1E69E9840];
  v26 = result;
  if (result)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    result = [value countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v36;
      v6 = 0x1E6EC0000uLL;
      v25 = a2;
      v23 = *v36;
      do
      {
        v7 = 0;
        v24 = v4;
        do
        {
          if (*v36 != v5)
          {
            objc_enumerationMutation(value);
          }

          v8 = *(*(&v35 + 1) + 8 * v7);
          v9 = objc_autoreleasePoolPush();
          v10 = *(v6 + 2528);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSCompositeAttributeDescription *)v26 _buildDefaultValue:a2 usingElements:[(__CFString *)v8 elements]];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v22 = *MEMORY[0x1E695D940];
              v39 = @"Attribute";
              v40 = v8;
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v22 reason:@"Unsupported attribute type for composite." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v40, &v39, 1)}]);
            }

            defaultValue = [(__CFString *)v8 defaultValue];
            if (defaultValue)
            {
              v30 = v9;
              _elementPath = [(NSPropertyDescription *)v8 _elementPath];
              v11 = [(__CFString *)_elementPath componentsSeparatedByString:@"."];
              if ([v11 count] >= 2)
              {
                v33 = 0u;
                v34 = 0u;
                v31 = 0u;
                v32 = 0u;
                v12 = [v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v32;
                  v15 = v25;
                  do
                  {
                    v16 = 0;
                    v17 = v15;
                    do
                    {
                      if (*v32 != v14)
                      {
                        objc_enumerationMutation(v11);
                      }

                      v18 = *(*(&v31 + 1) + 8 * v16);
                      v15 = [v17 objectForKey:{v18, v23}];
                      if (!v15)
                      {
                        v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
                        [v17 setObject:v19 forKey:v18];
                      }

                      ++v16;
                      v17 = v15;
                    }

                    while (v13 != v16);
                    v13 = [v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
                  }

                  while (v13);
                }
              }

              a2 = v25;
              v20 = [v25 valueForKeyPath:{_elementPath, v23}];
              v5 = v23;
              v4 = v24;
              v6 = 0x1E6EC0000;
              v9 = v30;
              if (!v20)
              {
                [v25 setValue:defaultValue forKeyPath:_elementPath];
              }
            }
          }

          objc_autoreleasePoolPop(v9);
          ++v7;
        }

        while (v7 != v4);
        result = [value countByEnumeratingWithState:&v35 objects:v42 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_flattenedElements
{
  elements = [(NSCompositeAttributeDescription *)self elements];

  return [(NSCompositeAttributeDescription *)self _flattenElements:elements];
}

- (id)_flattenElements:(id)elements
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [elements countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(elements);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObjectsFromArray:{-[NSCompositeAttributeDescription _flattenElements:](self, "_flattenElements:", objc_msgSend(v10, "elements"))}];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v14 = *MEMORY[0x1E695D940];
            v19 = @"Attribute";
            v20 = v10;
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v14 reason:@"Unsupported attribute type for composite." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v20, &v19, 1)}]);
          }

          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [elements countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)_createCachesAndOptimizeState
{
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7.receiver = self;
  v7.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v7 _createCachesAndOptimizeState];
  [(NSCompositeAttributeDescription *)self _checkElements:?];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = __Block_byref_object_copy__52;
  v6[4] = __Block_byref_object_dispose__52;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__NSCompositeAttributeDescription__createCachesAndOptimizeState__block_invoke;
  v5[3] = &unk_1E6EC5800;
  v5[4] = v6;
  v6[5] = v5;
  __64__NSCompositeAttributeDescription__createCachesAndOptimizeState__block_invoke(v5, self->_elements, self);
  _Block_object_dispose(v6, 8);
  [v3 drain];
  v4 = 0;
}

uint64_t __64__NSCompositeAttributeDescription__createCachesAndOptimizeState__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if ([v10 isNSArray])
        {
          v11 = *(*(*(*(a1 + 32) + 8) + 40) + 16);
LABEL_10:
          v11();
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setSuperCompositeAttribute:a3];
          v12 = *(*(*(a1 + 32) + 8) + 40);
          [v10 elements];
          v11 = *(v12 + 16);
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setSuperCompositeAttribute:a3];
        }

LABEL_11:
        ++v9;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v7 = result;
    }

    while (result);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_versionHash:(char *)hash inStyle:(unint64_t)style
{
  v32 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v27.receiver = self;
  v27.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v27 _versionHash:data inStyle:style];
  if (self->_elements)
  {
    v6 = [-[NSCompositeAttributeDescription _flattenElements:](self _flattenElements:{-[NSCompositeAttributeDescription elements](self, "elements")), "sortedArrayUsingFunction:context:", _comparePropertiesByName, 0}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if ([v11 isNSArray])
          {
            v12 = [v11 sortedArrayUsingFunction:_comparePropertiesByName context:0];
            v19 = 0u;
            v20 = 0u;
            v21 = 0u;
            v22 = 0u;
            v13 = [v12 countByEnumeratingWithState:&v19 objects:v29 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v20;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v20 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  [*(*(&v19 + 1) + 8 * j) _versionHash:data inStyle:style];
                  CC_SHA256_Update(&c, data, 0x20u);
                }

                v14 = [v12 countByEnumeratingWithState:&v19 objects:v29 count:16];
              }

              while (v14);
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v11 isTransient] & 1) == 0)
            {
              [v11 _versionHash:data inStyle:style];
              CC_SHA256_Update(&c, data, 0x20u);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v8);
    }
  }

  CC_SHA256_Final(hash, &c);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests
{
  v16 = [data length];
  v17 = [data length];
  v20.receiver = self;
  v20.super_class = NSCompositeAttributeDescription;
  [(NSAttributeDescription *)&v20 _writeIntoData:data propertiesDict:dict uniquedPropertyNames:names uniquedStrings:strings uniquedData:uniquedData entitiesSlots:slots fetchRequests:requests];
  if (self->_elements)
  {
    v18 = [objc_msgSend(uniquedData "objectForKey:"unsignedIntegerValue"")];
  }

  else
  {
    v18 = 0;
  }

  _writeInt32IntoData(data, v18);
  v19 = bswap32([data length] - v16);
  [data replaceBytesInRange:v17 withBytes:{4, &v19}];
}

@end