@interface NSEntityMapping
- (BOOL)isEqual:(id)a3;
- (NSEntityMapping)initWithCoder:(id)a3;
- (NSEntityMigrationPolicy)_migrationPolicy;
- (NSString)name;
- (id)_initWithSourceEntityDescription:(id)a3 destinationEntityDescription:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_mappingsByName;
- (void)_setIsEditable:(BOOL)a3;
- (void)_throwIfNotEditable;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
    v6 = [(NSEntityMapping *)self attributeMappings];
    v7 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{a3), "init"}];
    v8 = [(NSArray *)v6 count];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = [-[NSArray objectAtIndex:](v6 objectAtIndex:{i), "copy"}];
        [v7 addObject:v11];
      }
    }

    [v5 setAttributeMappings:v7];

    v12 = [(NSEntityMapping *)self relationshipMappings];
    v13 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{a3), "init"}];
    v14 = [(NSArray *)v12 count];
    if (v14)
    {
      v15 = v14;
      for (j = 0; j != v15; ++j)
      {
        v17 = [-[NSArray objectAtIndex:](v12 objectAtIndex:{j), "copy"}];
        [v13 addObject:v17];
      }
    }

    [v5 setRelationshipMappings:v13];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_48;
  }

  if (!a3)
  {
    goto LABEL_47;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  v5 = [(NSEntityMapping *)self name];
  v6 = [a3 name];
  if (v5 != v6)
  {
    v7 = v6;
    LOBYTE(v6) = 0;
    if (!v5)
    {
      return v6;
    }

    if (!v7)
    {
      return v6;
    }

    LODWORD(v6) = [(NSString *)v5 isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  v8 = [(NSEntityMapping *)self mappingType];
  if (v8 != [a3 mappingType])
  {
LABEL_47:
    LOBYTE(v6) = 0;
    return v6;
  }

  v9 = [(NSEntityMapping *)self sourceEntityName];
  v6 = [a3 sourceEntityName];
  if (v9 == v6 || (v10 = v6, LOBYTE(v6) = 0, v9) && v10 && (LODWORD(v6) = [(NSString *)v9 isEqual:?], v6))
  {
    v11 = [(NSEntityMapping *)self sourceEntityVersionHash];
    v6 = [a3 sourceEntityVersionHash];
    if (v11 == v6 || (v12 = v6, LOBYTE(v6) = 0, v11) && v12 && (LODWORD(v6) = [(NSData *)v11 isEqual:?], v6))
    {
      v13 = [(NSEntityMapping *)self destinationEntityName];
      v6 = [a3 destinationEntityName];
      if (v13 == v6 || (v14 = v6, LOBYTE(v6) = 0, v13) && v14 && (LODWORD(v6) = [(NSString *)v13 isEqual:?], v6))
      {
        v15 = [(NSEntityMapping *)self destinationEntityVersionHash];
        v6 = [a3 destinationEntityVersionHash];
        if (v15 == v6 || (v16 = v6, LOBYTE(v6) = 0, v15) && v16 && (LODWORD(v6) = [(NSData *)v15 isEqual:?], v6))
        {
          v17 = [(NSEntityMapping *)self sourceExpression];
          v6 = [a3 sourceExpression];
          if (v17 == v6 || (v18 = v6, LOBYTE(v6) = 0, v17) && v18 && (LODWORD(v6) = [(NSExpression *)v17 isEqual:?], v6))
          {
            v19 = [(NSEntityMapping *)self userInfo];
            v6 = [a3 userInfo];
            if (v19 == v6 || (v20 = v6, LOBYTE(v6) = 0, v19) && v20 && (LODWORD(v6) = [(NSDictionary *)v19 isEqual:?], v6))
            {
              v21 = [(NSEntityMapping *)self entityMigrationPolicyClassName];
              v6 = [a3 entityMigrationPolicyClassName];
              if (v21 == v6 || (v22 = v6, LOBYTE(v6) = 0, v21) && v22 && (LODWORD(v6) = [(NSString *)v21 isEqual:?], v6))
              {
                v23 = [(NSEntityMapping *)self attributeMappings];
                v6 = [a3 attributeMappings];
                if (v23 == v6 || (v24 = v6, LOBYTE(v6) = 0, v23) && v24 && (LODWORD(v6) = [(NSArray *)v23 isEqual:?], v6))
                {
                  v25 = [(NSEntityMapping *)self relationshipMappings];
                  v6 = [a3 relationshipMappings];
                  if (v25 != v6)
                  {
                    v26 = v6;
                    LOBYTE(v6) = 0;
                    if (v25 && v26)
                    {

                      LOBYTE(v6) = [(NSArray *)v25 isEqual:?];
                    }

                    return v6;
                  }

LABEL_48:
                  LOBYTE(v6) = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return v6;
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

- (void)encodeWithCoder:(id)a3
{
  if (self->_name)
  {
    [a3 encodeObject:-[NSEntityMapping name](self forKey:{"name"), @"NSMappingName"}];
  }

  [a3 encodeInt:-[NSEntityMapping mappingType](self forKey:{"mappingType"), @"NSMappingType"}];
  [a3 encodeObject:-[NSEntityMapping sourceEntityName](self forKey:{"sourceEntityName"), @"NSSourceEntityName"}];
  [a3 encodeObject:-[NSEntityMapping sourceEntityVersionHash](self forKey:{"sourceEntityVersionHash"), @"NSSourceEntityVersionHash"}];
  [a3 encodeObject:-[NSEntityMapping destinationEntityName](self forKey:{"destinationEntityName"), @"NSDestinationEntityName"}];
  [a3 encodeObject:-[NSEntityMapping destinationEntityVersionHash](self forKey:{"destinationEntityVersionHash"), @"NSDestinationEntityVersionHash"}];
  [a3 encodeObject:-[NSEntityMapping sourceExpression](self forKey:{"sourceExpression"), @"NSSourceExpression"}];
  [a3 encodeObject:-[NSEntityMapping userInfo](self forKey:{"userInfo"), @"NSUserInfo"}];
  [a3 encodeObject:-[NSEntityMapping entityMigrationPolicyClassName](self forKey:{"entityMigrationPolicyClassName"), @"NSEntityMigrationPolicyClassName"}];
  [a3 encodeObject:-[NSEntityMapping attributeMappings](self forKey:{"attributeMappings"), @"NSAttributeMappings"}];
  v5 = [(NSEntityMapping *)self relationshipMappings];

  [a3 encodeObject:v5 forKey:@"NSRelationshipMappings"];
}

- (NSEntityMapping)initWithCoder:(id)a3
{
  v19.receiver = self;
  v19.super_class = NSEntityMapping;
  v4 = [(NSEntityMapping *)&v19 init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSMappingName"];
    v4->_name = v5;
    if (v5 && ([(NSString *)v5 isNSString]& 1) == 0)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A250];
      v17 = &unk_1EF434DD8;
    }

    else
    {
      v4->_mappingType = [a3 decodeIntForKey:@"NSMappingType"];
      v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSSourceEntityName"];
      v4->_sourceEntityName = v6;
      if (v6 && ([(NSString *)v6 isNSString]& 1) == 0)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = *MEMORY[0x1E696A250];
        v17 = &unk_1EF434E00;
      }

      else
      {
        v4->_sourceEntityVersionHash = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSSourceEntityVersionHash"];
        v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSDestinationEntityName"];
        v4->_destinationEntityName = v7;
        if (v7 && ([(NSString *)v7 isNSString]& 1) == 0)
        {
          v15 = MEMORY[0x1E696ABC0];
          v16 = *MEMORY[0x1E696A250];
          v17 = &unk_1EF434E28;
        }

        else
        {
          v4->_destinationEntityVersionHash = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSDestinationEntityVersionHash"];
          v8 = MEMORY[0x1E695DFD8];
          v9 = objc_opt_class();
          v4->_sourceExpression = [a3 decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, objc_opt_class(), 0), @"NSSourceExpression"}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSExpression *)v4->_sourceExpression allowEvaluation];
          }

          v4->_userInfo = [a3 decodeObjectOfClasses:+[_PFRoutines plistClassesForSecureCoding]() forKey:@"NSUserInfo"];
          v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSEntityMigrationPolicyClassName"];
          v4->_entityMigrationPolicyClassName = v10;
          if (!v10 || ([(NSString *)v10 isNSString]& 1) != 0)
          {
            v11 = MEMORY[0x1E695DFD8];
            v12 = objc_opt_class();
            v4->_attributeMappings = [a3 decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, objc_opt_class(), 0), @"NSAttributeMappings"}];
            v13 = MEMORY[0x1E695DFD8];
            v14 = objc_opt_class();
            v4->_relationshipMappings = [a3 decodeObjectOfClasses:objc_msgSend(v13 forKey:{"setWithObjects:", v14, objc_opt_class(), 0), @"NSRelationshipMappings"}];
            *&v4->_entityMappingFlags &= ~1u;
            return v4;
          }

          v15 = MEMORY[0x1E696ABC0];
          v16 = *MEMORY[0x1E696A250];
          v17 = &unk_1EF434E50;
        }
      }
    }

    [a3 failWithError:{objc_msgSend(v15, "errorWithDomain:code:userInfo:", v16, 4866, v17)}];

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

- (id)_initWithSourceEntityDescription:(id)a3 destinationEntityDescription:(id)a4
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
    if (a3)
    {
      v7->_sourceEntityName = [objc_msgSend(a3 "name")];
      v8 = [objc_msgSend(a3 "versionHash")];
    }

    else
    {
      v8 = 0;
      v7->_sourceEntityName = 0;
    }

    v7->_sourceEntityVersionHash = v8;
    if (a4)
    {
      v7->_destinationEntityName = [objc_msgSend(a4 "name")];
      v9 = [objc_msgSend(a4 "versionHash")];
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

- (void)_setIsEditable:(BOOL)a3
{
  entityMappingFlags = self->_entityMappingFlags;
  if (((*&entityMappingFlags ^ a3) & 1) == 0)
  {
    if (*&entityMappingFlags)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Entity Mappings cannot become mutable after being marked immutable." userInfo:{0, v3, v4}]);
    }

    self->_entityMappingFlags = (*&entityMappingFlags | !a3);

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

      v2 = [v1 attributeMappings];
      v3 = [v1 relationshipMappings];
      v4 = [v2 count];
      v5 = [v3 count];
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5 + v4];
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5 + v4];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
              objc_enumerationMutation(v2);
            }

            v12 = *(*(&v23 + 1) + 8 * i);
            [v7 addObject:v12];
            [v6 addObject:{objc_msgSend(v12, "name")}];
          }

          v9 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v9);
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
              objc_enumerationMutation(v3);
            }

            v17 = *(*(&v19 + 1) + 8 * j);
            [v7 addObject:v17];
            [v6 addObject:{objc_msgSend(v17, "name")}];
          }

          v14 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
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