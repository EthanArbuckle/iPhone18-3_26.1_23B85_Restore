@interface NSRelationshipDescription
- (BOOL)_isSchemaEqual:(id)a3;
- (BOOL)_nonPredicateValidateValue:(id *)a3 forKey:(id)a4 inObject:(id)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (NSData)versionHash;
- (NSEntityDescription)destinationEntity;
- (NSRelationshipDescription)initWithCoder:(id)a3;
- (NSRelationshipDescription)inverseRelationship;
- (id)_initWithName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_createCachesAndOptimizeState;
- (void)_versionHash:(char *)a3 inStyle:(unint64_t)a4 proxyContext:(id)a5;
- (void)_writeIntoData:(id)a3 propertiesDict:(id)a4 uniquedPropertyNames:(id)a5 uniquedStrings:(id)a6 uniquedData:(id)a7 entitiesSlots:(id)a8 fetchRequests:(id)a9;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setDestinationEntity:(NSEntityDescription *)destinationEntity;
- (void)setInverseRelationship:(NSRelationshipDescription *)inverseRelationship;
- (void)setMaxCount:(NSUInteger)maxCount;
- (void)setMinCount:(NSUInteger)minCount;
@end

@implementation NSRelationshipDescription

- (NSEntityDescription)destinationEntity
{
  result = self->_destinationEntity;
  if (!result)
  {
    if (self->_lazyDestinationEntityName)
    {
      result = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] managedObjectModel];
      if (result)
      {
        lazyDestinationEntityName = self->_lazyDestinationEntityName;
        versionHash = result->_versionHash;

        return [versionHash objectForKey:lazyDestinationEntityName];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (NSRelationshipDescription)inverseRelationship
{
  result = self->_inverseRelationship;
  if (!result)
  {
    if (self->_lazyInverseRelationshipName)
    {
      v4 = [(NSRelationshipDescription *)self destinationEntity];
      lazyInverseRelationshipName = self->_lazyInverseRelationshipName;

      return [(NSEntityDescription *)v4 _relationshipNamed:?];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  self->_destinationEntity = 0;

  self->_lazyDestinationEntityName = 0;
  self->_inverseRelationship = 0;

  self->_lazyInverseRelationshipName = 0;
  v3.receiver = self;
  v3.super_class = NSRelationshipDescription;
  [(NSPropertyDescription *)&v3 dealloc];
}

- (void)_createCachesAndOptimizeState
{
  v23[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NSRelationshipDescription;
  [(NSPropertyDescription *)&v15 _createCachesAndOptimizeState];
  if (!self->_destinationEntity)
  {
    [(NSRelationshipDescription *)self setDestinationEntity:[(NSRelationshipDescription *)self destinationEntity]];
  }

  if (!self->_inverseRelationship)
  {
    [(NSRelationshipDescription *)self setInverseRelationship:[(NSRelationshipDescription *)self inverseRelationship]];
  }

  if ([-[NSDictionary objectForKey:](-[NSPropertyDescription userInfo](self "userInfo")])
  {
    if ([(NSRelationshipDescription *)self isToMany])
    {
      if ([(NSRelationshipDescription *)self isOrdered])
      {
        goto LABEL_8;
      }

      v12 = *MEMORY[0x1E696A250];
      v18 = *MEMORY[0x1E696A588];
      v19 = @"Relationship is not ordered";
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:v12 code:1591 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}];
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D940];
      v14 = *MEMORY[0x1E696AA08];
      v16[0] = @"unsupported relationship";
      v16[1] = v14;
      v17[0] = self;
      v17[1] = v13;
      v9 = MEMORY[0x1E695DF20];
      v10 = v17;
      v11 = v16;
    }

    else
    {
      v4 = *MEMORY[0x1E696A250];
      v22 = *MEMORY[0x1E696A588];
      v23[0] = @"Relationship is not a toMany";
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:v4 code:1591 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v23, &v22, 1)}];
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D940];
      v8 = *MEMORY[0x1E696AA08];
      v20[0] = @"unsupported relationship";
      v20[1] = v8;
      v21[0] = self;
      v21[1] = v5;
      v9 = MEMORY[0x1E695DF20];
      v10 = v21;
      v11 = v20;
    }

    objc_exception_throw([v6 exceptionWithName:v7 reason:@"Unsupported relationship type for ordered index" userInfo:{objc_msgSend(v9, "dictionaryWithObjects:forKeys:count:", v10, v11, 2)}]);
  }

