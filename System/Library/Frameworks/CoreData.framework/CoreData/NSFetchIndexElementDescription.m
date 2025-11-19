@interface NSFetchIndexElementDescription
- (BOOL)isEqual:(id)a3;
- (NSFetchIndexElementDescription)initWithCoder:(id)a3;
- (NSFetchIndexElementDescription)initWithProperty:(NSPropertyDescription *)property collationType:(NSFetchIndexElementType)collationType;
- (NSPropertyDescription)property;
- (_DWORD)initWithPropertyName:(uint64_t)a3 collationType:;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (uint64_t)_validateCollationType:(void *)a3 forProperty:;
- (void)_setIndexDescription:(uint64_t)a1;
- (void)_throwIfNotEditable;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)initWithPropertyName:(void *)a3 property:(uint64_t)a4 collationType:(int)a5 ascending:;
- (void)setAscending:(BOOL)ascending;
- (void)setCollationType:(NSFetchIndexElementType)collationType;
@end

@implementation NSFetchIndexElementDescription

- (void)dealloc
{
  self->_propertyName = 0;
  if ((*&self->_indexElementDescriptionFlags & 2) != 0)
  {

    self->_property = 0;
  }

  v3.receiver = self;
  v3.super_class = NSFetchIndexElementDescription;
  [(NSFetchIndexElementDescription *)&v3 dealloc];
}

- (NSPropertyDescription)property
{
  property = self->_property;
  if (!property)
  {
    indexDescription = self->_indexDescription;
    if (indexDescription)
    {
      v6 = [(NSFetchIndexDescription *)indexDescription entity];
      if (v6)
      {
        property = [*(v6 + 96) objectForKey:self->_propertyName];
      }

      else
      {
        property = 0;
      }

      if (![(NSPropertyDescription *)property _isEditable])
      {
        indexElementDescriptionFlags = self->_indexElementDescriptionFlags;
        if ((*&indexElementDescriptionFlags & 2) != 0)
        {

          indexElementDescriptionFlags = self->_indexElementDescriptionFlags;
        }

        self->_property = property;
        self->_indexElementDescriptionFlags = (*&indexElementDescriptionFlags & 0xFFFFFFFD);
      }
    }

    else
    {
      return 0;
    }
  }

  return property;
}

- (uint64_t)_validateCollationType:(void *)a3 forProperty:
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (result && a2 == 1)
  {
    if ([a3 _propertyType] == 2 || objc_msgSend(a3, "_propertyType") == 6)
    {
      result = [a3 attributeType];
      if (result == 100 || result == 200 || result == 600)
      {
        goto LABEL_8;
      }

      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D940];
      v9 = @"property";
      v10 = a3;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v8 = @"Invalid collation type (rtree indexes can only be created for floats or integers < 32 bit).";
    }

    else
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D940];
      v11 = @"property";
      v12[0] = a3;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v8 = @"Invalid collation type (rtree indexes can only be created on attributes).";
    }

    objc_exception_throw([v5 exceptionWithName:v6 reason:v8 userInfo:v7]);
  }

LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSFetchIndexElementDescription)initWithProperty:(NSPropertyDescription *)property collationType:(NSFetchIndexElementType)collationType
{
  if (!property)
  {

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Can't create an index element without a property";
    goto LABEL_17;
  }

  if (![(NSPropertyDescription *)property name])
  {

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Can't create an index element with an unnamed property";
    goto LABEL_17;
  }

  v7 = [(NSPropertyDescription *)property _propertyType];
  if (v7 - 4 >= 3 && v7 != 2)
  {
    if (v7 == 7)
    {

      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = @"Can't create an index element with composite property";
    }

    else
    {

      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = @"Can't create an index element with non-attribute property";
    }

LABEL_17:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:0]);
  }

  [(NSFetchIndexElementDescription *)self _validateCollationType:property forProperty:?];
  v14.receiver = self;
  v14.super_class = NSFetchIndexElementDescription;
  v8 = [(NSFetchIndexElementDescription *)&v14 init];
  if (v8)
  {
    if ([(NSPropertyDescription *)property _propertyType]== 5 || !v8->_indexDescription)
    {
      v8->_property = property;
      v9 = *&v8->_indexElementDescriptionFlags | 2;
    }

    else
    {
      v8->_property = property;
      v9 = *&v8->_indexElementDescriptionFlags & 0xFFFFFFFD;
    }

    v8->_indexElementDescriptionFlags = v9;
    v8->_propertyName = [(NSPropertyDescription *)property name];
    v8->_collationType = collationType;
    *&v8->_indexElementDescriptionFlags |= 1u;
  }

  return v8;
}

