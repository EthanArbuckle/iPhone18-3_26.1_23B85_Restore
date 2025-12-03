@interface MPSectionedIdentifierListEntry
- (MPSectionedIdentifierListEntry)initWithCoder:(id)coder;
- (MPSectionedIdentifierListEntry)initWithPositionKey:(id)key sectionIdentifier:(id)identifier;
- (MPSectionedIdentifierListEntry)previousEntry;
- (NSString)description;
- (id)_stateDumpObject;
- (id)itemResult;
- (id)trackingEntryResult;
- (void)addBranch:(id)branch forceBranchDepthIncrease:(BOOL)increase;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSectionedIdentifierListEntry

- (MPSectionedIdentifierListEntry)previousEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_previousEntry);

  return WeakRetained;
}

- (void)addBranch:(id)branch forceBranchDepthIncrease:(BOOL)increase
{
  increaseCopy = increase;
  branchCopy = branch;
  if (![branchCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEntry.m" lineNumber:138 description:@"Cannot add empty branch"];
  }

  branchDepth = [(MPSectionedIdentifierListEntry *)self branchDepth];
  v8 = [(NSMutableArray *)self->_nextEntries count];
  v9 = branchDepth + increaseCopy;
  if ([branchCopy count] != 1)
  {
    v13 = 0;
    do
    {
      v14 = [branchCopy objectAtIndexedSubscript:v13];
      v15 = [branchCopy objectAtIndexedSubscript:++v13];
      [v14 setBranchDepth:v9 + v8];
      nextEntries = [v14 nextEntries];
      v17 = [nextEntries count];

      if (v17)
      {
        nextEntries2 = [v14 nextEntries];
        v19 = [nextEntries2 count];

        if (v19 == 1)
        {
          nextEntries3 = [v14 nextEntries];
          firstObject = [nextEntries3 firstObject];

          if (firstObject != v15)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEntry.m" lineNumber:152 description:@"Non-contiguous entries in MPSectionedIdentifierListEntryAddBranch [too many next]"];
          }

          previousEntry = [v15 previousEntry];
          if (previousEntry != v14)
          {
            currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler3 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEntry.m" lineNumber:154 description:@"Non-contiguous entries in MPSectionedIdentifierListEntryAddBranch [disconnected previous]"];
          }
        }

        else
        {
          previousEntry = [MEMORY[0x1E696AAA8] currentHandler];
          [previousEntry handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEntry.m" lineNumber:157 description:@"Non-linear entries in MPSectionedIdentifierListEntryAddBranch"];
        }
      }

      else
      {
        [v14 addNextEntry:v15];
        [v15 setPreviousEntry:v14];
      }
    }

    while (v13 < [branchCopy count] - 1);
  }

  lastObject = [branchCopy lastObject];
  [lastObject setBranchDepth:v9 + v8];

  firstObject2 = [branchCopy firstObject];
  [(MPSectionedIdentifierListEntry *)self addNextEntry:firstObject2];

  firstObject3 = [branchCopy firstObject];
  [firstObject3 setPreviousEntry:self];
}

- (id)trackingEntryResult
{
  if ([(MPSectionedIdentifierListEntry *)self conformsToProtocol:&unk_1F15507F8])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)itemResult
{
  if ([(MPSectionedIdentifierListEntry *)self conformsToProtocol:&unk_1F1550A18])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  positionKey = self->_positionKey;
  coderCopy = coder;
  [coderCopy encodeObject:positionKey forKey:@"pk"];
  [coderCopy encodeObject:self->_sectionIdentifier forKey:@"si"];
  [coderCopy encodeObject:self->_hostedSectionIdentifier forKey:@"hsi"];
  [coderCopy encodeInteger:self->_branchDepth forKey:@"bd"];
  [coderCopy encodeBool:self->_dataSourceRemoved forKey:@"dsr"];
}

- (MPSectionedIdentifierListEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pk"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"si"];
  v7 = [(MPSectionedIdentifierListEntry *)self initWithPositionKey:v5 sectionIdentifier:v6];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hsi"];
    hostedSectionIdentifier = v7->_hostedSectionIdentifier;
    v7->_hostedSectionIdentifier = v8;

    v7->_branchDepth = [coderCopy decodeIntegerForKey:@"bd"];
    v7->_dataSourceRemoved = [coderCopy decodeBoolForKey:@"dsr"];
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
  sectionIdentifier = [(MPSectionedIdentifierListEntry *)self sectionIdentifier];
  v5 = sectionIdentifier;
  if (sectionIdentifier)
  {
    v6 = sectionIdentifier;
  }

  else
  {
    v6 = @"@";
  }

  v21[1] = v6;
  v20[2] = @"_hostedSectionIdentifier";
  hostedSectionIdentifier = [(MPSectionedIdentifierListEntry *)self hostedSectionIdentifier];
  v8 = hostedSectionIdentifier;
  if (hostedSectionIdentifier)
  {
    v9 = hostedSectionIdentifier;
  }

  else
  {
    v9 = @"@";
  }

  v21[2] = v9;
  v20[3] = @"nextEntries";
  nextEntries = [(MPSectionedIdentifierListEntry *)self nextEntries];
  v11 = [nextEntries valueForKey:@"description"];
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
  previousEntry = [(MPSectionedIdentifierListEntry *)self previousEntry];
  v15 = [previousEntry description];
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
  sectionIdentifier = [(MPSectionedIdentifierListEntry *)self sectionIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, sectionIdentifier];

  return v6;
}

- (MPSectionedIdentifierListEntry)initWithPositionKey:(id)key sectionIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = MPSectionedIdentifierListEntry;
  v9 = [(MPSectionedIdentifierListEntry *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_positionKey, key);
    array = [MEMORY[0x1E695DF70] array];
    nextEntries = v10->_nextEntries;
    v10->_nextEntries = array;

    v13 = [identifierCopy copy];
    sectionIdentifier = v10->_sectionIdentifier;
    v10->_sectionIdentifier = v13;
  }

  return v10;
}

@end