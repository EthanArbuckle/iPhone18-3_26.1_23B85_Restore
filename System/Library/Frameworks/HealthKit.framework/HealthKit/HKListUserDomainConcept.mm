@interface HKListUserDomainConcept
- (HKListUserDomainConcept)init;
- (HKListUserDomainConcept)initWithCoder:(id)coder;
- (HKListUserDomainConcept)initWithCodingCollection:(id)collection linkCollection:(id)linkCollection propertyCollection:(id)propertyCollection;
- (HKListUserDomainConcept)initWithListType:(unint64_t)type listName:(id)name;
- (id)_currentLinkCollection;
- (id)_dataDescription;
- (id)_deepCopy;
- (id)listByAddingUserDomainConcept:(id)concept;
- (id)listByAddingUserDomainConcepts:(id)concepts;
- (id)listByExchangingConceptAtIndex:(unint64_t)index withIndex:(unint64_t)withIndex;
- (id)listByInsertingUserDomainConcept:(id)concept atIndex:(unint64_t)index;
- (id)listByMovingUserDomainConceptFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (id)listByRemovingAllUserDomainConcepts;
- (id)listByRemovingUserDomainConcept:(id)concept;
- (id)listByRemovingUserDomainConceptAtIndex:(unint64_t)index;
- (id)listByReplacingConceptAtIndex:(unint64_t)index withUserDomainConcept:(id)concept;
- (id)listByUpdatingName:(id)name;
- (id)semanticIdentifier;
- (void)_setListName:(id)name;
- (void)encodeWithCoder:(id)coder;
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

- (HKListUserDomainConcept)initWithCodingCollection:(id)collection linkCollection:(id)linkCollection propertyCollection:(id)propertyCollection
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The -%@ method is not available on %@", v8, objc_opt_class()}];

  return 0;
}

- (HKListUserDomainConcept)initWithListType:(unint64_t)type listName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = HKListUserDomainConcept;
  v7 = [(HKUserDomainConcept *)&v12 initWithCodingCollection:0 linkCollection:0 propertyCollection:0];
  v8 = v7;
  if (v7)
  {
    v7->_listType = type;
    v9 = [nameCopy copy];
    listName = v8->_listName;
    v8->_listName = v9;
  }

  return v8;
}

- (id)listByUpdatingName:(id)name
{
  nameCopy = name;
  modificationCopy = [(HKUserDomainConcept *)self modificationCopy];
  [(HKListUserDomainConcept *)self _setListName:nameCopy];

  return modificationCopy;
}

- (id)_deepCopy
{
  v6.receiver = self;
  v6.super_class = HKListUserDomainConcept;
  _deepCopy = [(HKUserDomainConcept *)&v6 _deepCopy];
  listName = [(HKListUserDomainConcept *)self listName];
  [_deepCopy _setListName:listName];

  [_deepCopy _setListType:{-[HKListUserDomainConcept listType](self, "listType")}];

  return _deepCopy;
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

  linkCollection = [(HKUserDomainConcept *)self linkCollection];
  v7 = [linkCollection count];

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
          targetUUID = [v14 targetUUID];
          v26[1] = targetUUID;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
          [(HKTableFormatter *)v8 appendHeterogenousRow:v17];

          ++v11;
        }

        v10 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }

    [v5 appendString:@"\n"];
    formattedTable = [(HKTableFormatter *)v8 formattedTable];
    [v5 appendString:formattedTable];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)semanticIdentifier
{
  v2 = [[HKListUserDomainConceptSemanticIdentifier alloc] initWithListType:self->_listType];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKListUserDomainConcept;
  coderCopy = coder;
  [(HKUserDomainConcept *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_listName forKey:{@"listName", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_listType forKey:@"listType"];
}

- (HKListUserDomainConcept)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listName"];
  v6 = [coderCopy decodeIntegerForKey:@"listType"];
  v9.receiver = self;
  v9.super_class = HKListUserDomainConcept;
  v7 = [(HKUserDomainConcept *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
    objc_storeStrong(&v7->_listName, v5);
    v7->_listType = v6;
  }

  return v7;
}

- (id)listByAddingUserDomainConcept:(id)concept
{
  conceptCopy = concept;
  _currentLinkCollection = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v6 = [[HKUserDomainConceptLink alloc] initWithUserConcept:conceptCopy type:1];

  v7 = [_currentLinkCollection collectionByAppendingLink:v6];
  v8 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v7];

  return v8;
}

- (id)listByAddingUserDomainConcepts:(id)concepts
{
  conceptsCopy = concepts;
  _currentLinkCollection = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v6 = [conceptsCopy hk_map:&__block_literal_global_134];

  v7 = [_currentLinkCollection collectionByAppendingLinks:v6];
  v8 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v7];

  return v8;
}