- (_DWORD)initWithPropertyName:(uint64_t)a3 collationType:
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = NSFetchIndexElementDescription;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  if (v5)
  {
    v6 = a2;
    v7 = v5[10];
    *(v5 + 2) = v6;
    *(v5 + 3) = a3;
    v5[10] = v7 & 0xFFFFFFFC | 1;
  }

  return v5;
}

- (void)initWithPropertyName:(void *)a3 property:(uint64_t)a4 collationType:(int)a5 ascending:
{
  if (!a1)
  {
    return 0;
  }

  v12.receiver = a1;
  v12.super_class = NSFetchIndexElementDescription;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  if (v9)
  {
    v9[2] = a2;
    if (a3 && [a3 _propertyType] == 5)
    {
      v9[1] = a3;
      v10 = *(v9 + 10) | 2;
    }

    else
    {
      v9[1] = 0;
      v10 = v9[5] & 0xFFFFFFFD;
    }

    v9[3] = a4;
    *(v9 + 10) = v10 & 0xFFFFFFFE | a5;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_propertyName forKey:@"NSPropertyName"];
  if ([(NSPropertyDescription *)self->_property _propertyType]== 5)
  {
    [a3 encodeObject:self->_property forKey:@"NSIndexedProperty"];
  }

  [a3 encodeInteger:self->_collationType forKey:@"NSFetchIndexElementType"];
  [a3 encodeObject:self->_indexDescription forKey:@"NSFetchIndexDescription"];
  v5 = *&self->_indexElementDescriptionFlags & 1;

  [a3 encodeBool:v5 forKey:@"NSAscending"];
}

- (NSFetchIndexElementDescription)initWithCoder:(id)a3
{
  v20.receiver = self;
  v20.super_class = NSFetchIndexElementDescription;
  v4 = [(NSFetchIndexElementDescription *)&v20 init];
  if (v4)
  {
    v5 = +[PFModelDecoderContext retainedContext];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __48__NSFetchIndexElementDescription_initWithCoder___block_invoke;
    v18 = &unk_1E6EC16F0;
    v19 = v5;
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPropertyName"];
    v4->_propertyName = v6;
    if (v6 && ([(NSString *)v6 isNSString]& 1) == 0)
    {
      v11 = &unk_1EF435828;
    }

    else
    {
      v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSFetchIndexDescription"];
      v4->_indexDescription = v7;
      if (!v7)
      {
LABEL_13:
        v12 = [a3 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E695DFD8] forKey:{"setWithObjects:", objc_opt_class(), 0, v15, v16), @"NSIndexedProperty"}];
        if (!v12)
        {
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v12 _propertyType] == 5 || !v4->_indexDescription)
          {
            v4->_property = v12;
            v13 = *&v4->_indexElementDescriptionFlags | 2;
            goto LABEL_23;
          }

LABEL_17:
          v4->_property = 0;
          v13 = *&v4->_indexElementDescriptionFlags & 0xFFFFFFFD;
LABEL_23:
          v4->_indexElementDescriptionFlags = v13;
          v4->_collationType = [a3 decodeIntegerForKey:@"NSFetchIndexElementType"];
          v4->_indexElementDescriptionFlags = (*&v4->_indexElementDescriptionFlags & 0xFFFFFFFE | [a3 decodeBoolForKey:@"NSAscending"]);
          goto LABEL_24;
        }

        [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF4358A0)}];

LABEL_20:
        v4 = 0;
