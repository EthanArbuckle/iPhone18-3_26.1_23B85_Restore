@interface SHMediaLibrarySnapshot
+ (id)remapSnapshot:(id)snapshot withBundleIdentifier:(id)identifier;
- (BOOL)containsLibraryItem:(id)item;
- (BOOL)evaluateUsingPredicate:(id)predicate;
- (BOOL)hasChanges;
- (BOOL)isConflictingChange:(id)change;
- (BOOL)validateWithBundleIdentifier:(id)identifier;
- (NSArray)allItemIdentifiers;
- (NSArray)changes;
- (NSArray)trackChanges;
- (SHMediaLibrarySnapshot)init;
- (SHMediaLibrarySnapshot)initWithChanges:(id)changes;
- (SHMediaLibrarySnapshot)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)filteredSnapshotUsingPredicate:(id)predicate;
- (id)tracksForChangeType:(int64_t)type;
- (void)addChanges:(id)changes;
- (void)addItem:(id)item;
- (void)encodeWithCoder:(id)coder;
- (void)mergeSnapshot:(id)snapshot;
- (void)removeItem:(id)item;
- (void)removeSnapshot:(id)snapshot;
@end

@implementation SHMediaLibrarySnapshot

- (SHMediaLibrarySnapshot)init
{
  orderedSet = [MEMORY[0x277CBEB70] orderedSet];
  v4 = [(SHMediaLibrarySnapshot *)self initWithChanges:orderedSet];

  return v4;
}

- (SHMediaLibrarySnapshot)initWithChanges:(id)changes
{
  changesCopy = changes;
  v9.receiver = self;
  v9.super_class = SHMediaLibrarySnapshot;
  v5 = [(SHMediaLibrarySnapshot *)&v9 init];
  if (v5)
  {
    v6 = [changesCopy mutableCopy];
    changeset = v5->_changeset;
    v5->_changeset = v6;
  }

  return v5;
}

- (NSArray)changes
{
  changeset = [(SHMediaLibrarySnapshot *)self changeset];
  array = [changeset array];

  return array;
}

- (BOOL)hasChanges
{
  changeset = [(SHMediaLibrarySnapshot *)self changeset];
  v3 = [changeset count] != 0;

  return v3;
}

- (NSArray)trackChanges
{
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_5];
  changes = [(SHMediaLibrarySnapshot *)self changes];
  v5 = [changes mutableCopy];

  v6 = objc_autoreleasePoolPush();
  [v5 filterUsingPredicate:v3];
  objc_autoreleasePoolPop(v6);
  v7 = [v5 copy];

  return v7;
}

