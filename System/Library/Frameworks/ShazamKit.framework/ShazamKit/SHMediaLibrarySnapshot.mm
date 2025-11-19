@interface SHMediaLibrarySnapshot
+ (id)remapSnapshot:(id)a3 withBundleIdentifier:(id)a4;
- (BOOL)containsLibraryItem:(id)a3;
- (BOOL)evaluateUsingPredicate:(id)a3;
- (BOOL)hasChanges;
- (BOOL)isConflictingChange:(id)a3;
- (BOOL)validateWithBundleIdentifier:(id)a3;
- (NSArray)allItemIdentifiers;
- (NSArray)changes;
- (NSArray)trackChanges;
- (SHMediaLibrarySnapshot)init;
- (SHMediaLibrarySnapshot)initWithChanges:(id)a3;
- (SHMediaLibrarySnapshot)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)filteredSnapshotUsingPredicate:(id)a3;
- (id)tracksForChangeType:(int64_t)a3;
- (void)addChanges:(id)a3;
- (void)addItem:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)mergeSnapshot:(id)a3;
- (void)removeItem:(id)a3;
- (void)removeSnapshot:(id)a3;
@end

@implementation SHMediaLibrarySnapshot

- (SHMediaLibrarySnapshot)init
{
  v3 = [MEMORY[0x277CBEB70] orderedSet];
  v4 = [(SHMediaLibrarySnapshot *)self initWithChanges:v3];

  return v4;
}

- (SHMediaLibrarySnapshot)initWithChanges:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SHMediaLibrarySnapshot;
  v5 = [(SHMediaLibrarySnapshot *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    changeset = v5->_changeset;
    v5->_changeset = v6;
  }

  return v5;
}

- (NSArray)changes
{
  v2 = [(SHMediaLibrarySnapshot *)self changeset];
  v3 = [v2 array];

  return v3;
}

- (BOOL)hasChanges
{
  v2 = [(SHMediaLibrarySnapshot *)self changeset];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSArray)trackChanges
{
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_5];
  v4 = [(SHMediaLibrarySnapshot *)self changes];
  v5 = [v4 mutableCopy];

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
  v4 = [(SHMediaLibrarySnapshot *)self changes];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(SHMediaLibrarySnapshot *)self changes];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) libraryItem];
        v12 = [v11 identifier];
        v13 = [v12 copy];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)addItem:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[SHMediaLibraryChange alloc] initWithLibraryItem:v4 changeType:1];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(SHMediaLibrarySnapshot *)self addChanges:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeItem:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[SHMediaLibraryChange alloc] initWithLibraryItem:v4 changeType:3];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(SHMediaLibrarySnapshot *)self addChanges:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addChanges:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([(SHMediaLibrarySnapshot *)self isConflictingChange:v10, v18])
        {
          v11 = sh_log_object();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = [v10 libraryItem];
            v13 = [v12 identifier];
            *buf = v18;
            v24 = v13;
            _os_log_impl(&dword_230F52000, v11, OS_LOG_TYPE_ERROR, "Should not try to modify and remove the same library item (%@)", buf, 0xCu);
          }
        }

        else
        {
          v14 = [(SHMediaLibrarySnapshot *)self changeset];
          v15 = [v14 indexOfObject:v10];

          v16 = [(SHMediaLibrarySnapshot *)self changeset];
          v11 = v16;
          if (v15 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v16 addObject:v10];
          }

          else
          {
            [v16 replaceObjectAtIndex:v15 withObject:v10];
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)mergeSnapshot:(id)a3
{
  if (self != a3)
  {
    v5 = [a3 changes];
    [(SHMediaLibrarySnapshot *)self addChanges:v5];
  }
}

- (BOOL)containsLibraryItem:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCAC30];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SHMediaLibrarySnapshot_containsLibraryItem___block_invoke;
  v9[3] = &unk_2788F7FB0;
  v10 = v4;
  v6 = v4;
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

- (BOOL)isConflictingChange:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCAC30];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SHMediaLibrarySnapshot_isConflictingChange___block_invoke;
  v9[3] = &unk_2788F7FB0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 predicateWithBlock:v9];
  LOBYTE(self) = [(SHMediaLibrarySnapshot *)self evaluateUsingPredicate:v7];

  return self;
}

- (BOOL)evaluateUsingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaLibrarySnapshot *)self changes];
  v6 = [v5 mutableCopy];

  v7 = objc_autoreleasePoolPush();
  [v6 filterUsingPredicate:v4];
  objc_autoreleasePoolPop(v7);
  LOBYTE(v7) = [v6 count] != 0;

  return v7;
}

- (BOOL)validateWithBundleIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(SHMediaLibrarySnapshot *)self changes];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 libraryItem];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v10 changeType];

          if (v12 == 3)
          {
            v13 = [v10 libraryItem];
            v14 = [v13 providerIdentifier];
            v15 = [v14 isEqualToString:v4];

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

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = 1;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)tracksForChangeType:(int64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  v6 = [(SHMediaLibrarySnapshot *)self changes];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(SHMediaLibrarySnapshot *)self changes];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 libraryItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v16 = [v13 changeType];
        if ((isKindOfClass & 1) != 0 && v16 == a3)
        {
          v17 = [v13 libraryItem];
          [v7 addObject:v17];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = [v7 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)remapSnapshot:(id)a3 withBundleIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CCAC30];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SHMediaLibrarySnapshot_remapSnapshot_withBundleIdentifier___block_invoke;
  v16[3] = &unk_2788F7FB0;
  v8 = v6;
  v17 = v8;
  v9 = [v7 predicateWithBlock:v16];
  v10 = [v5 changes];
  v11 = [v10 mutableCopy];

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

- (void)removeSnapshot:(id)a3
{
  v4 = a3;
  v7 = [(SHMediaLibrarySnapshot *)self changeset];
  v5 = [v4 changeset];

  v6 = [v5 copy];
  [v7 minusOrderedSet:v6];
}

- (id)filteredSnapshotUsingPredicate:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(SHMediaLibrarySnapshot *)self changeset];
  v7 = [v6 filteredOrderedSetUsingPredicate:v4];

  objc_autoreleasePoolPop(v5);
  v8 = [[SHMediaLibrarySnapshot alloc] initWithChanges:v7];

  return v8;
}

- (SHMediaLibrarySnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SHMediaLibrarySnapshot;
  v5 = [(SHMediaLibrarySnapshot *)&v14 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"SHLibraryDifferenceCodingChanges"];
    v11 = [v10 mutableCopy];
    changeset = v5->_changeset;
    v5->_changeset = v11;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [v5 encodeObject:self->_changeset forKey:@"SHLibraryDifferenceCodingChanges"];
  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [SHMediaLibrarySnapshot allocWithZone:?];
  v6 = [(SHMediaLibrarySnapshot *)self changeset];
  v7 = [v6 copyWithZone:a3];
  v8 = [(SHMediaLibrarySnapshot *)v5 initWithChanges:v7];

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SHMediaLibrarySnapshot *)self changes];
  v4 = [v2 stringWithFormat:@"SNAPSHOT: %lu", objc_msgSend(v3, "count")];

  return v4;
}

@end