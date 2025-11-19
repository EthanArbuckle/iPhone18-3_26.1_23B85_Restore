@interface HKListUserDomainConcept
- (HKListUserDomainConcept)init;
- (HKListUserDomainConcept)initWithCoder:(id)a3;
- (HKListUserDomainConcept)initWithCodingCollection:(id)a3 linkCollection:(id)a4 propertyCollection:(id)a5;
- (HKListUserDomainConcept)initWithListType:(unint64_t)a3 listName:(id)a4;
- (id)_currentLinkCollection;
- (id)_dataDescription;
- (id)_deepCopy;
- (id)listByAddingUserDomainConcept:(id)a3;
- (id)listByAddingUserDomainConcepts:(id)a3;
- (id)listByExchangingConceptAtIndex:(unint64_t)a3 withIndex:(unint64_t)a4;
- (id)listByInsertingUserDomainConcept:(id)a3 atIndex:(unint64_t)a4;
- (id)listByMovingUserDomainConceptFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (id)listByRemovingAllUserDomainConcepts;
- (id)listByRemovingUserDomainConcept:(id)a3;
- (id)listByRemovingUserDomainConceptAtIndex:(unint64_t)a3;
- (id)listByReplacingConceptAtIndex:(unint64_t)a3 withUserDomainConcept:(id)a4;
- (id)listByUpdatingName:(id)a3;
- (id)semanticIdentifier;
- (void)_setListName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKListUserDomainConcept

- (HKListUserDomainConcept)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKListUserDomainConcept)initWithCodingCollection:(id)a3 linkCollection:(id)a4 propertyCollection:(id)a5
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The -%@ method is not available on %@", v8, objc_opt_class()}];

  return 0;
}

- (HKListUserDomainConcept)initWithListType:(unint64_t)a3 listName:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HKListUserDomainConcept;
  v7 = [(HKUserDomainConcept *)&v12 initWithCodingCollection:0 linkCollection:0 propertyCollection:0];
  v8 = v7;
  if (v7)
  {
    v7->_listType = a3;
    v9 = [v6 copy];
    listName = v8->_listName;
    v8->_listName = v9;
  }

  return v8;
}

- (id)listByUpdatingName:(id)a3
{
  v4 = a3;
  v5 = [(HKUserDomainConcept *)self modificationCopy];
  [(HKListUserDomainConcept *)self _setListName:v4];

  return v5;
}

- (id)_deepCopy
{
  v6.receiver = self;
  v6.super_class = HKListUserDomainConcept;
  v3 = [(HKUserDomainConcept *)&v6 _deepCopy];
  v4 = [(HKListUserDomainConcept *)self listName];
  [v3 _setListName:v4];

  [v3 _setListType:{-[HKListUserDomainConcept listType](self, "listType")}];

  return v3;
}

- (id)_dataDescription
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = HKStringFromListUserDomainType(self->_listType);
  v5 = [v3 stringWithFormat:@"%@", v4];

  if (self->_listName)
  {
    [v5 appendFormat:@" %@", self->_listName];
  }

  v6 = [(HKUserDomainConcept *)self linkCollection];
  v7 = [v6 count];

  if (v7 < 1)
  {
    [v5 appendString:@" (empty list)"];
  }

  else
  {
    v8 = [[HKTableFormatter alloc] initWithColumnTitles:&unk_1F0686BC8];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(HKUserDomainConcept *)self linkCollection];
    v9 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
          v26[0] = v15;
          v16 = [v14 targetUUID];
          v26[1] = v16;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
          [(HKTableFormatter *)v8 appendHeterogenousRow:v17];

          ++v11;
        }

        v10 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }

    [v5 appendString:@"\n"];
    v18 = [(HKTableFormatter *)v8 formattedTable];
    [v5 appendString:v18];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)semanticIdentifier
{
  v2 = [[HKListUserDomainConceptSemanticIdentifier alloc] initWithListType:self->_listType];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKListUserDomainConcept;
  v4 = a3;
  [(HKUserDomainConcept *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_listName forKey:{@"listName", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_listType forKey:@"listType"];
}

- (HKListUserDomainConcept)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listName"];
  v6 = [v4 decodeIntegerForKey:@"listType"];
  v9.receiver = self;
  v9.super_class = HKListUserDomainConcept;
  v7 = [(HKUserDomainConcept *)&v9 initWithCoder:v4];

  if (v7)
  {
    objc_storeStrong(&v7->_listName, v5);
    v7->_listType = v6;
  }

  return v7;
}

- (id)listByAddingUserDomainConcept:(id)a3
{
  v4 = a3;
  v5 = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v6 = [[HKUserDomainConceptLink alloc] initWithUserConcept:v4 type:1];

  v7 = [v5 collectionByAppendingLink:v6];
  v8 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v7];

  return v8;
}

