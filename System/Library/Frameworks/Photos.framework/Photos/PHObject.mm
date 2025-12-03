@interface PHObject
+ (BOOL)isValidCloudIdentifierStringValue:(id)value;
+ (PHEntityKeyMap)entityKeyMap;
+ (id)authorizationAwareFetchResultWithOptions:(id)options fetchBlock:(id)block;
+ (id)entityKeyForPropertyKey:(id)key;
+ (id)fetchPredicateFromComparisonPredicate:(id)predicate options:(id)options;
+ (id)identifierCode;
+ (id)identifierCodeFromLocalIdentifier:(id)identifier;
+ (id)identifierPropertiesToFetch;
+ (id)internalSortDescriptorForPropertyKey:(id)key ascending:(BOOL)ascending;
+ (id)localIdentifierWithUUID:(id)d;
+ (id)localIdentifiersWithUUIDs:(id)ds;
+ (id)objectIDsMatchingEntityFromObjectIDs:(id)ds context:(id)context;
+ (id)propertyKeyForEntityKey:(id)key;
+ (id)uuidFromLocalIdentifier:(id)identifier;
+ (id)uuidsFromLocalIdentifiers:(id)identifiers;
+ (void)assertAllObjects:(id)objects forSelector:(SEL)selector areOfType:(Class)type;
+ (void)extendPropertiesToFetch:(id)fetch withProperties:(id)properties;
+ (void)extendPropertiesToFetch:(id)fetch withPropertySetClass:(Class)class;
- (BOOL)hasLoadedPropertySet:(id)set;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)localIdentifier;
- (PHObject)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
- (id)_shortObjectIDURI;
- (id)identifier;
- (unint64_t)hash;
- (unint64_t)propertyHint;
- (void)addFetchPropertyHint:(unint64_t)hint;
- (void)assertRequiredFetchPropertyHints:(unint64_t)hints;
- (void)dealloc;
@end

@implementation PHObject

void __39__PHObject_identifierPropertiesToFetch__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v3[0] = v0;
  v3[1] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v2 = identifierPropertiesToFetch_array_35432;
  identifierPropertiesToFetch_array_35432 = v1;
}

+ (id)identifierPropertiesToFetch
{
  pl_dispatch_once();
  v2 = identifierPropertiesToFetch_array_35432;

  return v2;
}

- (unint64_t)hash
{
  identifier = [(PHObject *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)identifier
{
  objectID = self->_objectID;
  if (objectID)
  {
    uuid = objectID;
  }

  else
  {
    uuid = [(PHObject *)self uuid];
    if (!uuid)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHObject.m" lineNumber:442 description:@"Must have a uuid if no _objectID"];

      uuid = 0;
    }
  }

  return uuid;
}

- (void)dealloc
{
  ph_objc_removeAssociatedObjects(self);
  v3.receiver = self;
  v3.super_class = PHObject;
  [(PHObject *)&v3 dealloc];
}

- (NSString)localIdentifier
{
  v3 = objc_opt_class();
  uuid = [(PHObject *)self uuid];
  v5 = [v3 localIdentifierWithUUID:uuid];

  return v5;
}

- (unint64_t)propertyHint
{
  os_unfair_lock_lock(&self->_propertyHintLock);
  propertyHintLock_propertyHint = self->_propertyHintLock_propertyHint;
  os_unfair_lock_unlock(&self->_propertyHintLock);
  return propertyHintLock_propertyHint;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = PHObject;
  v3 = [(PHObject *)&v7 description];
  localIdentifier = [(PHObject *)self localIdentifier];
  v5 = [v3 stringByAppendingFormat:@" %@", localIdentifier];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(PHObject *)self identifier];
      identifier2 = [(PHObject *)v5 identifier];

      IsEqual = PLObjectIsEqual();
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (id)_shortObjectIDURI
{
  uRIRepresentation = [(NSManagedObjectID *)self->_objectID URIRepresentation];
  pathComponents = [uRIRepresentation pathComponents];
  v4 = [pathComponents count];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    path = [uRIRepresentation path];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [pathComponents subarrayWithRange:{v5, 2}];
    path = [v6 pathWithComponents:v7];
  }

  return path;
}

- (void)assertRequiredFetchPropertyHints:(unint64_t)hints
{
  v17 = *MEMORY[0x1E69E9840];
  propertyHint = [(PHObject *)self propertyHint];
  if ((hints & ~propertyHint) != 0)
  {
    v6 = propertyHint;
    v7 = [objc_opt_class() propertySetsForPropertyFetchHints:hints];
    v8 = [v7 description];
    if ([v7 count] == 1)
    {
      anyObject = [v7 anyObject];

      v8 = anyObject;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ not available unless prefetched (%lx)", v8, v6];
    if (PFOSVariantHasInternalDiagnostics())
    {
      v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v10 userInfo:0];
      objc_exception_throw(v12);
    }

    v11 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_FAULT, "Missing required fetch property hint: %{public}@ (%@)", buf, 0x16u);
    }
  }
}

