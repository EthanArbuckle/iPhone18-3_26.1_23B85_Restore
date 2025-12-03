@interface NSEntityMapping
- (BOOL)isEqual:(id)equal;
- (NSEntityMapping)initWithCoder:(id)coder;
- (NSEntityMigrationPolicy)_migrationPolicy;
- (NSString)name;
- (id)_initWithSourceEntityDescription:(id)description destinationEntityDescription:(id)entityDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_mappingsByName;
- (void)_setIsEditable:(BOOL)editable;
- (void)_throwIfNotEditable;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAttributeMappings:(NSArray *)attributeMappings;
- (void)setDestinationEntityName:(NSString *)destinationEntityName;
- (void)setDestinationEntityVersionHash:(NSData *)destinationEntityVersionHash;
- (void)setEntityMigrationPolicyClassName:(NSString *)entityMigrationPolicyClassName;
- (void)setName:(NSString *)name;
- (void)setRelationshipMappings:(NSArray *)relationshipMappings;
- (void)setSourceEntityName:(NSString *)sourceEntityName;
- (void)setSourceEntityVersionHash:(NSData *)sourceEntityVersionHash;
- (void)setSourceExpression:(NSExpression *)sourceExpression;
- (void)setUserInfo:(NSDictionary *)userInfo;
@end

@implementation NSEntityMapping