LABEL_8:
  v3 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = NSRelationshipDescription;
  [(NSPropertyDescription *)&v8 encodeWithCoder:?];
  v5 = objc_autoreleasePoolPush();
  [a3 encodeInt:-[NSRelationshipDescription maxCount](self forKey:{"maxCount"), @"NSMaxCount"}];
  [a3 encodeInt:-[NSRelationshipDescription minCount](self forKey:{"minCount"), @"NSMinCount"}];
  [a3 encodeInt:-[NSRelationshipDescription deleteRule](self forKey:{"deleteRule"), @"NSDeleteRule"}];
  [a3 encodeConditionalObject:-[NSRelationshipDescription destinationEntity](self forKey:{"destinationEntity"), @"NSDestinationEntity"}];
  if ([(NSRelationshipDescription *)self destinationEntity])
  {
    lazyDestinationEntityName = [(NSEntityDescription *)[(NSRelationshipDescription *)self destinationEntity] name];
  }

  else
  {
    lazyDestinationEntityName = self->_lazyDestinationEntityName;
  }

  [a3 encodeObject:lazyDestinationEntityName forKey:@"_NSDestinationEntityName"];
  [a3 encodeConditionalObject:-[NSRelationshipDescription inverseRelationship](self forKey:{"inverseRelationship"), @"NSInverseRelationship"}];
  if ([(NSRelationshipDescription *)self inverseRelationship])
  {
    lazyInverseRelationshipName = [(NSPropertyDescription *)[(NSRelationshipDescription *)self inverseRelationship] name];
  }

  else
  {
    lazyInverseRelationshipName = self->_lazyInverseRelationshipName;
  }

  [a3 encodeObject:lazyInverseRelationshipName forKey:@"_NSInverseRelationshipName"];
  objc_autoreleasePoolPop(v5);
}

- (NSRelationshipDescription)initWithCoder:(id)a3
{
  v21.receiver = self;
  v21.super_class = NSRelationshipDescription;
  v4 = [(NSPropertyDescription *)&v21 initWithCoder:?];
  if (v4)
  {
    v5 = +[PFModelDecoderContext retainedContext];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v18 = __43__NSRelationshipDescription_initWithCoder___block_invoke;
    v19 = &unk_1E6EC16F0;
    v20 = v5;
    v4->_maxCount = [a3 decodeIntForKey:@"NSMaxCount"];
    v4->_minCount = [a3 decodeIntForKey:@"NSMinCount"];
    v4->_deleteRule = [a3 decodeIntForKey:@"NSDeleteRule"];
    v4->_destinationEntity = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSDestinationEntity"];
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_NSDestinationEntityName"];
    if (!v4->_destinationEntity)
    {
      v11 = v6;
      if (v6 && ([v6 isNSString] & 1) == 0)
      {
        v10 = &unk_1EF435530;
        goto LABEL_30;
      }

      v4->_lazyDestinationEntityName = [v11 copy];
      goto LABEL_14;
    }

    if (v5)
    {
      v7 = v5[3];
    }

    else
    {
      v7 = 0;
    }

    [v7 addObject:?];
    destinationEntity = v4->_destinationEntity;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = &unk_1EF435558;
      goto LABEL_30;
    }

    if (v5)
    {
      if (v5[1])
      {
        goto LABEL_14;
      }

      v9 = v5[2];
    }

    else
    {
      v9 = 0;
    }

    if (v4->_destinationEntity != v9)
    {
      v10 = &unk_1EF435580;
      goto LABEL_30;
    }

LABEL_14:
    v4->_inverseRelationship = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSInverseRelationship"];
    v12 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_NSInverseRelationshipName"];
    if (v4->_inverseRelationship)
    {
      if (v5)
      {
        v13 = v5[3];
      }

      else
      {
        v13 = 0;
      }

      [v13 addObject:?];
      inverseRelationship = v4->_inverseRelationship;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v5 && (v5[1] || v5[2]) || v4->_inverseRelationship == v4)
        {
          goto LABEL_31;
        }

        v10 = &unk_1EF4355F8;
      }

      else
      {
        v10 = &unk_1EF4355D0;
      }
    }

    else
    {
      v15 = v12;
      if (!v12 || ([v12 isNSString] & 1) != 0)
      {
        v4->_lazyInverseRelationshipName = [v15 copy];
LABEL_31:
        v18(v17);
        return v4;
      }

      v10 = &unk_1EF4355A8;
    }