HKUserDomainConceptLink *__58__HKListUserDomainConcept_listByAddingUserDomainConcepts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HKUserDomainConceptLink alloc] initWithUserConcept:v2 type:1];

  return v3;
}

- (id)listByInsertingUserDomainConcept:(id)concept atIndex:(unint64_t)index
{
  conceptCopy = concept;
  _currentLinkCollection = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v8 = [[HKUserDomainConceptLink alloc] initWithUserConcept:conceptCopy type:1];

  v9 = [_currentLinkCollection collectionByInsertingLink:v8 atIndex:index];
  v10 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v9];

  return v10;
}

- (id)listByMovingUserDomainConceptFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  if (index == toIndex)
  {
    selfCopy = self;
  }

  else
  {
    _currentLinkCollection = [(HKListUserDomainConcept *)self _currentLinkCollection];
    v9 = [_currentLinkCollection collectionByMovingLinkFromIndex:index toIndex:toIndex];
    selfCopy = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v9];
  }

  return selfCopy;
}

- (id)listByRemovingUserDomainConceptAtIndex:(unint64_t)index
{
  _currentLinkCollection = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v6 = [_currentLinkCollection collectionByRemovingLinkAtIndex:index];
  v7 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v6];

  return v7;
}

- (id)listByRemovingUserDomainConcept:(id)concept
{
  conceptCopy = concept;
  _currentLinkCollection = [(HKListUserDomainConcept *)self _currentLinkCollection];
  uUID = [conceptCopy UUID];

  v7 = [_currentLinkCollection collectionByRemovingLinksWithTargetUUID:uUID];

  v8 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v7];

  return v8;
}

- (id)listByRemovingAllUserDomainConcepts
{
  _currentLinkCollection = [(HKListUserDomainConcept *)self _currentLinkCollection];
  collectionByRemovingAllLinks = [_currentLinkCollection collectionByRemovingAllLinks];
  v5 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:collectionByRemovingAllLinks];

  return v5;
}

- (id)listByReplacingConceptAtIndex:(unint64_t)index withUserDomainConcept:(id)concept
{
  conceptCopy = concept;
  _currentLinkCollection = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v8 = [[HKUserDomainConceptLink alloc] initWithUserConcept:conceptCopy type:1];

  v9 = [_currentLinkCollection collectionByReplacingLinkAtIndex:index withLink:v8];
  v10 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v9];

  return v10;
}

- (id)listByExchangingConceptAtIndex:(unint64_t)index withIndex:(unint64_t)withIndex
{
  _currentLinkCollection = [(HKListUserDomainConcept *)self _currentLinkCollection];
  v8 = [_currentLinkCollection collectionBySwappingLinksAtIndex:index otherIndex:withIndex];
  v9 = [(HKUserDomainConcept *)self userDomainConceptByReplacingLinks:v8];

  return v9;
}

- (void)_setListName:(id)name
{
  v4 = [name copy];
  listName = self->_listName;
  self->_listName = v4;

  MEMORY[0x1EEE66BB8](v4, listName);
}

- (id)_currentLinkCollection
{
  linkCollection = [(HKUserDomainConcept *)self linkCollection];
  v3 = linkCollection;
  if (linkCollection)
  {
    v4 = linkCollection;
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