- (id)listByAddingUserDomainConcepts:(id)a3
{
  v4 = a3;
  v5 = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v6 = [v4 hk_map:&__block_literal_global_134];

  v7 = [v5 collectionByAppendingLinks:v6];
  v8 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v7];

  return v8;
}

HKUserDomainConceptLink *__58__HKListUserDomainConcept_listByAddingUserDomainConcepts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HKUserDomainConceptLink alloc] initWithUserConcept:v2 type:1];

  return v3;
}

- (id)listByInsertingUserDomainConcept:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v8 = [[HKUserDomainConceptLink alloc] initWithUserConcept:v6 type:1];

  v9 = [v7 collectionByInsertingLink:v8 atIndex:a4];
  v10 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v9];

  return v10;
}

- (id)listByMovingUserDomainConceptFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  if (a3 == a4)
  {
    v5 = self;
  }

  else
  {
    v8 = [(HKListUserDomainConcept *)self _currentLinkCollection];
    v9 = [v8 collectionByMovingLinkFromIndex:a3 toIndex:a4];
    v5 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v9];
  }

  return v5;
}

- (id)listByRemovingUserDomainConceptAtIndex:(unint64_t)a3
{
  v5 = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v6 = [v5 collectionByRemovingLinkAtIndex:a3];
  v7 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v6];

  return v7;
}

- (id)listByRemovingUserDomainConcept:(id)a3
{
  v4 = a3;
  v5 = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v6 = [v4 UUID];

  v7 = [v5 collectionByRemovingLinksWithTargetUUID:v6];

  v8 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v7];

  return v8;
}

- (id)listByRemovingAllUserDomainConcepts
{
  v3 = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v4 = [v3 collectionByRemovingAllLinks];
  v5 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v4];

  return v5;
}

- (id)listByReplacingConceptAtIndex:(unint64_t)a3 withUserDomainConcept:(id)a4
{
  v6 = a4;
  v7 = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v8 = [[HKUserDomainConceptLink alloc] initWithUserConcept:v6 type:1];

  v9 = [v7 collectionByReplacingLinkAtIndex:a3 withLink:v8];
  v10 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v9];

  return v10;
}

- (id)listByExchangingConceptAtIndex:(unint64_t)a3 withIndex:(unint64_t)a4
{
  v7 = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v8 = [v7 collectionBySwappingLinksAtIndex:a3 otherIndex:a4];
  v9 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v8];

  return v9;
}

- (void)_setListName:(id)a3
{
  v4 = [a3 copy];
  listName = self->_listName;
  self->_listName = v4;

  MEMORY[0x1EEE66BB8](v4, listName);
}

- (id)_currentLinkCollection
{
  v2 = [(HKUserDomainConcept *)self linkCollection];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [HKUserDomainConceptLinkCollection alloc];
    v4 = [(HKUserDomainConceptLinkCollection *)v5 _initWithLinks:MEMORY[0x1E695E0F0]];
  }

  v6 = v4;

  return v6;
}

@end