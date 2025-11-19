@interface PHObject
+ (BOOL)isValidCloudIdentifierStringValue:(id)a3;
+ (PHEntityKeyMap)entityKeyMap;
+ (id)authorizationAwareFetchResultWithOptions:(id)a3 fetchBlock:(id)a4;
+ (id)entityKeyForPropertyKey:(id)a3;
+ (id)fetchPredicateFromComparisonPredicate:(id)a3 options:(id)a4;
+ (id)identifierCode;
+ (id)identifierCodeFromLocalIdentifier:(id)a3;
+ (id)identifierPropertiesToFetch;
+ (id)internalSortDescriptorForPropertyKey:(id)a3 ascending:(BOOL)a4;
+ (id)localIdentifierWithUUID:(id)a3;
+ (id)localIdentifiersWithUUIDs:(id)a3;
+ (id)objectIDsMatchingEntityFromObjectIDs:(id)a3 context:(id)a4;
+ (id)propertyKeyForEntityKey:(id)a3;
+ (id)uuidFromLocalIdentifier:(id)a3;
+ (id)uuidsFromLocalIdentifiers:(id)a3;
+ (void)assertAllObjects:(id)a3 forSelector:(SEL)a4 areOfType:(Class)a5;
+ (void)extendPropertiesToFetch:(id)a3 withProperties:(id)a4;
+ (void)extendPropertiesToFetch:(id)a3 withPropertySetClass:(Class)a4;
- (BOOL)hasLoadedPropertySet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)localIdentifier;
- (PHObject)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (id)_shortObjectIDURI;
- (id)identifier;
- (unint64_t)hash;
- (unint64_t)propertyHint;
- (void)addFetchPropertyHint:(unint64_t)a3;
- (void)assertRequiredFetchPropertyHints:(unint64_t)a3;
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
  v2 = [(PHObject *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)identifier
{
  objectID = self->_objectID;
  if (objectID)
  {
    v3 = objectID;
  }

  else
  {
    v3 = [(PHObject *)self uuid];
    if (!v3)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PHObject.m" lineNumber:442 description:@"Must have a uuid if no _objectID"];

      v3 = 0;
    }
  }

  return v3;
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
  v4 = [(PHObject *)self uuid];
  v5 = [v3 localIdentifierWithUUID:v4];

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
  v4 = [(PHObject *)self localIdentifier];
  v5 = [v3 stringByAppendingFormat:@" %@", v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PHObject *)self identifier];
      v7 = [(PHObject *)v5 identifier];

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
  v2 = [(NSManagedObjectID *)self->_objectID URIRepresentation];
  v3 = [v2 pathComponents];
  v4 = [v3 count];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    v8 = [v2 path];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [v3 subarrayWithRange:{v5, 2}];
    v8 = [v6 pathWithComponents:v7];
  }

  return v8;
}

- (void)assertRequiredFetchPropertyHints:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(PHObject *)self propertyHint];
  if ((a3 & ~v5) != 0)
  {
    v6 = v5;
    v7 = [objc_opt_class() propertySetsForPropertyFetchHints:a3];
    v8 = [v7 description];
    if ([v7 count] == 1)
    {
      v9 = [v7 anyObject];

      v8 = v9;
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
      v16 = self;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_FAULT, "Missing required fetch property hint: %{public}@ (%@)", buf, 0x16u);
    }
  }
}

- (void)addFetchPropertyHint:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_propertyHintLock);
  self->_propertyHintLock_propertyHint |= a3;

  os_unfair_lock_unlock(&self->_propertyHintLock);
}

- (PHObject)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = PHObject;
  v10 = [(PHObject *)&v18 init];
  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:@"objectID"];
    v12 = [PHPhotoLibrary uniquedOID:v11];
    objectID = v10->_objectID;
    v10->_objectID = v12;

    v14 = [v8 objectForKeyedSubscript:@"deleted"];
    v10->_deleted = [v14 BOOLValue];

    v15 = [v8 objectForKeyedSubscript:@"uuid"];
    uuid = v10->_uuid;
    v10->_uuid = v15;

    objc_storeStrong(&v10->_photoLibrary, a5);
    v10->_propertyHintLock_propertyHint = a4;
    v10->_propertyHintLock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (BOOL)hasLoadedPropertySet:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() propertySetClassForPropertySet:v4];

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