uint64_t __38__SHMediaLibrarySnapshot_trackChanges__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 libraryItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NSArray)allItemIdentifiers
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  changes = [(SHMediaLibrarySnapshot *)self changes];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(changes, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  changes2 = [(SHMediaLibrarySnapshot *)self changes];
  v7 = [changes2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(changes2);
        }

        libraryItem = [*(*(&v17 + 1) + 8 * i) libraryItem];
        identifier = [libraryItem identifier];
        v13 = [identifier copy];
        [v5 addObject:v13];
      }

      v8 = [changes2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)addItem:(id)item
{
  v8[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = [[SHMediaLibraryChange alloc] initWithLibraryItem:itemCopy changeType:1];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(SHMediaLibrarySnapshot *)self addChanges:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeItem:(id)item
{
  v8[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = [[SHMediaLibraryChange alloc] initWithLibraryItem:itemCopy changeType:3];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(SHMediaLibrarySnapshot *)self addChanges:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addChanges:(id)changes
{
  v26 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [changesCopy countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138412290;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(changesCopy);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([(SHMediaLibrarySnapshot *)self isConflictingChange:v10, v18])
        {
          v11 = sh_log_object();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            libraryItem = [v10 libraryItem];
            identifier = [libraryItem identifier];
            *buf = v18;
            v24 = identifier;
            _os_log_impl(&dword_230F52000, v11, OS_LOG_TYPE_ERROR, "Should not try to modify and remove the same library item (%@)", buf, 0xCu);
          }
        }

        else
        {
          changeset = [(SHMediaLibrarySnapshot *)self changeset];
          v15 = [changeset indexOfObject:v10];

          changeset2 = [(SHMediaLibrarySnapshot *)self changeset];
          v11 = changeset2;
          if (v15 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [changeset2 addObject:v10];
          }

          else
          {
            [changeset2 replaceObjectAtIndex:v15 withObject:v10];
          }
        }
      }

      v7 = [changesCopy countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)mergeSnapshot:(id)snapshot
{
  if (self != snapshot)
  {
    changes = [snapshot changes];
    [(SHMediaLibrarySnapshot *)self addChanges:changes];
  }
}

- (BOOL)containsLibraryItem:(id)item
{
  itemCopy = item;
  v5 = MEMORY[0x277CCAC30];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SHMediaLibrarySnapshot_containsLibraryItem___block_invoke;
  v9[3] = &unk_2788F7FB0;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [v5 predicateWithBlock:v9];
  LOBYTE(self) = [(SHMediaLibrarySnapshot *)self evaluateUsingPredicate:v7];

  return self;
}

uint64_t __46__SHMediaLibrarySnapshot_containsLibraryItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 libraryItem];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)isConflictingChange:(id)change
{
  changeCopy = change;
  v5 = MEMORY[0x277CCAC30];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SHMediaLibrarySnapshot_isConflictingChange___block_invoke;
  v9[3] = &unk_2788F7FB0;
  v10 = changeCopy;
  v6 = changeCopy;
  v7 = [v5 predicateWithBlock:v9];
  LOBYTE(self) = [(SHMediaLibrarySnapshot *)self evaluateUsingPredicate:v7];

  return self;
}

- (BOOL)evaluateUsingPredicate:(id)predicate
{
  predicateCopy = predicate;
  changes = [(SHMediaLibrarySnapshot *)self changes];
  v6 = [changes mutableCopy];

  v7 = objc_autoreleasePoolPush();
  [v6 filterUsingPredicate:predicateCopy];
  objc_autoreleasePoolPop(v7);
  LOBYTE(v7) = [v6 count] != 0;

  return v7;
}

- (BOOL)validateWithBundleIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  changes = [(SHMediaLibrarySnapshot *)self changes];
  v6 = [changes countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(changes);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        libraryItem = [v10 libraryItem];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          changeType = [v10 changeType];

          if (changeType == 3)
          {
            libraryItem2 = [v10 libraryItem];
            providerIdentifier = [libraryItem2 providerIdentifier];
            v15 = [providerIdentifier isEqualToString:identifierCopy];

            if ((v15 & 1) == 0)
            {
              v16 = 0;
              goto LABEL_14;
            }
          }
        }

        else
        {
        }
      }

      v7 = [changes countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = 1;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)tracksForChangeType:(int64_t)type
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  changes = [(SHMediaLibrarySnapshot *)self changes];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(changes, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  changes2 = [(SHMediaLibrarySnapshot *)self changes];
  v9 = [changes2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(changes2);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        libraryItem = [v13 libraryItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        changeType = [v13 changeType];
        if ((isKindOfClass & 1) != 0 && changeType == type)
        {
          libraryItem2 = [v13 libraryItem];
          [v7 addObject:libraryItem2];
        }
      }

      v10 = [changes2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = [v7 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)remapSnapshot:(id)snapshot withBundleIdentifier:(id)identifier
{
  snapshotCopy = snapshot;
  identifierCopy = identifier;
  v7 = MEMORY[0x277CCAC30];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SHMediaLibrarySnapshot_remapSnapshot_withBundleIdentifier___block_invoke;
  v16[3] = &unk_2788F7FB0;
  v8 = identifierCopy;
  v17 = v8;
  v9 = [v7 predicateWithBlock:v16];
  changes = [snapshotCopy changes];
  v11 = [changes mutableCopy];

  v12 = objc_autoreleasePoolPush();
  [v11 filterUsingPredicate:v9];
  objc_autoreleasePoolPop(v12);
  v13 = objc_alloc_init(SHMediaLibrarySnapshot);
  v14 = [v11 copy];
  [(SHMediaLibrarySnapshot *)v13 addChanges:v14];

  return v13;
}

uint64_t __61__SHMediaLibrarySnapshot_remapSnapshot_withBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 libraryItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 libraryItem];
    v7 = [v6 providerIdentifier];
    v8 = [v7 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)removeSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  changeset = [(SHMediaLibrarySnapshot *)self changeset];
  changeset2 = [snapshotCopy changeset];

  v6 = [changeset2 copy];
  [changeset minusOrderedSet:v6];
}

- (id)filteredSnapshotUsingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_autoreleasePoolPush();
  changeset = [(SHMediaLibrarySnapshot *)self changeset];
  v7 = [changeset filteredOrderedSetUsingPredicate:predicateCopy];

  objc_autoreleasePoolPop(v5);
  v8 = [[SHMediaLibrarySnapshot alloc] initWithChanges:v7];

  return v8;
}

- (SHMediaLibrarySnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SHMediaLibrarySnapshot;
  v5 = [(SHMediaLibrarySnapshot *)&v14 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"SHLibraryDifferenceCodingChanges"];
    v11 = [v10 mutableCopy];
    changeset = v5->_changeset;
    v5->_changeset = v11;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_changeset forKey:@"SHLibraryDifferenceCodingChanges"];
  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SHMediaLibrarySnapshot allocWithZone:?];
  changeset = [(SHMediaLibrarySnapshot *)self changeset];
  v7 = [changeset copyWithZone:zone];
  v8 = [(SHMediaLibrarySnapshot *)v5 initWithChanges:v7];

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  changes = [(SHMediaLibrarySnapshot *)self changes];
  v4 = [v2 stringWithFormat:@"SNAPSHOT: %lu", objc_msgSend(changes, "count")];

  return v4;
}

@end