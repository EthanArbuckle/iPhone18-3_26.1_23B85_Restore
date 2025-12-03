@interface PHQueryChangeDetectionCriteria
- (BOOL)isEqual:(id)equal;
- (PHQueryChangeDetectionCriteria)init;
- (PHQueryChangeDetectionCriteria)initWithPLQueryChangeDetectionCriteria:(id)criteria;
- (id)changeDetectionCriteriaByAddingChangeDetectionCriteria:(id)criteria;
- (id)copyWithZone:(_NSZone *)zone;
- (void)enumerateEntitiesAndAttributeIndexesUsingBlock:(id)block;
- (void)enumerateEntitiesAndRelationshipIndexesBlock:(id)block;
@end

@implementation PHQueryChangeDetectionCriteria

- (void)enumerateEntitiesAndRelationshipIndexesBlock:(id)block
{
  blockCopy = block;
  relationshipIndexValuesByEntityName = self->_relationshipIndexValuesByEntityName;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__PHQueryChangeDetectionCriteria_enumerateEntitiesAndRelationshipIndexesBlock___block_invoke;
  v7[3] = &unk_1E75A5E10;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)relationshipIndexValuesByEntityName enumerateKeysAndObjectsUsingBlock:v7];
}

void __79__PHQueryChangeDetectionCriteria_enumerateEntitiesAndRelationshipIndexesBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 unsignedLongLongValue];
  (*(*(a1 + 32) + 16))();
}

- (void)enumerateEntitiesAndAttributeIndexesUsingBlock:(id)block
{
  blockCopy = block;
  attributeIndexValuesByEntityName = self->_attributeIndexValuesByEntityName;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__PHQueryChangeDetectionCriteria_enumerateEntitiesAndAttributeIndexesUsingBlock___block_invoke;
  v7[3] = &unk_1E75A5E10;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)attributeIndexValuesByEntityName enumerateKeysAndObjectsUsingBlock:v7];
}

void __81__PHQueryChangeDetectionCriteria_enumerateEntitiesAndAttributeIndexesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 unsignedLongLongValue];
  (*(*(a1 + 32) + 16))();
}

- (id)changeDetectionCriteriaByAddingChangeDetectionCriteria:(id)criteria
{
  criteriaCopy = criteria;
  if (!criteriaCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQueryChangeDetectionCriteria.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"criteria"}];
  }

  v6 = [(PHQueryChangeDetectionCriteria *)self copy];
  v7 = criteriaCopy[1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__PHQueryChangeDetectionCriteria_changeDetectionCriteriaByAddingChangeDetectionCriteria___block_invoke;
  v13[3] = &unk_1E75A7CC0;
  v13[4] = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];
  v8 = criteriaCopy[2];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__PHQueryChangeDetectionCriteria_changeDetectionCriteriaByAddingChangeDetectionCriteria___block_invoke_2;
  v12[3] = &unk_1E75A7CC0;
  v12[4] = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v6;

  return v6;
}

void __89__PHQueryChangeDetectionCriteria_changeDetectionCriteriaByAddingChangeDetectionCriteria___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 unsignedLongLongValue];
  v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v5];
  v8 = [v7 unsignedLongLongValue];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8 | v6];
  [*(*(a1 + 32) + 8) setObject:v9 forKeyedSubscript:v5];
}

void __89__PHQueryChangeDetectionCriteria_changeDetectionCriteriaByAddingChangeDetectionCriteria___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 unsignedLongLongValue];
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
  v8 = [v7 unsignedLongLongValue];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8 | v6];
  [*(*(a1 + 32) + 16) setObject:v9 forKeyedSubscript:v5];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([v5[1] isEqual:self->_attributeIndexValuesByEntityName])
    {
      v6 = [v5[2] isEqual:self->_relationshipIndexValuesByEntityName];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSMutableDictionary *)self->_attributeIndexValuesByEntityName mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSMutableDictionary *)self->_relationshipIndexValuesByEntityName mutableCopy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (PHQueryChangeDetectionCriteria)initWithPLQueryChangeDetectionCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v5 = [(PHQueryChangeDetectionCriteria *)self init];
  if (v5)
  {
    if ([criteriaCopy isEmpty])
    {

      v5 = 0;
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __73__PHQueryChangeDetectionCriteria_initWithPLQueryChangeDetectionCriteria___block_invoke;
      v10[3] = &unk_1E75A5DE8;
      v6 = v5;
      v11 = v6;
      [criteriaCopy enumerateEntitiesAndAttributesUsingBlock:v10];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __73__PHQueryChangeDetectionCriteria_initWithPLQueryChangeDetectionCriteria___block_invoke_2;
      v8[3] = &unk_1E75A5DE8;
      v5 = v6;
      v9 = v5;
      [criteriaCopy enumerateEntitiesAndRelationshipsUsingBlock:v8];
    }
  }

  return v5;
}

void __73__PHQueryChangeDetectionCriteria_initWithPLQueryChangeDetectionCriteria___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69BE6F8];
  v6 = a2;
  v7 = [a3 allObjects];
  v8 = [v5 indexValueForAttributeNames:v7 entity:v6];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
  [*(*(a1 + 32) + 8) setObject:v9 forKeyedSubscript:v6];
}

void __73__PHQueryChangeDetectionCriteria_initWithPLQueryChangeDetectionCriteria___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69BE6F8];
  v6 = a2;
  v7 = [a3 allObjects];
  v8 = [v5 indexValueForRelationshipNames:v7 entity:v6];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
  [*(*(a1 + 32) + 16) setObject:v9 forKeyedSubscript:v6];
}

- (PHQueryChangeDetectionCriteria)init
{
  v8.receiver = self;
  v8.super_class = PHQueryChangeDetectionCriteria;
  v2 = [(PHQueryChangeDetectionCriteria *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributeIndexValuesByEntityName = v2->_attributeIndexValuesByEntityName;
    v2->_attributeIndexValuesByEntityName = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    relationshipIndexValuesByEntityName = v2->_relationshipIndexValuesByEntityName;
    v2->_relationshipIndexValuesByEntityName = v5;
  }

  return v2;
}

@end