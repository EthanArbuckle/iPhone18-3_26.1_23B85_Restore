@interface MPSectionedIdentifierListEntry
- (MPSectionedIdentifierListEntry)initWithCoder:(id)a3;
- (MPSectionedIdentifierListEntry)initWithPositionKey:(id)a3 sectionIdentifier:(id)a4;
- (MPSectionedIdentifierListEntry)previousEntry;
- (NSString)description;
- (id)_stateDumpObject;
- (id)itemResult;
- (id)trackingEntryResult;
- (void)addBranch:(id)a3 forceBranchDepthIncrease:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSectionedIdentifierListEntry

- (MPSectionedIdentifierListEntry)previousEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_previousEntry);

  return WeakRetained;
}

- (void)addBranch:(id)a3 forceBranchDepthIncrease:(BOOL)a4
{
  v4 = a4;
  v26 = a3;
  if (![v26 count])
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEntry.m" lineNumber:138 description:@"Cannot add empty branch"];
  }

  v7 = [(MPSectionedIdentifierListEntry *)self branchDepth];
  v8 = [(NSMutableArray *)self->_nextEntries count];
  v9 = v7 + v4;
  if ([v26 count] != 1)
  {
    v13 = 0;
    do
    {
      v14 = [v26 objectAtIndexedSubscript:v13];
      v15 = [v26 objectAtIndexedSubscript:++v13];
      [v14 setBranchDepth:v9 + v8];
      v16 = [v14 nextEntries];
      v17 = [v16 count];

      if (v17)
      {
        v18 = [v14 nextEntries];
        v19 = [v18 count];

        if (v19 == 1)
        {
          v20 = [v14 nextEntries];
          v21 = [v20 firstObject];

          if (v21 != v15)
          {
            v24 = [MEMORY[0x1E696AAA8] currentHandler];
            [v24 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEntry.m" lineNumber:152 description:@"Non-contiguous entries in MPSectionedIdentifierListEntryAddBranch [too many next]"];
          }

          v22 = [v15 previousEntry];
          if (v22 != v14)
          {
            v23 = [MEMORY[0x1E696AAA8] currentHandler];
            [v23 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEntry.m" lineNumber:154 description:@"Non-contiguous entries in MPSectionedIdentifierListEntryAddBranch [disconnected previous]"];
          }
        }

        else
        {
          v22 = [MEMORY[0x1E696AAA8] currentHandler];
          [v22 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEntry.m" lineNumber:157 description:@"Non-linear entries in MPSectionedIdentifierListEntryAddBranch"];
        }
      }

      else
      {
        [v14 addNextEntry:v15];
        [v15 setPreviousEntry:v14];
      }
    }

    while (v13 < [v26 count] - 1);
  }

  v10 = [v26 lastObject];
  [v10 setBranchDepth:v9 + v8];

  v11 = [v26 firstObject];
  [(MPSectionedIdentifierListEntry *)self addNextEntry:v11];

  v12 = [v26 firstObject];
  [v12 setPreviousEntry:self];
}

- (id)trackingEntryResult
{
  if ([(MPSectionedIdentifierListEntry *)self conformsToProtocol:&unk_1F15507F8])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)itemResult
{
  if ([(MPSectionedIdentifierListEntry *)self conformsToProtocol:&unk_1F1550A18])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  positionKey = self->_positionKey;
  v5 = a3;
  [v5 encodeObject:positionKey forKey:@"pk"];
  [v5 encodeObject:self->_sectionIdentifier forKey:@"si"];
  [v5 encodeObject:self->_hostedSectionIdentifier forKey:@"hsi"];
  [v5 encodeInteger:self->_branchDepth forKey:@"bd"];
  [v5 encodeBool:self->_dataSourceRemoved forKey:@"dsr"];
}

- (MPSectionedIdentifierListEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pk"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"si"];
  v7 = [(MPSectionedIdentifierListEntry *)self initWithPositionKey:v5 sectionIdentifier:v6];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hsi"];
    hostedSectionIdentifier = v7->_hostedSectionIdentifier;
    v7->_hostedSectionIdentifier = v8;

    v7->_branchDepth = [v4 decodeIntegerForKey:@"bd"];
    v7->_dataSourceRemoved = [v4 decodeBoolForKey:@"dsr"];
  }

  return v7;
}

- (id)_stateDumpObject
{
  v21[5] = *MEMORY[0x1E69E9840];
  v20[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v21[0] = v3;
  v20[1] = @"_sectionID";
  v4 = [(MPSectionedIdentifierListEntry *)self sectionIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"@";
  }

  v21[1] = v6;
  v20[2] = @"_hostedSectionIdentifier";
  v7 = [(MPSectionedIdentifierListEntry *)self hostedSectionIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"@";
  }

  v21[2] = v9;
  v20[3] = @"nextEntries";
  v10 = [(MPSectionedIdentifierListEntry *)self nextEntries];
  v11 = [v10 valueForKey:@"description"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"@";
  }

  v21[3] = v13;
  v20[4] = @"previousEntry";
  v14 = [(MPSectionedIdentifierListEntry *)self previousEntry];
  v15 = [v14 description];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"@";
  }

  v21[4] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];

  return v18;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPSectionedIdentifierListEntry *)self sectionIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (MPSectionedIdentifierListEntry)initWithPositionKey:(id)a3 sectionIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MPSectionedIdentifierListEntry;
  v9 = [(MPSectionedIdentifierListEntry *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_positionKey, a3);
    v11 = [MEMORY[0x1E695DF70] array];
    nextEntries = v10->_nextEntries;
    v10->_nextEntries = v11;

    v13 = [v8 copy];
    sectionIdentifier = v10->_sectionIdentifier;
    v10->_sectionIdentifier = v13;
  }

  return v10;
}

@end