- (void)addFetchPropertyHint:(unint64_t)hint
{
  os_unfair_lock_lock(&self->_propertyHintLock);
  self->_propertyHintLock_propertyHint |= hint;

  os_unfair_lock_unlock(&self->_propertyHintLock);
}

- (PHObject)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  libraryCopy = library;
  v18.receiver = self;
  v18.super_class = PHObject;
  v10 = [(PHObject *)&v18 init];
  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"objectID"];
    v12 = [PHPhotoLibrary uniquedOID:v11];
    objectID = v10->_objectID;
    v10->_objectID = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"deleted"];
    v10->_deleted = [v14 BOOLValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
    uuid = v10->_uuid;
    v10->_uuid = v15;

    objc_storeStrong(&v10->_photoLibrary, library);
    v10->_propertyHintLock_propertyHint = hint;
    v10->_propertyHintLock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (BOOL)hasLoadedPropertySet:(id)set
{
  setCopy = set;
  v5 = [objc_opt_class() propertySetClassForPropertySet:setCopy];

  result = 0;
  if (v5)
  {
    v6 = ph_objc_getAssociatedObject(self, v5);

    if (v6)
    {
      return 1;
    }
  }

  return result;
}

+ (id)authorizationAwareFetchResultWithOptions:(id)options fetchBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  if ([PHPhotoLibrary checkAuthorizationStatusForAPIAccessLevel:2])
  {
    blockCopy = blockCopy[2](blockCopy, optionsCopy);
  }

  else
  {
    v8 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];

    if (v8)
    {
      v9 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_FAULT, "Attempted fetch within change block can trigger deadlock, returning unauthorized fetch result", v12, 2u);
      }
    }

    [PHPhotoLibrary requestAuthorizationForAccessLevel:2 handler:&__block_literal_global_89];
    blockCopy = [[PHUnauthorizedFetchResult alloc] initWithOptions:optionsCopy status:[PHPhotoLibrary fetchBlock:"authorizationStatusForAccessLevel:" authorizationStatusForAccessLevel:?], blockCopy];
  }

  v10 = blockCopy;

  return v10;
}

+ (id)fetchPredicateFromComparisonPredicate:(id)predicate options:(id)options
{
  predicateCopy = predicate;
  optionsCopy = options;
  leftExpression = [predicateCopy leftExpression];
  rightExpression = [predicateCopy rightExpression];
  v57 = 0;
  if ([leftExpression expressionType] == 1 && !objc_msgSend(rightExpression, "expressionType") || objc_msgSend(rightExpression, "expressionType") == 1 && !objc_msgSend(leftExpression, "expressionType"))
  {
    expressionType = [leftExpression expressionType];
    if (expressionType == 1)
    {
      v26 = rightExpression;
    }

    else
    {
      v26 = leftExpression;
    }

    constantValue = [v26 constantValue];
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __58__PHObject_fetchPredicateFromComparisonPredicate_options___block_invoke;
    v52[3] = &unk_1E75A8A78;
    v52[4] = &v53;
    v27 = PHQueryTransformExpressionConstantValue(constantValue, v52);
    if (*(v54 + 24) == 1)
    {
      v28 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v27];
    }

    else
    {
      v28 = v26;
    }

    v29 = v28;
    if (expressionType == 1)
    {
      v30 = objc_alloc(MEMORY[0x1E696AB18]);
      comparisonPredicateModifier = [predicateCopy comparisonPredicateModifier];
      predicateOperatorType = [predicateCopy predicateOperatorType];
      options = [predicateCopy options];
      v34 = leftExpression;
      v35 = v29;
    }

    else
    {
      v30 = objc_alloc(MEMORY[0x1E696AB18]);
      comparisonPredicateModifier = [predicateCopy comparisonPredicateModifier];
      predicateOperatorType = [predicateCopy predicateOperatorType];
      options = [predicateCopy options];
      v34 = v29;
      v35 = rightExpression;
    }

    v24 = [v30 initWithLeftExpression:v34 rightExpression:v35 modifier:comparisonPredicateModifier type:predicateOperatorType options:options];

    _Block_object_dispose(&v53, 8);
    goto LABEL_52;
  }

  if (([leftExpression expressionType] != 3 || (PHIsExpressionMatchingTypeOrAggregateMatchingType(rightExpression, &v57) & 1) == 0) && (objc_msgSend(rightExpression, "expressionType") != 3 || !PHIsExpressionMatchingTypeOrAggregateMatchingType(leftExpression, &v57)))
  {
    v24 = 0;
    goto LABEL_53;
  }

  expressionType2 = [leftExpression expressionType];
  if (expressionType2 == 3)
  {
    v11 = leftExpression;
  }

  else
  {
    v11 = rightExpression;
  }

  constantValue = [v11 keyPath];
  if ([constantValue isEqualToString:@"localIdentifier"] && (v57 & 1) == 0)
  {
    v50 = optionsCopy;
    if (expressionType2 == 3)
    {
      v13 = rightExpression;
    }

    else
    {
      v13 = leftExpression;
    }

    constantValue2 = [v13 constantValue];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __58__PHObject_fetchPredicateFromComparisonPredicate_options___block_invoke_2;
    v51[3] = &__block_descriptor_40_e8__16__0_8l;
    v51[4] = self;
    v48 = constantValue2;
    v15 = PHQueryTransformExpressionConstantValue(constantValue2, v51);
    localIdentifierExpressionForFetchRequests = [self localIdentifierExpressionForFetchRequests];
    v46 = v15;
    v17 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v15];
    v18 = objc_alloc(MEMORY[0x1E696AB18]);
    comparisonPredicateModifier2 = [predicateCopy comparisonPredicateModifier];
    predicateOperatorType2 = [predicateCopy predicateOperatorType];
    options2 = [predicateCopy options];
    if (expressionType2 == 3)
    {
      v22 = localIdentifierExpressionForFetchRequests;
      v23 = v17;
    }

    else
    {
      v22 = v17;
      v23 = localIdentifierExpressionForFetchRequests;
    }

    v24 = [v18 initWithLeftExpression:v22 rightExpression:v23 modifier:comparisonPredicateModifier2 type:predicateOperatorType2 options:options2];

