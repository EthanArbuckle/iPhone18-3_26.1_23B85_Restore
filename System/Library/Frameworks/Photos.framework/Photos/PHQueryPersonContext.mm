@interface PHQueryPersonContext
+ (id)fetchOptionsWithOverriddenChangeDetectionCriteriaIfNecessary:(id)necessary;
+ (id)subpredicatesForFetchOptions:(id)options;
- (PHQueryPersonContext)initWithFetchOptions:(id)options;
- (id)_verifiedVisiblePredicate;
- (id)personContextAdditionalPredicate;
- (id)personContextDetailPredicate;
- (id)personContextNonePredicates;
- (id)personContextOneUpPredicate;
- (id)personContextPeopleHomePredicate;
- (id)personContextUnverifiedPredicate;
- (id)subpredicates;
@end

@implementation PHQueryPersonContext

- (id)personContextPeopleHomePredicate
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  _verifiedVisiblePredicate = [(PHQueryPersonContext *)self _verifiedVisiblePredicate];
  _notHiddenTypePredicate = [(PHQueryPersonContext *)self _notHiddenTypePredicate];
  v10[1] = _notHiddenTypePredicate;
  v6 = [(PHQueryPersonContext *)self _faceCountPredicateWithMinimum:1];
  v10[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  return v8;
}

- (id)_verifiedVisiblePredicate
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"verifiedType", 1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"verifiedType", 2];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v2 orPredicateWithSubpredicates:v5];

  return v6;
}

- (id)subpredicates
{
  v14[1] = *MEMORY[0x1E69E9840];
  personContext = [(PHFetchOptions *)self->_fetchOptions personContext];
  v4 = MEMORY[0x1E695E0F0];
  if (personContext <= 2)
  {
    if (personContext)
    {
      if (personContext == 1)
      {
        personContextPeopleHomePredicate = [(PHQueryPersonContext *)self personContextPeopleHomePredicate];
        v13 = personContextPeopleHomePredicate;
        v6 = &v13;
      }

      else
      {
        if (personContext != 2)
        {
          goto LABEL_18;
        }

        personContextPeopleHomePredicate = [(PHQueryPersonContext *)self personContextAdditionalPredicate];
        v12 = personContextPeopleHomePredicate;
        v6 = &v12;
      }
    }

    else
    {
      personContextPeopleHomePredicate = [(PHQueryPersonContext *)self personContextNonePredicates];
      v14[0] = personContextPeopleHomePredicate;
      v6 = v14;
    }
  }

  else if (personContext > 5)
  {
    if (personContext == 6)
    {
      personContextPeopleHomePredicate = [(PHQueryPersonContext *)self personContextUnverifiedPredicate];
      v9 = personContextPeopleHomePredicate;
      v6 = &v9;
    }

    else
    {
      if (personContext != 7)
      {
        goto LABEL_18;
      }

      personContextPeopleHomePredicate = [(PHQueryPersonContext *)self personContextNoTombstonePredicate];
      v8 = personContextPeopleHomePredicate;
      v6 = &v8;
    }
  }

  else if (personContext == 3)
  {
    personContextPeopleHomePredicate = [(PHQueryPersonContext *)self personContextDetailPredicate];
    v11 = personContextPeopleHomePredicate;
    v6 = &v11;
  }

  else
  {
    if (personContext != 4)
    {
      goto LABEL_18;
    }

    personContextPeopleHomePredicate = [(PHQueryPersonContext *)self personContextOneUpPredicate];
    v10 = personContextPeopleHomePredicate;
    v6 = &v10;
  }

  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:{1, v8, v9, v10, v11, v12, v13, v14[0]}];

LABEL_18:

  return v4;
}

- (id)personContextNonePredicates
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  _verifiedPredicate = [(PHQueryPersonContext *)self _verifiedPredicate];
  v19[0] = _verifiedPredicate;
  v5 = [(PHQueryPersonContext *)self _faceCountPredicateWithMinimum:[(PHFetchOptions *)self->_fetchOptions minimumVerifiedFaceCount]];
  v19[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];

  v8 = MEMORY[0x1E696AB28];
  _notVerifiedPredicate = [(PHQueryPersonContext *)self _notVerifiedPredicate];
  v18[0] = _notVerifiedPredicate;
  v10 = [(PHQueryPersonContext *)self _faceCountPredicateWithMinimum:[(PHFetchOptions *)self->_fetchOptions minimumUnverifiedFaceCount]];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];

  v13 = MEMORY[0x1E696AB28];
  v17[0] = v7;
  v17[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v15 = [v13 orPredicateWithSubpredicates:v14];

  return v15;
}

