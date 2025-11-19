@interface CNChangeHistoryResult
+ (uint64_t)enumerateEnumerator:(void *)a3 usingBlock:;
- (BOOL)enumerateContactChangesWithKeysToFetch:(id)a3 fromContactStore:(id)a4 error:(id *)a5 usingBlock:(id)a6;
- (BOOL)enumerateGroupChangesFromContactStore:(id)a3 error:(id *)a4 usingBlock:(id)a5;
- (CNChangeHistoryResult)initWithCoder:(id)a3;
- (id)contactChangesEnumeratorWithKeysToFetch:(id)a3 contactStore:(id)a4;
- (id)description;
- (id)groupChangesEnumeratorWithContactStore:(id)a3;
- (id)labeledValueChangesEnumeratorWithContactStore:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNChangeHistoryResult

- (CNChangeHistoryResult)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CNChangeHistoryResult;
  v5 = [(CNChangeHistoryResult *)&v29 init];
  if (v5)
  {
    v5->_changesTruncated = [v4 decodeBoolForKey:@"_changesTruncated"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_latestChangeAnchor"];
    v7 = [v6 copy];
    latestChangeAnchor = v5->_latestChangeAnchor;
    v5->_latestChangeAnchor = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"_contactChanges"];
    v13 = [v12 copy];
    contactChanges = v5->_contactChanges;
    v5->_contactChanges = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"_groupChanges"];
    v19 = [v18 copy];
    groupChanges = v5->_groupChanges;
    v5->_groupChanges = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"_labeledValueChanges"];
    v25 = [v24 copy];
    labeledValueChanges = v5->_labeledValueChanges;
    v5->_labeledValueChanges = v25;

    v5->_unifyResults = [v4 decodeBoolForKey:@"_unifyResults"];
    v5->_changesCount = [v4 decodeIntegerForKey:@"_changesCount"];
    v27 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  changesTruncated = self->_changesTruncated;
  v5 = a3;
  [v5 encodeBool:changesTruncated forKey:@"_changesTruncated"];
  [v5 encodeObject:self->_latestChangeAnchor forKey:@"_latestChangeAnchor"];
  [v5 encodeObject:self->_contactChanges forKey:@"_contactChanges"];
  [v5 encodeObject:self->_groupChanges forKey:@"_groupChanges"];
  [v5 encodeObject:self->_labeledValueChanges forKey:@"_labeledValueChanges"];
  [v5 encodeBool:self->_unifyResults forKey:@"_unifyResults"];
  [v5 encodeInteger:self->_changesCount forKey:@"_changesCount"];
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryResult changesTruncated](self, "changesTruncated")}];
  v5 = [v3 appendName:@"changesTruncated" object:v4];

  v6 = [(CNChangeHistoryResult *)self latestChangeAnchor];
  v7 = [v3 appendName:@"latestChangeAnchor" object:v6];

  v8 = [(CNChangeHistoryResult *)self contactChanges];
  v9 = [v3 appendName:@"contactChanges" object:v8];

  v10 = [(CNChangeHistoryResult *)self groupChanges];
  v11 = [v3 appendName:@"groupChanges" object:v10];

  v12 = [(CNChangeHistoryResult *)self labeledValueChanges];
  v13 = [v3 appendName:@"labeledValueChanges" object:v12];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNChangeHistoryResult unifyResults](self, "unifyResults")}];
  v15 = [v3 appendName:@"unifyResults" object:v14];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNChangeHistoryResult changesCount](self, "changesCount")}];
  v17 = [v3 appendName:@"changesCount" object:v16];

  v18 = [v3 build];

  return v18;
}

- (BOOL)enumerateContactChangesWithKeysToFetch:(id)a3 fromContactStore:(id)a4 error:(id *)a5 usingBlock:(id)a6
{
  v9 = a6;
  v10 = [(CNChangeHistoryResult *)self contactChangesEnumeratorWithKeysToFetch:a3 contactStore:a4];
  LOBYTE(a3) = [CNChangeHistoryResult enumerateEnumerator:v10 usingBlock:v9];

  return a3;
}

+ (uint64_t)enumerateEnumerator:(void *)a3 usingBlock:
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
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

        v5[2](v5, *(*(&v13 + 1) + 8 * i), &v17);
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

- (id)contactChangesEnumeratorWithKeysToFetch:(id)a3 contactStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNChangeHistoryResult *)self contactChanges];
  v9 = [CNChangeHistoryLegacyResultEnumerator contactEnumeratorWithChanges:v8 keysToFetch:v7 unifyResults:[(CNChangeHistoryResult *)self unifyResults] contactStore:v6];

  return v9;
}

- (BOOL)enumerateGroupChangesFromContactStore:(id)a3 error:(id *)a4 usingBlock:(id)a5
{
  v7 = a5;
  v8 = [(CNChangeHistoryResult *)self groupChangesEnumeratorWithContactStore:a3];
  LOBYTE(self) = [CNChangeHistoryResult enumerateEnumerator:v8 usingBlock:v7];

  return self;
}

- (id)groupChangesEnumeratorWithContactStore:(id)a3
{
  v4 = a3;
  v5 = [(CNChangeHistoryResult *)self groupChanges];
  v6 = [CNChangeHistoryLegacyResultEnumerator groupEnumeratorWithChanges:v5 contactStore:v4];

  return v6;
}

- (id)labeledValueChangesEnumeratorWithContactStore:(id)a3
{
  v3 = [(CNChangeHistoryResult *)self labeledValueChanges];
  v4 = [v3 objectEnumerator];

  return v4;
}

@end