LABEL_30:
    [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, v10)}];

    v4 = 0;
    goto LABEL_31;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = NSRelationshipDescription;
  v4 = [(NSPropertyDescription *)&v11 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    v4[16] = self->_maxCount;
    v4[17] = self->_minCount;
    v4[18] = self->_deleteRule;
    destinationEntity = self->_destinationEntity;
    if (destinationEntity)
    {
      v7 = [(NSString *)[(NSEntityDescription *)destinationEntity name] copy];
    }

    else
    {
      v7 = [(NSString *)self->_lazyDestinationEntityName copy];
    }

    v5[13] = v7;
    inverseRelationship = self->_inverseRelationship;
    if (inverseRelationship)
    {
      v9 = [(NSString *)[(NSPropertyDescription *)inverseRelationship name] copy];
    }

    else
    {
      v9 = [(NSString *)self->_lazyInverseRelationshipName copy];
    }

    v5[15] = v9;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v20 = v3;
    v21 = v4;
    v19.receiver = self;
    v19.super_class = NSRelationshipDescription;
    LODWORD(v7) = [(NSPropertyDescription *)&v19 isEqual:?];
    if (v7)
    {
      v8 = [(NSRelationshipDescription *)self maxCount];
      if (v8 == [a3 maxCount] && (v9 = -[NSRelationshipDescription minCount](self, "minCount"), v9 == objc_msgSend(a3, "minCount")) && (v10 = -[NSRelationshipDescription deleteRule](self, "deleteRule"), v10 == objc_msgSend(a3, "deleteRule")) && (v11 = -[NSRelationshipDescription isOrdered](self, "isOrdered"), v11 == objc_msgSend(a3, "isOrdered")))
      {
        v12 = [objc_msgSend(a3 "destinationEntity")];
        v7 = [(NSEntityDescription *)[(NSRelationshipDescription *)self destinationEntity] name];
        if (v12 == v7 || (v13 = v7, LOBYTE(v7) = 0, v12) && v13 && (LODWORD(v7) = [(NSString *)v12 isEqual:?], v7))
        {
          v14 = [(NSRelationshipDescription *)self inverseRelationship];
          v15 = [a3 inverseRelationship];
          v16 = [(NSPropertyDescription *)v14 name];
          v7 = [v15 name];
          if (v16 == v7)
          {
            LOBYTE(v7) = 1;
          }

          else
          {
            v17 = v7;
            LOBYTE(v7) = 0;
            if (v16 && v17)
            {
              LOBYTE(v7) = [(NSString *)v16 isEqual:?];
            }
          }
        }
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }
  }

  return v7;
}