- (void)dealloc
{
  self->_name = 0;

  self->_sourceEntityName = 0;
  self->_sourceEntityVersionHash = 0;

  self->_destinationEntityName = 0;
  self->_destinationEntityVersionHash = 0;

  self->_sourceExpression = 0;
  self->_userInfo = 0;

  self->_entityMigrationPolicyClassName = 0;
  self->_attributeMappings = 0;

  self->_relationshipMappings = 0;
  self->_mappingsByName = 0;
  v3.receiver = self;
  v3.super_class = NSEntityMapping;
  [(NSEntityMapping *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v5[4] = [(NSString *)self->_name copy];
    v5[5] = self->_mappingType;
    v5[6] = [(NSString *)self->_sourceEntityName copy];
    v5[7] = [(NSData *)self->_sourceEntityVersionHash copy];
    v5[8] = [(NSString *)self->_destinationEntityName copy];
    v5[9] = [(NSData *)self->_destinationEntityVersionHash copy];
    v5[10] = [(NSExpression *)self->_sourceExpression copy];
    v5[11] = [(NSDictionary *)self->_userInfo copy];
    v5[12] = [(NSString *)self->_entityMigrationPolicyClassName copy];
    attributeMappings = [(NSEntityMapping *)self attributeMappings];
    v7 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{zone), "init"}];
    v8 = [(NSArray *)attributeMappings count];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = [-[NSArray objectAtIndex:](attributeMappings objectAtIndex:{i), "copy"}];
        [v7 addObject:v11];
      }
    }

    [v5 setAttributeMappings:v7];

    relationshipMappings = [(NSEntityMapping *)self relationshipMappings];
    v13 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{zone), "init"}];
    v14 = [(NSArray *)relationshipMappings count];
    if (v14)
    {
      v15 = v14;
      for (j = 0; j != v15; ++j)
      {
        v17 = [-[NSArray objectAtIndex:](relationshipMappings objectAtIndex:{j), "copy"}];
        [v13 addObject:v17];
      }
    }

    [v5 setRelationshipMappings:v13];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_48;
  }

  if (!equal)
  {
    goto LABEL_47;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  name = [(NSEntityMapping *)self name];
  name2 = [equal name];
  if (name != name2)
  {
    v7 = name2;
    LOBYTE(name2) = 0;
    if (!name)
    {
      return name2;
    }

    if (!v7)
    {
      return name2;
    }

    LODWORD(name2) = [(NSString *)name isEqual:?];
    if (!name2)
    {
      return name2;
    }
  }

  mappingType = [(NSEntityMapping *)self mappingType];
  if (mappingType != [equal mappingType])
  {
LABEL_47:
    LOBYTE(name2) = 0;
    return name2;
  }

  sourceEntityName = [(NSEntityMapping *)self sourceEntityName];
  name2 = [equal sourceEntityName];
  if (sourceEntityName == name2 || (v10 = name2, LOBYTE(name2) = 0, sourceEntityName) && v10 && (LODWORD(name2) = [(NSString *)sourceEntityName isEqual:?], name2))
  {
    sourceEntityVersionHash = [(NSEntityMapping *)self sourceEntityVersionHash];
    name2 = [equal sourceEntityVersionHash];
    if (sourceEntityVersionHash == name2 || (v12 = name2, LOBYTE(name2) = 0, sourceEntityVersionHash) && v12 && (LODWORD(name2) = [(NSData *)sourceEntityVersionHash isEqual:?], name2))
    {
      destinationEntityName = [(NSEntityMapping *)self destinationEntityName];
      name2 = [equal destinationEntityName];
      if (destinationEntityName == name2 || (v14 = name2, LOBYTE(name2) = 0, destinationEntityName) && v14 && (LODWORD(name2) = [(NSString *)destinationEntityName isEqual:?], name2))
      {
        destinationEntityVersionHash = [(NSEntityMapping *)self destinationEntityVersionHash];
        name2 = [equal destinationEntityVersionHash];
        if (destinationEntityVersionHash == name2 || (v16 = name2, LOBYTE(name2) = 0, destinationEntityVersionHash) && v16 && (LODWORD(name2) = [(NSData *)destinationEntityVersionHash isEqual:?], name2))
        {
          sourceExpression = [(NSEntityMapping *)self sourceExpression];
          name2 = [equal sourceExpression];
          if (sourceExpression == name2 || (v18 = name2, LOBYTE(name2) = 0, sourceExpression) && v18 && (LODWORD(name2) = [(NSExpression *)sourceExpression isEqual:?], name2))
          {
            userInfo = [(NSEntityMapping *)self userInfo];
            name2 = [equal userInfo];
            if (userInfo == name2 || (v20 = name2, LOBYTE(name2) = 0, userInfo) && v20 && (LODWORD(name2) = [(NSDictionary *)userInfo isEqual:?], name2))
            {
              entityMigrationPolicyClassName = [(NSEntityMapping *)self entityMigrationPolicyClassName];
              name2 = [equal entityMigrationPolicyClassName];
              if (entityMigrationPolicyClassName == name2 || (v22 = name2, LOBYTE(name2) = 0, entityMigrationPolicyClassName) && v22 && (LODWORD(name2) = [(NSString *)entityMigrationPolicyClassName isEqual:?], name2))
              {
                attributeMappings = [(NSEntityMapping *)self attributeMappings];
                name2 = [equal attributeMappings];
                if (attributeMappings == name2 || (v24 = name2, LOBYTE(name2) = 0, attributeMappings) && v24 && (LODWORD(name2) = [(NSArray *)attributeMappings isEqual:?], name2))
                {
                  relationshipMappings = [(NSEntityMapping *)self relationshipMappings];
                  name2 = [equal relationshipMappings];
                  if (relationshipMappings != name2)
                  {
                    v26 = name2;
                    LOBYTE(name2) = 0;
                    if (relationshipMappings && v26)
                    {

                      LOBYTE(name2) = [(NSArray *)relationshipMappings isEqual:?];
                    }

                    return name2;
                  }

LABEL_48:
                  LOBYTE(name2) = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return name2;
}

- (id)description
{
  v5 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@), name %@, mappingType %u, sourceEntityName %@, sourceEntityVersionHash %@, destinationEntityName %@, destinationEntityVersionHash %@, attributeMappings %@, relationshipMappings %@, sourceExpression %@, entityMigrationPolicyClassName %@, userInfo %@", objc_opt_class(), -[NSEntityMapping name](self, "name"), -[NSEntityMapping mappingType](self, "mappingType"), -[NSEntityMapping sourceEntityName](self, "sourceEntityName"), -[NSEntityMapping sourceEntityVersionHash](self, "sourceEntityVersionHash"), -[NSEntityMapping destinationEntityName](self, "destinationEntityName"), -[NSEntityMapping destinationEntityVersionHash](self, "destinationEntityVersionHash"), -[NSEntityMapping attributeMappings](self, "attributeMappings"), -[NSEntityMapping relationshipMappings](self, "relationshipMappings"), -[NSEntityMapping sourceExpression](self, "sourceExpression"), -[NSEntityMapping entityMigrationPolicyClassName](self, "entityMigrationPolicyClassName"), -[NSEntityMapping userInfo](self, "userInfo")];
  objc_autoreleasePoolPop(v5);

  return v3;
}

- (NSString)name
{
  result = self->_name;
  if (!result)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@->%@", -[NSEntityMapping sourceEntityName](self, "sourceEntityName"), -[NSEntityMapping destinationEntityName](self, "destinationEntityName")];
  }

  return result;
}

- (void)setName:(NSString *)name
{
  [(NSEntityMapping *)self _throwIfNotEditable];
  v5 = self->_name;
  if (v5 != name)
  {

    self->_name = [(NSString *)name copy];
  }
}

- (void)setSourceEntityName:(NSString *)sourceEntityName
{
  [(NSEntityMapping *)self _throwIfNotEditable];
  v5 = self->_sourceEntityName;
  if (v5 != sourceEntityName)
  {

    self->_sourceEntityName = [(NSString *)sourceEntityName copy];
  }
}

- (void)setSourceEntityVersionHash:(NSData *)sourceEntityVersionHash
{
  [(NSEntityMapping *)self _throwIfNotEditable];
  v5 = self->_sourceEntityVersionHash;
  if (v5 != sourceEntityVersionHash)
  {

    self->_sourceEntityVersionHash = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:sourceEntityVersionHash];
  }
}

- (void)setDestinationEntityName:(NSString *)destinationEntityName
{
  [(NSEntityMapping *)self _throwIfNotEditable];
  v5 = self->_destinationEntityName;
  if (v5 != destinationEntityName)
  {

    self->_destinationEntityName = [(NSString *)destinationEntityName copy];
  }
}

- (void)setDestinationEntityVersionHash:(NSData *)destinationEntityVersionHash
{
  [(NSEntityMapping *)self _throwIfNotEditable];
  v5 = self->_destinationEntityVersionHash;
  if (v5 != destinationEntityVersionHash)
  {

    self->_destinationEntityVersionHash = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:destinationEntityVersionHash];
  }
}

- (void)setAttributeMappings:(NSArray *)attributeMappings
{
  [(NSEntityMapping *)self _throwIfNotEditable];
  v5 = self->_attributeMappings;
  if (v5 != attributeMappings)
  {

    self->_attributeMappings = [(NSArray *)attributeMappings copy];
  }
}

- (void)setRelationshipMappings:(NSArray *)relationshipMappings
{
  [(NSEntityMapping *)self _throwIfNotEditable];
  v5 = self->_relationshipMappings;
  if (v5 != relationshipMappings)
  {

    self->_relationshipMappings = [(NSArray *)relationshipMappings copy];
  }
}

- (void)setSourceExpression:(NSExpression *)sourceExpression
{
  [(NSEntityMapping *)self _throwIfNotEditable];
  v5 = self->_sourceExpression;
  if (v5 != sourceExpression)
  {

    self->_sourceExpression = [(NSExpression *)sourceExpression copy];
  }
}

- (void)setUserInfo:(NSDictionary *)userInfo
{
  [(NSEntityMapping *)self _throwIfNotEditable];
  v5 = self->_userInfo;
  if (v5 != userInfo)
  {

    self->_userInfo = [(NSDictionary *)userInfo copy];
  }
}

- (void)setEntityMigrationPolicyClassName:(NSString *)entityMigrationPolicyClassName
{
  [(NSEntityMapping *)self _throwIfNotEditable];
  v5 = self->_entityMigrationPolicyClassName;
  if (v5 != entityMigrationPolicyClassName)
  {

    self->_entityMigrationPolicyClassName = [(NSString *)entityMigrationPolicyClassName copy];
  }
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_name)
  {
    [coder encodeObject:-[NSEntityMapping name](self forKey:{"name"), @"NSMappingName"}];
  }

  [coder encodeInt:-[NSEntityMapping mappingType](self forKey:{"mappingType"), @"NSMappingType"}];
  [coder encodeObject:-[NSEntityMapping sourceEntityName](self forKey:{"sourceEntityName"), @"NSSourceEntityName"}];
  [coder encodeObject:-[NSEntityMapping sourceEntityVersionHash](self forKey:{"sourceEntityVersionHash"), @"NSSourceEntityVersionHash"}];
  [coder encodeObject:-[NSEntityMapping destinationEntityName](self forKey:{"destinationEntityName"), @"NSDestinationEntityName"}];
  [coder encodeObject:-[NSEntityMapping destinationEntityVersionHash](self forKey:{"destinationEntityVersionHash"), @"NSDestinationEntityVersionHash"}];
  [coder encodeObject:-[NSEntityMapping sourceExpression](self forKey:{"sourceExpression"), @"NSSourceExpression"}];
  [coder encodeObject:-[NSEntityMapping userInfo](self forKey:{"userInfo"), @"NSUserInfo"}];
  [coder encodeObject:-[NSEntityMapping entityMigrationPolicyClassName](self forKey:{"entityMigrationPolicyClassName"), @"NSEntityMigrationPolicyClassName"}];
  [coder encodeObject:-[NSEntityMapping attributeMappings](self forKey:{"attributeMappings"), @"NSAttributeMappings"}];
  relationshipMappings = [(NSEntityMapping *)self relationshipMappings];

  [coder encodeObject:relationshipMappings forKey:@"NSRelationshipMappings"];
}

- (NSEntityMapping)initWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = NSEntityMapping;
  v4 = [(NSEntityMapping *)&v19 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSMappingName"];
    v4->_name = v5;
    if (v5 && ([(NSString *)v5 isNSString]& 1) == 0)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A250];
      v17 = &unk_1EF434DD8;
    }

    else
    {
      v4->_mappingType = [coder decodeIntForKey:@"NSMappingType"];
      v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSSourceEntityName"];
      v4->_sourceEntityName = v6;
      if (v6 && ([(NSString *)v6 isNSString]& 1) == 0)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = *MEMORY[0x1E696A250];
        v17 = &unk_1EF434E00;
      }

      else
      {
        v4->_sourceEntityVersionHash = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSSourceEntityVersionHash"];
        v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSDestinationEntityName"];
        v4->_destinationEntityName = v7;
        if (v7 && ([(NSString *)v7 isNSString]& 1) == 0)
        {
          v15 = MEMORY[0x1E696ABC0];
          v16 = *MEMORY[0x1E696A250];
          v17 = &unk_1EF434E28;
        }

        else
        {
          v4->_destinationEntityVersionHash = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSDestinationEntityVersionHash"];
          v8 = MEMORY[0x1E695DFD8];
          v9 = objc_opt_class();
          v4->_sourceExpression = [coder decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, objc_opt_class(), 0), @"NSSourceExpression"}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSExpression *)v4->_sourceExpression allowEvaluation];
          }

          v4->_userInfo = [coder decodeObjectOfClasses:+[_PFRoutines plistClassesForSecureCoding]() forKey:@"NSUserInfo"];
          v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSEntityMigrationPolicyClassName"];
          v4->_entityMigrationPolicyClassName = v10;
          if (!v10 || ([(NSString *)v10 isNSString]& 1) != 0)
          {
            v11 = MEMORY[0x1E695DFD8];
            v12 = objc_opt_class();
            v4->_attributeMappings = [coder decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, objc_opt_class(), 0), @"NSAttributeMappings"}];
            v13 = MEMORY[0x1E695DFD8];
            v14 = objc_opt_class();
            v4->_relationshipMappings = [coder decodeObjectOfClasses:objc_msgSend(v13 forKey:{"setWithObjects:", v14, objc_opt_class(), 0), @"NSRelationshipMappings"}];
            *&v4->_entityMappingFlags &= ~1u;
            return v4;
          }

          v15 = MEMORY[0x1E696ABC0];
          v16 = *MEMORY[0x1E696A250];
          v17 = &unk_1EF434E50;
        }
      }
    }

    [coder failWithError:{objc_msgSend(v15, "errorWithDomain:code:userInfo:", v16, 4866, v17)}];

    return 0;
  }

  return v4;
}