LABEL_51:
    optionsCopy = v50;
    goto LABEL_52;
  }

  if ([self managedObjectSupportsCustomUUIDKey] & 1) != 0 || !objc_msgSend(constantValue, "isEqualToString:", @"uuid") || (v57)
  {
    if (constantValue)
    {
      v50 = optionsCopy;
      if (expressionType2 == 3)
      {
        v36 = rightExpression;
      }

      else
      {
        v36 = leftExpression;
      }

      v37 = v36;
      v38 = [self entityKeyForPropertyKey:constantValue];
      if (v38)
      {
        v39 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v38];
        v40 = [self transformValueExpression:v37 forKeyPath:constantValue];
        if (v40)
        {
          v49 = objc_alloc(MEMORY[0x1E696AB18]);
          comparisonPredicateModifier3 = [predicateCopy comparisonPredicateModifier];
          predicateOperatorType3 = [predicateCopy predicateOperatorType];
          options3 = [predicateCopy options];
          if (expressionType2 == 3)
          {
            v43 = v39;
            v44 = v40;
          }

          else
          {
            v43 = v40;
            v44 = v39;
          }

          v24 = [v49 initWithLeftExpression:v43 rightExpression:v44 modifier:comparisonPredicateModifier3 type:predicateOperatorType3 options:options3];
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      goto LABEL_51;
    }

    v24 = 0;
  }

  else
  {
    v24 = predicateCopy;
  }

LABEL_52:

LABEL_53:

  return v24;
}

id __58__PHObject_fetchPredicateFromComparisonPredicate_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v4 = [v3 objectID];
  }

  v5 = v4;

  return v5;
}

id __58__PHObject_fetchPredicateFromComparisonPredicate_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() uuidFromLocalIdentifier:v2];

  return v3;
}

+ (void)assertAllObjects:(id)objects forSelector:(SEL)selector areOfType:(Class)type
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  objectsCopy = objects;
  v8 = [objectsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(objectsCopy);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = MEMORY[0x1E695DF30];
          v14 = *MEMORY[0x1E695D940];
          v15 = MEMORY[0x1E696AEC0];
          v16 = NSStringFromSelector(selector);
          v17 = NSStringFromClass(type);
          v18 = [v15 stringWithFormat:@"Invalid object %@ passed to %@, objects must be of type %@", v12, v16, v17];
          v19 = [v13 exceptionWithName:v14 reason:v18 userInfo:0];
          v20 = v19;

          objc_exception_throw(v19);
        }
      }

      v9 = [objectsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

+ (id)identifierCodeFromLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length] < 0x29)
  {
    v4 = 0;
  }

  else
  {
    v4 = [identifierCopy substringFromIndex:40];
  }

  return v4;
}

+ (id)uuidsFromLocalIdentifiers:(id)identifiers
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PHObject_uuidsFromLocalIdentifiers___block_invoke;
  v5[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v5[4] = self;
  v3 = [identifiers _pl_map:v5];

  return v3;
}