- (BOOL)_isSchemaEqual:(id)a3
{
  v13.receiver = self;
  v13.super_class = NSRelationshipDescription;
  LODWORD(v5) = [(NSPropertyDescription *)&v13 isEqual:?];
  if (v5)
  {
    v6 = [(NSRelationshipDescription *)self maxCount];
    if (v6 == [a3 maxCount] && (v7 = -[NSRelationshipDescription minCount](self, "minCount"), v7 == objc_msgSend(a3, "minCount")) && (v8 = -[NSRelationshipDescription deleteRule](self, "deleteRule"), v8 == objc_msgSend(a3, "deleteRule")) && (v9 = -[NSRelationshipDescription isOrdered](self, "isOrdered"), v9 == objc_msgSend(a3, "isOrdered")))
    {
      v10 = [objc_msgSend(a3 "destinationEntity")];
      v5 = [(NSEntityDescription *)[(NSRelationshipDescription *)self destinationEntity] name];
      if (v10 == v5)
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        v11 = v5;
        LOBYTE(v5) = 0;
        if (v10 && v11)
        {
          LOBYTE(v5) = [(NSString *)v10 isEqual:?];
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = NSRelationshipDescription;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, destination entity %@, inverseRelationship %@, minCount %lu, maxCount %lu, isOrdered %d, deleteRule %lu", -[NSPropertyDescription description](&v6, sel_description), -[NSEntityDescription name](-[NSRelationshipDescription destinationEntity](self, "destinationEntity"), "name"), -[NSPropertyDescription name](-[NSRelationshipDescription inverseRelationship](self, "inverseRelationship"), "name"), -[NSRelationshipDescription minCount](self, "minCount"), -[NSRelationshipDescription maxCount](self, "maxCount"), -[NSRelationshipDescription isOrdered](self, "isOrdered"), -[NSRelationshipDescription deleteRule](self, "deleteRule")];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (void)setMaxCount:(NSUInteger)maxCount
{
  v3 = maxCount;
  [(NSPropertyDescription *)self _throwIfNotEditable];
  self->_maxCount = v3;
}

- (void)setMinCount:(NSUInteger)minCount
{
  v3 = minCount;
  [(NSPropertyDescription *)self _throwIfNotEditable];
  self->_minCount = v3;
}

- (void)setDestinationEntity:(NSEntityDescription *)destinationEntity
{
  [(NSPropertyDescription *)self _throwIfNotEditable];
  self->_destinationEntity = destinationEntity;

  self->_lazyDestinationEntityName = 0;
}

- (void)setInverseRelationship:(NSRelationshipDescription *)inverseRelationship
{
  [(NSPropertyDescription *)self _throwIfNotEditable];
  self->_inverseRelationship = inverseRelationship;

  self->_lazyInverseRelationshipName = 0;
}

- (NSData)versionHash
{
  v3.receiver = self;
  v3.super_class = NSRelationshipDescription;
  return [(NSPropertyDescription *)&v3 versionHash];
}

- (id)_initWithName:(id)a3
{
  v4.receiver = self;
  v4.super_class = NSRelationshipDescription;
  result = [(NSPropertyDescription *)&v4 _initWithName:a3];
  if (result)
  {
    *(result + 17) = 0;
    *(result + 16) = 0;
    *(result + 18) = 1;
  }

  return result;
}

- (void)_versionHash:(char *)a3 inStyle:(unint64_t)a4 proxyContext:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v9 = [(NSRelationshipDescription *)self destinationEntity];
  v31.receiver = self;
  v31.super_class = NSRelationshipDescription;
  [(NSPropertyDescription *)&v31 _versionHash:data inStyle:a4];
  CC_SHA256_Update(&c, data, 0x20u);
  if (v9)
  {
    v10 = [(NSEntityDescription *)v9 name];
    if (v10)
    {
      v11 = v10;
      CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
      if (!CStringPtr)
      {
        CStringPtr = [(__CFString *)v11 UTF8String];
      }

      v13 = strlen(CStringPtr);
      CC_SHA256_Update(&c, CStringPtr, v13);
    }
  }

  v14 = [(NSRelationshipDescription *)self inverseRelationship];
  if (v14)
  {
    v15 = v14;
    if (v14 != self || a4 == 1 && a5)
    {
      v16 = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] superentity];
      v17 = [(NSPropertyDescription *)self name];
      if (!v16)
      {
        goto LABEL_19;
      }

      v18 = v17;
      v19 = 0;
      do
      {
        v20 = [(NSEntityDescription *)v16 _relationshipNamed:v18];
        if (v20)
        {
          v19 = v20;
        }

        v16 = [(NSEntityDescription *)v16 superentity];
      }

      while (v16);
      if (a5 || !v19 || (v21 = [v19 inverseRelationship], a4) || v19 != v21)
      {
LABEL_19:
        v22 = [(NSPropertyDescription *)v15 name];
        v23 = v22;
        if (v22 && (v24 = CFStringGetCStringPtr(v22, 0x8000100u)) != 0 || (v24 = [(__CFString *)v23 UTF8String]) != 0)
        {
          v25 = v24;
          v26 = strlen(v24);
          CC_SHA256_Update(&c, v25, v26);
        }
      }
    }
  }

  maxCount = self->_maxCount;
  CC_SHA256_Update(&c, &maxCount, 4u);
  maxCount = self->_minCount;
  CC_SHA256_Update(&c, &maxCount, 4u);
  v27 = [(NSRelationshipDescription *)self isOrdered];
  v29 = v27;
  if (v27)
  {
    CC_SHA256_Update(&c, &v29, 2u);
  }

  CC_SHA256_Final(a3, &c);
  v28 = *MEMORY[0x1E69E9840];
}

- (BOOL)_nonPredicateValidateValue:(id *)a3 forKey:(id)a4 inObject:(id)a5 error:(id *)a6
{
  v119 = *MEMORY[0x1E69E9840];
  v104.receiver = self;
  v104.super_class = NSRelationshipDescription;
  v11 = [NSPropertyDescription _nonPredicateValidateValue:sel__nonPredicateValidateValue_forKey_inObject_error_ forKey:? inObject:? error:?];
  if (!v11)
  {
    goto LABEL_107;
  }

  if (!*a3)
  {
LABEL_97:
    LOBYTE(v11) = 1;
    goto LABEL_107;
  }

  v12 = [a5 isInserted];
  v13 = [*a3 isFault];
  v14 = [a5 managedObjectContext];
  v101 = [v14 _isSwiftBound];
  if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1 && ![(NSRelationshipDescription *)self isToMany])
  {
    v15 = *a3;
    if (*a3)
    {
      if ((v15[16] & 0x24) != 0)
      {
        LODWORD(v102) = v13;
        LODWORD(v103) = v12;
        v96 = v14;
        v16 = a6;
        v17 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v19 = [a5 objectID];
              v20 = [v15 objectID];
              *buf = 138413314;
              v110 = a4;
              v111 = 2048;
              v112 = a5;
              v113 = 2112;
              v114 = v19;
              v115 = 2048;
              v116 = v15;
              v117 = 2112;
              v118 = v20;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: repairing missing delete propagation for to-one relationship %@ on object %p (%@) with bad fault %p (%@)\n", buf, 0x34u);
            }
          }

          else
          {
            v30 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [a5 objectID];
              v32 = [v15 objectID];
              *buf = 138413314;
              v110 = a4;
              v111 = 2048;
              v112 = a5;
              v113 = 2112;
              v114 = v31;
              v115 = 2048;
              v116 = v15;
              v117 = 2112;
              v118 = v32;
              _os_log_impl(&dword_18565F000, v30, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: repairing missing delete propagation for to-one relationship %@ on object %p (%@) with bad fault %p (%@)\n", buf, 0x34u);
            }
          }
        }

        v33 = _pflogging_catastrophic_mode;
        v34 = [a5 objectID];
        v35 = [v15 objectID];
        v36 = 4;
        if (v33)
        {
          v36 = 1;
        }

        _NSCoreDataLog_console(v36, "repairing missing delete propagation for to-one relationship %@ on object %p (%@) with bad fault %p (%@)", a4, a5, v34, v15, v35);
        objc_autoreleasePoolPop(v17);
        a6 = v16;
        v14 = v96;
        v12 = v103;
        v13 = v102;
        if ([[(NSRelationshipDescription *)self inverseRelationship] deleteRule]== NSCascadeDeleteRule)
        {
          if (![a5 managedObjectContext])
          {
            -[NSManagedObjectContext _forceRegisterLostFault:]([a5 managedObjectContext], a5);
          }

          [objc_msgSend(a5 "managedObjectContext")];
        }

        [a5 setValue:0 forKey:a4];
      }

      else
      {
        if (v101 && ![*a3 managedObjectContext])
        {
          [v14 insertObject:v15];
        }

        if (([(NSManagedObject *)v15 _isValidRelationshipDestination__]& 1) == 0)
        {
          if (a6)
          {
            v21 = *a3;
            v22 = MEMORY[0x1E695DF20];
            v23 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
            v24 = [MEMORY[0x1E695DFB0] null];
            v25 = [v22 dictionaryWithObjectsAndKeys:{v23, @"NSAffectedObjectsErrorKey", v24, @"Dangling reference to an invalid object.", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"NSValidationErrorShouldAttemptRecoveryKey", 0}];
            v26 = a5;
            v27 = 1550;
            v28 = a4;
            v29 = v21;
LABEL_57:
            v55 = [(NSManagedObject *)v26 _generateErrorWithCode:v27 andMessage:0 forKey:v28 andValue:v29 additionalDetail:v25];
            LOBYTE(v11) = 0;
            *a6 = v55;
            goto LABEL_107;
          }

          goto LABEL_106;
        }
      }
    }
  }

  if (![(NSRelationshipDescription *)self isToMany])
  {
    v53 = *a3;
    v54 = [(NSRelationshipDescription *)self destinationEntity];
    if (!v53 || !v54 || ![(NSEntityDescription *)v54 _subentitiesIncludes:_PFEntityForManagedObject(v53)])
    {
      if (a6)
      {
LABEL_55:
        v29 = *a3;
        v26 = a5;
        v27 = 1550;
LABEL_56:
        v28 = a4;
        v25 = 0;
        goto LABEL_57;
      }

LABEL_106:
      LOBYTE(v11) = 0;
      goto LABEL_107;
    }

    goto LABEL_97;
  }

  v103 = a6;
  if (!-[NSRelationshipDescription isOrdered](self, "isOrdered") && ([*a3 isNSSet] & 1) == 0 || (v37 = v13, v96 = v14, -[NSRelationshipDescription isOrdered](self, "isOrdered")) && (objc_msgSend(*a3, "isNSOrderedSet") & 1) == 0)
  {
    v87 = MEMORY[0x1E695DF30];
    v88 = *MEMORY[0x1E695D930];
    v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Illegal container for relationship: value = %@; relationship = %@.", *a3, a4];
    objc_exception_throw([v87 exceptionWithName:v88 reason:v89 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", *a3, a4)}]);
  }

  v97 = [(NSPropertyDescription *)self isOptional];
  if (!self)
  {
    goto LABEL_58;
  }

  v38 = *a3;
  v39 = [(NSRelationshipDescription *)self destinationEntity];
  if (([v38 isFault] & 1) == 0)
  {
    if ([v38 count])
    {
      v107 = 0u;
      v108 = 0u;
      v106 = 0u;
      v105 = 0u;
      v40 = [v38 countByEnumeratingWithState:&v105 objects:buf count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v106;
        v102 = *v106;
LABEL_37:
        v43 = 0;
        while (1)
        {
          if (*v106 != v42)
          {
            objc_enumerationMutation(v38);
          }

          if (!v39)
          {
            break;
          }

          v44 = *(*(&v105 + 1) + 8 * v43);
          if (!v44 || ![(NSEntityDescription *)v39 _subentitiesIncludes:_PFEntityForManagedObject(v44)])
          {
            break;
          }

          ++v43;
          v42 = v102;
          if (v41 == v43)
          {
            v41 = [v38 countByEnumeratingWithState:&v105 objects:buf count:16];
            v42 = v102;
            if (v41)
            {
              goto LABEL_37;
            }

            goto LABEL_45;
          }
        }

LABEL_58:
        a6 = v103;
        if (!v103)
        {
          goto LABEL_106;
        }

        goto LABEL_55;
      }
    }
  }

LABEL_45:
  v45 = v97;
  LOBYTE(v11) = 1;
  if (v97 & v37 & 1) == 0 && ((v12 | v37 ^ 1))
  {
    a6 = v103;
    if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1)
    {
      v46 = *a3;
      v47 = [*a3 count];
      if (v47)
      {
        v48 = v47;
        v98 = [[(NSRelationshipDescription *)self inverseRelationship] deleteRule];
        v49 = [(NSRelationshipDescription *)self isOrdered];
        v95 = v49;
        MEMORY[0x1EEE9AC00](v49);
        v51 = v92 - v50;
        v92[1] = v52;
        if (v48 > 0x200)
        {
          v51 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v51, 8 * v48);
        }

        [v46 getObjects:v51];
        v56 = 0;
        v57 = 0;
        v102 = 1;
        v94 = @"NSAffectedObjectsErrorKey";
        *&v58 = 138413314;
        v93 = v58;
        v100 = v48;
        v99 = v51;
        do
        {
          v59 = *&v51[8 * v57];
          if (v59 && (v59[16] & 0x24) != 0)
          {
            v60 = objc_autoreleasePoolPush();
            _pflogInitialize(4);
            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v61 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  v62 = [a5 objectID];
                  v63 = [v59 objectID];
                  *buf = v93;
                  v110 = a4;
                  v111 = 2048;
                  v112 = a5;
                  v113 = 2112;
                  v114 = v62;
                  v115 = 2048;
                  v116 = v59;
                  v117 = 2112;
                  v118 = v63;
                  _os_log_error_impl(&dword_18565F000, v61, OS_LOG_TYPE_ERROR, "CoreData: error: repairing missing delete propagation for to-many relationship %@ on object %p (%@) with bad fault %p (%@)\n", buf, 0x34u);
                }
              }

              else
              {
                v73 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                {
                  v74 = [a5 objectID];
                  v75 = [v59 objectID];
                  *buf = v93;
                  v110 = a4;
                  v111 = 2048;
                  v112 = a5;
                  v113 = 2112;
                  v114 = v74;
                  v115 = 2048;
                  v116 = v59;
                  v117 = 2112;
                  v118 = v75;
                  _os_log_impl(&dword_18565F000, v73, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: repairing missing delete propagation for to-many relationship %@ on object %p (%@) with bad fault %p (%@)\n", buf, 0x34u);
                }
              }
            }

            v76 = _pflogging_catastrophic_mode;
            v77 = [a5 objectID];
            v78 = [v59 objectID];
            v79 = 4;
            if (v76)
            {
              v79 = 1;
            }

            _NSCoreDataLog_console(v79, "repairing missing delete propagation for to-many relationship %@ on object %p (%@) with bad fault %p (%@)", a4, a5, v77, v59, v78);
            objc_autoreleasePoolPop(v60);
            v48 = v100;
            v51 = v99;
            if (v98 == NSCascadeDeleteRule)
            {
              if (![a5 managedObjectContext])
              {
                -[NSManagedObjectContext _forceRegisterLostFault:]([a5 managedObjectContext], a5);
              }

              [objc_msgSend(a5 "managedObjectContext")];
            }

            if (!v56)
            {
              if (v95)
              {
                v80 = [a5 mutableOrderedSetValueForKey:a4];
              }

              else
              {
                v80 = [a5 mutableSetValueForKey:a4];
              }

              v56 = v80;
            }

            [v56 removeObject:v59];
          }

          else
          {
            if (v101 && ![*&v51[8 * v57] managedObjectContext])
            {
              [v96 insertObject:v59];
            }

            isValidRelationshipDestination = [(NSManagedObject *)v59 _isValidRelationshipDestination__];
            v102 = isValidRelationshipDestination & v102;
            if (v103 && (isValidRelationshipDestination & 1) == 0)
            {
              v65 = *a3;
              v66 = MEMORY[0x1E695DF20];
              v67 = [MEMORY[0x1E695DEC8] arrayWithObject:v59];
              v68 = [MEMORY[0x1E695DFB0] null];
              v69 = [MEMORY[0x1E696AD98] numberWithBool:1];
              v91 = v68;
              v51 = v99;
              v70 = [v66 dictionaryWithObjectsAndKeys:{v67, v94, v91, @"Dangling reference to an invalid object.", v69, @"NSValidationErrorShouldAttemptRecoveryKey", 0}];
              v71 = v65;
              v48 = v100;
              v72 = [(NSManagedObject *)a5 _generateErrorWithCode:0 andMessage:a4 forKey:v71 andValue:v70 additionalDetail:?];
              v102 = 0;
              *v103 = v72;
            }
          }

          ++v57;
        }

        while (v48 != v57);
        if (v48 >= 0x201)
        {
          NSZoneFree(0, v51);
        }

        a6 = v103;
        v45 = v97;
        if ((v102 & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

    v81 = [(NSRelationshipDescription *)self minCount];
    v82 = [(NSRelationshipDescription *)self maxCount];
    v83 = [*a3 count];
    if (v83)
    {
      v84 = 0;
    }

    else
    {
      v84 = v45;
    }

    if (v84)
    {
      goto LABEL_97;
    }

    v85 = v83;
    if (v81 && v83 < v81)
    {
      if (a6)
      {
        v29 = *a3;
        v26 = a5;
        v27 = 1580;
        goto LABEL_56;
      }

      goto LABEL_106;
    }

    LOBYTE(v11) = 1;
    if (v82 && v85 > v82)
    {
      a6 = v103;
      if (v103)
      {
        v29 = *a3;
        v26 = a5;
        v27 = 1590;
        goto LABEL_56;
      }

      goto LABEL_106;
    }
  }

LABEL_107:
  v86 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)_writeIntoData:(id)a3 propertiesDict:(id)a4 uniquedPropertyNames:(id)a5 uniquedStrings:(id)a6 uniquedData:(id)a7 entitiesSlots:(id)a8 fetchRequests:(id)a9
{
  _writeInt32IntoData(a3, 0);
  v16 = [a3 length];
  v22.receiver = self;
  v22.super_class = NSRelationshipDescription;
  [(NSPropertyDescription *)&v22 _appendPropertyFieldsToData:a3 propertiesDict:a4 uniquedPropertyNames:a5 uniquedStrings:a6 uniquedData:a7 entitiesSlots:a8];
  _writeInt32IntoData(a3, [a8 indexForKey:{-[NSEntityDescription name](-[NSRelationshipDescription destinationEntity](self, "destinationEntity"), "name")}]);
  v17 = [(NSRelationshipDescription *)self inverseRelationship];
  if (v17)
  {
    v18 = v17;
    _writeInt32IntoData(a3, 1u);
    v19 = [objc_msgSend(a4 objectForKey:{v18), "unsignedIntegerValue"}];
  }

  else
  {
    v19 = 0;
  }

  _writeInt32IntoData(a3, v19);
  v20 = v16 - 4;
  _writeInt32IntoData(a3, self->_maxCount);
  _writeInt32IntoData(a3, self->_minCount);
  _writeInt32IntoData(a3, self->_deleteRule);
  v21 = bswap32([a3 length] - v20);
  [a3 replaceBytesInRange:v20 withBytes:{4, &v21}];
}

@end