+ (id)authorizationAwareFetchResultWithOptions:(id)a3 fetchBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([PHPhotoLibrary checkAuthorizationStatusForAPIAccessLevel:2])
  {
    v7 = v6[2](v6, v5);
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
    v7 = [[PHUnauthorizedFetchResult alloc] initWithOptions:v5 status:[PHPhotoLibrary fetchBlock:"authorizationStatusForAccessLevel:" authorizationStatusForAccessLevel:?], v6];
  }

  v10 = v7;

  return v10;
}

+ (id)fetchPredicateFromComparisonPredicate:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 leftExpression];
  v9 = [v6 rightExpression];
  v57 = 0;
  if ([v8 expressionType] == 1 && !objc_msgSend(v9, "expressionType") || objc_msgSend(v9, "expressionType") == 1 && !objc_msgSend(v8, "expressionType"))
  {
    v25 = [v8 expressionType];
    if (v25 == 1)
    {
      v26 = v9;
    }

    else
    {
      v26 = v8;
    }

    v12 = [v26 constantValue];
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __58__PHObject_fetchPredicateFromComparisonPredicate_options___block_invoke;
    v52[3] = &unk_1E75A8A78;
    v52[4] = &v53;
    v27 = PHQueryTransformExpressionConstantValue(v12, v52);
    if (*(v54 + 24) == 1)
    {
      v28 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v27];
    }

    else
    {
      v28 = v26;
    }

    v29 = v28;
    if (v25 == 1)
    {
      v30 = objc_alloc(MEMORY[0x1E696AB18]);
      v31 = [v6 comparisonPredicateModifier];
      v32 = [v6 predicateOperatorType];
      v33 = [v6 options];
      v34 = v8;
      v35 = v29;
    }

    else
    {
      v30 = objc_alloc(MEMORY[0x1E696AB18]);
      v31 = [v6 comparisonPredicateModifier];
      v32 = [v6 predicateOperatorType];
      v33 = [v6 options];
      v34 = v29;
      v35 = v9;
    }

    v24 = [v30 initWithLeftExpression:v34 rightExpression:v35 modifier:v31 type:v32 options:v33];

    _Block_object_dispose(&v53, 8);
    goto LABEL_52;
  }

  if (([v8 expressionType] != 3 || (PHIsExpressionMatchingTypeOrAggregateMatchingType(v9, &v57) & 1) == 0) && (objc_msgSend(v9, "expressionType") != 3 || !PHIsExpressionMatchingTypeOrAggregateMatchingType(v8, &v57)))
  {
    v24 = 0;
    goto LABEL_53;
  }

  v10 = [v8 expressionType];
  if (v10 == 3)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  v12 = [v11 keyPath];
  if ([v12 isEqualToString:@"localIdentifier"] && (v57 & 1) == 0)
  {
    v50 = v7;
    if (v10 == 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = v8;
    }

    v14 = [v13 constantValue];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __58__PHObject_fetchPredicateFromComparisonPredicate_options___block_invoke_2;
    v51[3] = &__block_descriptor_40_e8__16__0_8l;
    v51[4] = a1;
    v48 = v14;
    v15 = PHQueryTransformExpressionConstantValue(v14, v51);
    v16 = [a1 localIdentifierExpressionForFetchRequests];
    v46 = v15;
    v17 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v15];
    v18 = objc_alloc(MEMORY[0x1E696AB18]);
    v19 = [v6 comparisonPredicateModifier];
    v20 = [v6 predicateOperatorType];
    v21 = [v6 options];
    if (v10 == 3)
    {
      v22 = v16;
      v23 = v17;
    }

    else
    {
      v22 = v17;
      v23 = v16;
    }

    v24 = [v18 initWithLeftExpression:v22 rightExpression:v23 modifier:v19 type:v20 options:v21];