- (id)personContextUnverifiedPredicate
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  _notVerifiedPredicate = [(PHQueryPersonContext *)self _notVerifiedPredicate];
  v9[0] = _notVerifiedPredicate;
  v5 = [(PHQueryPersonContext *)self _faceCountPredicateWithMinimum:[(PHFetchOptions *)self->_fetchOptions minimumUnverifiedFaceCount]];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];

  return v7;
}

- (id)personContextOneUpPredicate
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K >= 1)", @"faceCount"];
  v3 = MEMORY[0x1E696AB28];
  v8[0] = v2;
  predicateForVisibleKeyFace = [MEMORY[0x1E69BE608] predicateForVisibleKeyFace];
  v8[1] = predicateForVisibleKeyFace;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v3 andPredicateWithSubpredicates:v5];

  return v6;
}

- (id)personContextDetailPredicate
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  _notVerifiedPredicate = [(PHQueryPersonContext *)self _notVerifiedPredicate];
  v20[0] = _notVerifiedPredicate;
  v5 = [(PHQueryPersonContext *)self _faceCountPredicateWithMinimum:7];
  v20[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];

  v8 = MEMORY[0x1E696AB28];
  _verifiedVisiblePredicate = [(PHQueryPersonContext *)self _verifiedVisiblePredicate];
  v19[0] = _verifiedVisiblePredicate;
  v10 = [(PHQueryPersonContext *)self _faceCountPredicateWithMinimum:1];
  v19[1] = v10;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(noindex:(%K) != %d)", @"type", -1];
  v19[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v13 = [v8 andPredicateWithSubpredicates:v12];

  v14 = MEMORY[0x1E696AB28];
  v18[0] = v7;
  v18[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v16 = [v14 orPredicateWithSubpredicates:v15];

  return v16;
}

- (id)personContextAdditionalPredicate
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(noindex:(%K) != %d)", @"type", 1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K >= 1)", @"faceCount"];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v2 andPredicateWithSubpredicates:v5];

  return v6;
}

- (PHQueryPersonContext)initWithFetchOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = PHQueryPersonContext;
  v6 = [(PHQueryPersonContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchOptions, options);
    v8 = v7;
  }

  return v7;
}

+ (id)fetchOptionsWithOverriddenChangeDetectionCriteriaIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = [necessaryCopy copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  personContext = [necessaryCopy personContext];
  if (personContext == 1)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69BE700]);
    entityName = [MEMORY[0x1E69BE540] entityName];
    [v9 addAttributeKeyPath:@"hidden" forEntityName:entityName];

    entityName2 = [MEMORY[0x1E69BE540] entityName];
    [v9 addAttributeKeyPath:@"trashedState" forEntityName:entityName2];

    entityName3 = [MEMORY[0x1E69BE540] entityName];
    [v9 addAttributeKeyPath:@"visibilityState" forEntityName:entityName3];

    entityName4 = [MEMORY[0x1E69BE540] entityName];
    [v9 addRelationshipKeyPath:@"detectedFaces" forEntityName:entityName4];

    entityName5 = [MEMORY[0x1E69BE540] entityName];
    [v9 addRelationshipKeyPath:@"temporalDetectedFaces" forEntityName:entityName5];

    entityName6 = [MEMORY[0x1E69BE608] entityName];
    [v9 addRelationshipKeyPath:@"detectedFaces" forEntityName:entityName6];

    entityName7 = [MEMORY[0x1E69BE608] entityName];
    [v9 addRelationshipKeyPath:@"temporalDetectedFaces" forEntityName:entityName7];

    v17 = [[PHQueryChangeDetectionCriteria alloc] initWithPLQueryChangeDetectionCriteria:v9];
    [v7 setChangeDetectionCriteria:v17];
  }

  return v7;
}

+ (id)subpredicatesForFetchOptions:(id)options
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    optionsCopy = objc_opt_new();
  }

  v4 = [[PHQueryPersonContext alloc] initWithFetchOptions:optionsCopy];
  subpredicates = [(PHQueryPersonContext *)v4 subpredicates];

  return subpredicates;
}

@end