LABEL_24:
        v17(&v15);
        return v4;
      }

      if (v5)
      {
        v8 = v5[3];
      }

      else
      {
        v8 = 0;
      }

      [v8 addObject:v7];
      indexDescription = v4->_indexDescription;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v11 = &unk_1EF435878;
      }

      else
      {
        v11 = &unk_1EF435850;
      }

      if (v5 != 0 && (isKindOfClass & 1) != 0)
      {
        if (v5[1] || v5[2])
        {
          goto LABEL_13;
        }

        v11 = &unk_1EF435878;
      }
    }

    [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, v11)}];

    goto LABEL_20;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 32) = 0;
    *(v4 + 16) = [(NSString *)self->_propertyName copy];
    if ([(NSPropertyDescription *)self->_property _propertyType]== 5)
    {
      v6 = [(NSPropertyDescription *)self->_property copy];
    }

    else
    {
      v6 = [(NSFetchIndexElementDescription *)self property];
    }

    *(v5 + 8) = v6;
    v7 = *(v5 + 40) | 2;
    *(v5 + 40) = v7;
    *(v5 + 24) = self->_collationType;
    *(v5 + 40) = v7 & 0xFFFFFFFE | *&self->_indexElementDescriptionFlags & 1;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v19 = v5;
    v20 = v4;
    v21 = v3;
    if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (collationType = self->_collationType, collationType == [a3 collationType]) && (v12 = -[NSFetchIndexElementDescription isAscending](self, "isAscending"), v12 == objc_msgSend(a3, "isAscending")))
    {
      propertyName = self->_propertyName;
      v13 = [a3 propertyName];
      if (propertyName == v13 || (v15 = v13, LOBYTE(v13) = 0, propertyName) && v15 && (LODWORD(v13) = [(NSString *)propertyName isEqual:?], v13))
      {
        if (-[NSPropertyDescription _propertyType](self->_property, "_propertyType", v6, v19, v20, v21, v7, v8) != 5 || (property = self->_property, v13 = [a3 property], property == v13) || (v17 = v13, LOBYTE(v13) = 0, property) && v17 && (LODWORD(v13) = -[NSPropertyDescription isEqual:](property, "isEqual:"), v13))
        {
          LOBYTE(v13) = 1;
        }
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  propertyName = self->_propertyName;
  if ([(NSPropertyDescription *)self->_property _propertyType]== 5)
  {
    property = self->_property;
  }

  else
  {
    property = @"modeled property";
  }

  collationType = self->_collationType;
  v8 = [(NSFetchIndexElementDescription *)self isAscending];
  v9 = @"descending";
  if (v8)
  {
    v9 = @"ascending";
  }

  v10 = [v4 stringWithFormat:@"<NSFetchIndexElementDescription : (%@ (%@), %d, %@)>", propertyName, property, collationType, v9];
  objc_autoreleasePoolPop(v3);

  return v10;
}

- (void)_throwIfNotEditable
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [result property];
    if (!v2 && v1[2])
    {
      v5 = *MEMORY[0x1E695D930];
      v6 = @"offender";
      v7[0] = v1;
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v5 reason:@"Broken logic around index elements" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}]);
    }

    v3 = *MEMORY[0x1E69E9840];

    return [v2 _throwIfNotEditable];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (void)setCollationType:(NSFetchIndexElementType)collationType
{
  [(NSFetchIndexElementDescription *)self _throwIfNotEditable];
  if (self->_collationType != collationType)
  {
    [(NSFetchIndexElementDescription *)self _validateCollationType:self->_property forProperty:?];
    [(NSFetchIndexDescription *)self->_indexDescription _validateCollationTypeChangeFrom:collationType to:?];
    self->_collationType = collationType;
  }
}

- (void)setAscending:(BOOL)ascending
{
  v3 = ascending;
  [(NSFetchIndexElementDescription *)self _throwIfNotEditable];
  self->_indexElementDescriptionFlags = (*&self->_indexElementDescriptionFlags & 0xFFFFFFFE | v3);
}

- (void)_setIndexDescription:(uint64_t)a1
{
  if (a1)
  {
    if (!a2 || *(a1 + 32) || [*(a1 + 8) _propertyType] == 5)
    {
      goto LABEL_10;
    }

    if ([a2 entity])
    {

      *(a1 + 8) = 0;
      v4 = *(a1 + 40) & 0xFFFFFFFD;
    }

    else
    {
      if ((*(a1 + 40) & 2) != 0)
      {
LABEL_10:
        *(a1 + 32) = a2;
        return;
      }

      v5 = *(a1 + 8);
      v4 = *(a1 + 40) | 2;
    }

    *(a1 + 40) = v4;
    goto LABEL_10;
  }
}

@end