- (NSEntityMigrationPolicy)_migrationPolicy
{
  if (result)
  {
    isa = result[12].super.isa;
    if (isa)
    {
      result = objc_alloc_init(_PFClassFromString(result[12].super.isa));
      if (!result)
      {
        v2 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134110, [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't create mapping policy for class named (%@)", isa], 0);
        objc_exception_throw(v2);
      }
    }

    else
    {

      return objc_alloc_init(NSEntityMigrationPolicy);
    }
  }

  return result;
}

- (id)_initWithSourceEntityDescription:(id)description destinationEntityDescription:(id)entityDescription
{
  v11.receiver = self;
  v11.super_class = NSEntityMapping;
  v6 = [(NSEntityMapping *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_name = 0;
    v6->_mappingType = 0;
    v6->_attributeMappings = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7->_relationshipMappings = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (description)
    {
      v7->_sourceEntityName = [objc_msgSend(description "name")];
      v8 = [objc_msgSend(description "versionHash")];
    }

    else
    {
      v8 = 0;
      v7->_sourceEntityName = 0;
    }

    v7->_sourceEntityVersionHash = v8;
    if (entityDescription)
    {
      v7->_destinationEntityName = [objc_msgSend(entityDescription "name")];
      v9 = [objc_msgSend(entityDescription "versionHash")];
    }

    else
    {
      v9 = 0;
      v7->_destinationEntityName = 0;
    }

    v7->_destinationEntityVersionHash = v9;
    v7->_sourceExpression = 0;
    v7->_userInfo = 0;
    v7->_entityMigrationPolicyClassName = 0;
    *&v7->_entityMappingFlags &= ~1u;
  }

  return v7;
}

- (void)_setIsEditable:(BOOL)editable
{
  entityMappingFlags = self->_entityMappingFlags;
  if (((*&entityMappingFlags ^ editable) & 1) == 0)
  {
    if (*&entityMappingFlags)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Entity Mappings cannot become mutable after being marked immutable." userInfo:{0, v3, v4}]);
    }

    self->_entityMappingFlags = (*&entityMappingFlags | !editable);

    [(NSEntityMapping *)self _createCachesAndOptimizeState];
  }
}

- (void)_throwIfNotEditable
{
  if (![(NSEntityMapping *)self isEditable])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't modify an immutable entity mapping." userInfo:0]);
  }
}

- (void)_mappingsByName
{
  v29 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = result[3];
    if (!result)
    {
      if ([v1 isEditable])
      {
        [v1 _setIsEditable:0];
      }

      attributeMappings = [v1 attributeMappings];
      relationshipMappings = [v1 relationshipMappings];
      v4 = [attributeMappings count];
      v5 = [relationshipMappings count];
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5 + v4];
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5 + v4];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = [attributeMappings countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(attributeMappings);
            }

            v12 = *(*(&v23 + 1) + 8 * i);
            [v7 addObject:v12];
            [v6 addObject:{objc_msgSend(v12, "name")}];
          }

          v9 = [attributeMappings countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v9);
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = [relationshipMappings countByEnumeratingWithState:&v19 objects:v27 count:16];
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
              objc_enumerationMutation(relationshipMappings);
            }

            v17 = *(*(&v19 + 1) + 8 * j);
            [v7 addObject:v17];
            [v6 addObject:{objc_msgSend(v17, "name")}];
          }

          v14 = [relationshipMappings countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v14);
      }

      v1[3] = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjects:v7 forKeys:v6];

      result = v1[3];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

@end