+ (id)uuidFromLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy length];
  if (v4 >= 0x25)
  {
    v5 = [identifierCopy substringToIndex:36];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if (v4 == 36)
  {
    v5 = identifierCopy;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)localIdentifiersWithUUIDs:(id)ds
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PHObject_localIdentifiersWithUUIDs___block_invoke;
  v5[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v5[4] = self;
  v3 = [ds _pl_map:v5];

  return v3;
}

+ (id)localIdentifierWithUUID:(id)d
{
  dCopy = d;
  identifierCode = [self identifierCode];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", dCopy, @"/L0/", identifierCode];

  return v6;
}

+ (BOOL)isValidCloudIdentifierStringValue:(id)value
{
  v3 = [value componentsSeparatedByString:@":"];
  v4 = [v3 count] > 1;

  return v4;
}

+ (id)objectIDsMatchingEntityFromObjectIDs:(id)ds context:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  if ([dsCopy count])
  {
    managedEntityName = [self managedEntityName];
    v9 = PLSafeEntityForNameInManagedObjectContext();
    v10 = v9;
    if (v9)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__PHObject_objectIDsMatchingEntityFromObjectIDs_context___block_invoke;
      aBlock[3] = &unk_1E75A8A28;
      v15 = v9;
      v11 = _Block_copy(aBlock);
      v12 = [dsCopy _pl_filter:v11];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFD8] set];
    }
  }

  else
  {
    v12 = [MEMORY[0x1E695DFD8] set];
  }

  return v12;
}

uint64_t __57__PHObject_objectIDsMatchingEntityFromObjectIDs_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 entity];
  v4 = [v3 isKindOfEntity:*(a1 + 32)];

  return v4;
}

+ (id)internalSortDescriptorForPropertyKey:(id)key ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  keyCopy = key;
  v6 = [objc_opt_class() entityKeyForPropertyKey:keyCopy];

  v7 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v6 ascending:ascendingCopy];

  return v7;
}

+ (id)propertyKeyForEntityKey:(id)key
{
  keyCopy = key;
  entityKeyMap = [self entityKeyMap];
  v6 = [entityKeyMap propertyKeyForEntityKey:keyCopy];

  return v6;
}

+ (id)entityKeyForPropertyKey:(id)key
{
  keyCopy = key;
  entityKeyMap = [self entityKeyMap];
  v6 = [entityKeyMap entityKeyForPropertyKey:keyCopy];

  return v6;
}

+ (PHEntityKeyMap)entityKeyMap
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(self);
  v6 = [v4 stringWithFormat:@"%@ has no entityKeyMap", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)identifierCode
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(self);
  v6 = [v4 stringWithFormat:@"%@ has no identifier", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (void)extendPropertiesToFetch:(id)fetch withProperties:(id)properties
{
  v17 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  propertiesCopy = properties;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [propertiesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(propertiesCopy);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([fetchCopy indexOfObject:v11] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [fetchCopy addObject:v11];
        }
      }

      v8 = [propertiesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

+ (void)extendPropertiesToFetch:(id)fetch withPropertySetClass:(Class)class
{
  v37 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  if (([(objc_class *)class isToMany]& 1) == 0)
  {
    selfCopy = self;
    propertiesToFetch = [(objc_class *)class propertiesToFetch];
    keyPathFromPrimaryObject = [(objc_class *)class keyPathFromPrimaryObject];
    v25 = keyPathFromPrimaryObject;
    if (keyPathFromPrimaryObject)
    {
      v9 = [keyPathFromPrimaryObject stringByAppendingString:@"."];
    }

    else
    {
      v9 = 0;
    }

    v10 = [@"." stringByAppendingString:@"objectID"];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = propertiesToFetch;
    v11 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          if (v9)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"Trying to create a property path '%@' on '%@' with an unexpected property type: %@", v15, selfCopy, objc_opt_class()];
              v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
              objc_exception_throw(v23);
            }

            v16 = [v9 stringByAppendingString:v15];

            if ([v16 hasSuffix:v10])
            {
              v15 = v25;
            }

            else
            {
              v15 = v16;
            }
          }

          if ([fetchCopy indexOfObject:v15] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [fetchCopy addObject:v15];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v12);
    }

    if (objc_opt_respondsToSelector())
    {
      additionalPropertiesToFetchOnPrimaryObject = [(objc_class *)class additionalPropertiesToFetchOnPrimaryObject];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = [additionalPropertiesToFetchOnPrimaryObject countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v28;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(additionalPropertiesToFetchOnPrimaryObject);
            }

            v22 = *(*(&v27 + 1) + 8 * j);
            if ([fetchCopy indexOfObject:v22] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [fetchCopy addObject:v22];
            }
          }

          v19 = [additionalPropertiesToFetchOnPrimaryObject countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v19);
      }
    }
  }
}

@end