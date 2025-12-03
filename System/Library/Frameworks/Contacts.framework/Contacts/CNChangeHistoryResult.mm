@interface CNChangeHistoryResult
+ (uint64_t)enumerateEnumerator:(void *)enumerator usingBlock:;
- (BOOL)enumerateContactChangesWithKeysToFetch:(id)fetch fromContactStore:(id)store error:(id *)error usingBlock:(id)block;
- (BOOL)enumerateGroupChangesFromContactStore:(id)store error:(id *)error usingBlock:(id)block;
- (CNChangeHistoryResult)initWithCoder:(id)coder;
- (id)contactChangesEnumeratorWithKeysToFetch:(id)fetch contactStore:(id)store;
- (id)description;
- (id)groupChangesEnumeratorWithContactStore:(id)store;
- (id)labeledValueChangesEnumeratorWithContactStore:(id)store;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNChangeHistoryResult

- (CNChangeHistoryResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = CNChangeHistoryResult;
  v5 = [(CNChangeHistoryResult *)&v29 init];
  if (v5)
  {
    v5->_changesTruncated = [coderCopy decodeBoolForKey:@"_changesTruncated"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_latestChangeAnchor"];
    v7 = [v6 copy];
    latestChangeAnchor = v5->_latestChangeAnchor;
    v5->_latestChangeAnchor = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_contactChanges"];
    v13 = [v12 copy];
    contactChanges = v5->_contactChanges;
    v5->_contactChanges = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"_groupChanges"];
    v19 = [v18 copy];
    groupChanges = v5->_groupChanges;
    v5->_groupChanges = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"_labeledValueChanges"];
    v25 = [v24 copy];
    labeledValueChanges = v5->_labeledValueChanges;
    v5->_labeledValueChanges = v25;

    v5->_unifyResults = [coderCopy decodeBoolForKey:@"_unifyResults"];
    v5->_changesCount = [coderCopy decodeIntegerForKey:@"_changesCount"];
    v27 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  changesTruncated = self->_changesTruncated;
  coderCopy = coder;
  [coderCopy encodeBool:changesTruncated forKey:@"_changesTruncated"];
  [coderCopy encodeObject:self->_latestChangeAnchor forKey:@"_latestChangeAnchor"];
  [coderCopy encodeObject:self->_contactChanges forKey:@"_contactChanges"];
  [coderCopy encodeObject:self->_groupChanges forKey:@"_groupChanges"];
  [coderCopy encodeObject:self->_labeledValueChanges forKey:@"_labeledValueChanges"];
  [coderCopy encodeBool:self->_unifyResults forKey:@"_unifyResults"];
  [coderCopy encodeInteger:self->_changesCount forKey:@"_changesCount"];
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryResult changesTruncated](self, "changesTruncated")}];
  v5 = [v3 appendName:@"changesTruncated" object:v4];

  latestChangeAnchor = [(CNChangeHistoryResult *)self latestChangeAnchor];
  v7 = [v3 appendName:@"latestChangeAnchor" object:latestChangeAnchor];

  contactChanges = [(CNChangeHistoryResult *)self contactChanges];
  v9 = [v3 appendName:@"contactChanges" object:contactChanges];

  groupChanges = [(CNChangeHistoryResult *)self groupChanges];
  v11 = [v3 appendName:@"groupChanges" object:groupChanges];

  labeledValueChanges = [(CNChangeHistoryResult *)self labeledValueChanges];
  v13 = [v3 appendName:@"labeledValueChanges" object:labeledValueChanges];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryResult unifyResults](self, "unifyResults")}];
  v15 = [v3 appendName:@"unifyResults" object:v14];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNChangeHistoryResult changesCount](self, "changesCount")}];
  v17 = [v3 appendName:@"changesCount" object:v16];

  build = [v3 build];

  return build;
}

- (BOOL)enumerateContactChangesWithKeysToFetch:(id)fetch fromContactStore:(id)store error:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  v10 = [(CNChangeHistoryResult *)self contactChangesEnumeratorWithKeysToFetch:fetch contactStore:store];
  LOBYTE(fetch) = [CNChangeHistoryResult enumerateEnumerator:v10 usingBlock:blockCopy];

  return fetch;
}

+ (uint64_t)enumerateEnumerator:(void *)enumerator usingBlock:
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a2;
  enumeratorCopy = enumerator;
  objc_opt_self();
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        enumeratorCopy[2](enumeratorCopy, *(*(&v13 + 1) + 8 * i), &v17);
        if (v17)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (id)contactChangesEnumeratorWithKeysToFetch:(id)fetch contactStore:(id)store
{
  storeCopy = store;
  fetchCopy = fetch;
  contactChanges = [(CNChangeHistoryResult *)self contactChanges];
  v9 = [CNChangeHistoryLegacyResultEnumerator contactEnumeratorWithChanges:contactChanges keysToFetch:fetchCopy unifyResults:[(CNChangeHistoryResult *)self unifyResults] contactStore:storeCopy];

  return v9;
}

- (BOOL)enumerateGroupChangesFromContactStore:(id)store error:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  v8 = [(CNChangeHistoryResult *)self groupChangesEnumeratorWithContactStore:store];
  LOBYTE(self) = [CNChangeHistoryResult enumerateEnumerator:v8 usingBlock:blockCopy];

  return self;
}

- (id)groupChangesEnumeratorWithContactStore:(id)store
{
  storeCopy = store;
  groupChanges = [(CNChangeHistoryResult *)self groupChanges];
  v6 = [CNChangeHistoryLegacyResultEnumerator groupEnumeratorWithChanges:groupChanges contactStore:storeCopy];

  return v6;
}

- (id)labeledValueChangesEnumeratorWithContactStore:(id)store
{
  labeledValueChanges = [(CNChangeHistoryResult *)self labeledValueChanges];
  objectEnumerator = [labeledValueChanges objectEnumerator];

  return objectEnumerator;
}

@end