LABEL_51:
    v7 = v50;
    goto LABEL_52;
  }

  if ([a1 managedObjectSupportsCustomUUIDKey] & 1) != 0 || !objc_msgSend(v12, "isEqualToString:", @"uuid") || (v57)
  {
    if (v12)
    {
      v50 = v7;
      if (v10 == 3)
      {
        v36 = v9;
      }

      else
      {
        v36 = v8;
      }

      v37 = v36;
      v38 = [a1 entityKeyForPropertyKey:v12];
      if (v38)
      {
        v39 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v38];
        v40 = [a1 transformValueExpression:v37 forKeyPath:v12];
        if (v40)
        {
          v49 = objc_alloc(MEMORY[0x1E696AB18]);
          v47 = [v6 comparisonPredicateModifier];
          v41 = [v6 predicateOperatorType];
          v42 = [v6 options];
          if (v10 == 3)
          {
            v43 = v39;
            v44 = v40;
          }

          else
          {
            v43 = v40;
            v44 = v39;
          }

          v24 = [v49 initWithLeftExpression:v43 rightExpression:v44 modifier:v47 type:v41 options:v42];
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
    v24 = v6;
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

+ (void)assertAllObjects:(id)a3 forSelector:(SEL)a4 areOfType:(Class)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = MEMORY[0x1E695DF30];
          v14 = *MEMORY[0x1E695D940];
          v15 = MEMORY[0x1E696AEC0];
          v16 = NSStringFromSelector(a4);
          v17 = NSStringFromClass(a5);
          v18 = [v15 stringWithFormat:@"Invalid object %@ passed to %@, objects must be of type %@", v12, v16, v17];
          v19 = [v13 exceptionWithName:v14 reason:v18 userInfo:0];
          v20 = v19;

          objc_exception_throw(v19);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

+ (id)identifierCodeFromLocalIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length] < 0x29)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 substringFromIndex:40];
  }

  return v4;
}

+ (id)uuidsFromLocalIdentifiers:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PHObject_uuidsFromLocalIdentifiers___block_invoke;
  v5[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v5[4] = a1;
  v3 = [a3 _pl_map:v5];

  return v3;
}

+ (id)uuidFromLocalIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4 >= 0x25)
  {
    v5 = [v3 substringToIndex:36];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if (v4 == 36)
  {
    v5 = v3;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)localIdentifiersWithUUIDs:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PHObject_localIdentifiersWithUUIDs___block_invoke;
  v5[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v5[4] = a1;
  v3 = [a3 _pl_map:v5];

  return v3;
}

+ (id)localIdentifierWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 identifierCode];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v4, @"/L0/", v5];

  return v6;
}

+ (BOOL)isValidCloudIdentifierStringValue:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@":"];
  v4 = [v3 count] > 1;

  return v4;
}

+ (id)objectIDsMatchingEntityFromObjectIDs:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [a1 managedEntityName];
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
      v12 = [v6 _pl_filter:v11];
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

+ (id)internalSortDescriptorForPropertyKey:(id)a3 ascending:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [objc_opt_class() entityKeyForPropertyKey:v5];

  v7 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v6 ascending:v4];

  return v7;
}

+ (id)propertyKeyForEntityKey:(id)a3
{
  v4 = a3;
  v5 = [a1 entityKeyMap];
  v6 = [v5 propertyKeyForEntityKey:v4];

  return v6;
}

+ (id)entityKeyForPropertyKey:(id)a3
{
  v4 = a3;
  v5 = [a1 entityKeyMap];
  v6 = [v5 entityKeyForPropertyKey:v4];

  return v6;
}

+ (PHEntityKeyMap)entityKeyMap
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(a1);
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
  v5 = NSStringFromClass(a1);
  v6 = [v4 stringWithFormat:@"%@ has no identifier", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (void)extendPropertiesToFetch:(id)a3 withProperties:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v5 indexOfObject:v11] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

+ (void)extendPropertiesToFetch:(id)a3 withPropertySetClass:(Class)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (([(objc_class *)a4 isToMany]& 1) == 0)
  {
    v24 = a1;
    v7 = [(objc_class *)a4 propertiesToFetch];
    v8 = [(objc_class *)a4 keyPathFromPrimaryObject];
    v25 = v8;
    if (v8)
    {
      v9 = [v8 stringByAppendingString:@"."];
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
    obj = v7;
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
              [MEMORY[0x1E696AEC0] stringWithFormat:@"Trying to create a property path '%@' on '%@' with an unexpected property type: %@", v15, v24, objc_opt_class()];
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

          if ([v6 indexOfObject:v15] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v6 addObject:v15];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v12);
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = [(objc_class *)a4 additionalPropertiesToFetchOnPrimaryObject];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v27 + 1) + 8 * j);
            if ([v6 indexOfObject:v22] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v6 addObject:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v19);
      }
    }
  }
}

@end