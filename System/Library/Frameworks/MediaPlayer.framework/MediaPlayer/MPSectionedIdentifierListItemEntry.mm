@interface MPSectionedIdentifierListItemEntry
+ (MPSectionedIdentifierListItemEntry)itemEntryWithSectionIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier generationPrefix:(id)prefix;
- ($8BEA2F14B5BFFCEA171CA5B3383F4BB6)state;
- (BOOL)isDataSourceRemoved;
- (BOOL)isRemoved;
- (MPSectionedIdentifierListItemEntry)initWithCoder:(id)coder;
- (MPSectionedIdentifierListItemEntry)latestDataSourceClone;
- (MPSectionedIdentifierListItemEntry)latestUserClone;
- (MPSectionedIdentifierListItemEntry)rootEntry;
- (NSString)description;
- (id)_stateDumpObject;
- (id)newClonedEntry;
- (id)stringRepresentation;
- (int64_t)_generationNumber;
- (void)encodeWithCoder:(id)coder;
- (void)prepareForDealloc;
- (void)setDataSourceRemoved;
@end

@implementation MPSectionedIdentifierListItemEntry

- (MPSectionedIdentifierListItemEntry)latestUserClone
{
  v21 = *MEMORY[0x1E69E9840];
  rootEntry = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = rootEntry;
  if (rootEntry)
  {
    selfCopy = rootEntry;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  clonedEntries = [(MPSectionedIdentifierListItemEntry *)v6 clonedEntries];
  reverseObjectEnumerator = [clonedEntries reverseObjectEnumerator];

  v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (![v13 isRemoved])
        {
          selfCopy2 = v13;

          goto LABEL_14;
        }
      }

      v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  selfCopy2 = self;
LABEL_14:

  return selfCopy2;
}

- (BOOL)isRemoved
{
  if ([(MPSectionedIdentifierListItemEntry *)self isUserMoved]|| [(MPSectionedIdentifierListItemEntry *)self isUserRemoved]|| [(MPSectionedIdentifierListItemEntry *)self isDataSourceMoved])
  {
    return 1;
  }

  return [(MPSectionedIdentifierListItemEntry *)self isDataSourceRemoved];
}

- (BOOL)isDataSourceRemoved
{
  rootEntry = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = rootEntry;
  if (rootEntry)
  {
    isDataSourceRemoved = [rootEntry isDataSourceRemoved];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MPSectionedIdentifierListItemEntry;
    isDataSourceRemoved = [(MPSectionedIdentifierListEntry *)&v8 isDataSourceRemoved];
  }

  v6 = isDataSourceRemoved;

  return v6;
}

- (MPSectionedIdentifierListItemEntry)rootEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_rootEntry);

  return WeakRetained;
}

- (int64_t)_generationNumber
{
  rootEntry = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = rootEntry;
  if (rootEntry && ([rootEntry clonedEntries], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "indexOfObjectIdenticalTo:", self), v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)prepareForDealloc
{
  v4.receiver = self;
  v4.super_class = MPSectionedIdentifierListItemEntry;
  [(MPSectionedIdentifierListEntry *)&v4 prepareForDealloc];
  clonedEntries = [(MPSectionedIdentifierListItemEntry *)self clonedEntries];
  [clonedEntries removeAllObjects];
}

- (id)newClonedEntry
{
  rootEntry = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = rootEntry;
  if (rootEntry)
  {
    selfCopy = rootEntry;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  sectionIdentifier = [(MPSectionedIdentifierListEntry *)self sectionIdentifier];
  itemIdentifier = [(MPSectionedIdentifierListItemEntry *)self itemIdentifier];
  positionKey = [(MPSectionedIdentifierListEntry *)self positionKey];
  generation = [positionKey generation];
  v11 = [MPSectionedIdentifierListItemEntry itemEntryWithSectionIdentifier:sectionIdentifier itemIdentifier:itemIdentifier generationPrefix:generation];

  [v11 setRootEntry:v6];
  hostedSectionIdentifier = [(MPSectionedIdentifierListEntry *)self hostedSectionIdentifier];
  [v11 setHostedSectionIdentifier:hostedSectionIdentifier];

  v11[67] = self->_userRemoved;
  v11[68] = self->_userMoved;
  v11[66] = self->_dataSourceMoved;
  clonedEntries = [(MPSectionedIdentifierListItemEntry *)v6 clonedEntries];

  if (!clonedEntries)
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    [(MPSectionedIdentifierListItemEntry *)v6 setClonedEntries:v14];
  }

  clonedEntries2 = [(MPSectionedIdentifierListItemEntry *)v6 clonedEntries];
  [clonedEntries2 addObject:v11];

  v6->_hasClones = 1;
  return v11;
}

- (MPSectionedIdentifierListItemEntry)latestDataSourceClone
{
  v21 = *MEMORY[0x1E69E9840];
  rootEntry = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = rootEntry;
  if (rootEntry)
  {
    selfCopy = rootEntry;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  clonedEntries = [(MPSectionedIdentifierListItemEntry *)v6 clonedEntries];
  reverseObjectEnumerator = [clonedEntries reverseObjectEnumerator];

  v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isDataSourceCloned])
        {
          v14 = v13;

          goto LABEL_14;
        }
      }

      v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = v6;
LABEL_14:

  return v14;
}

- ($8BEA2F14B5BFFCEA171CA5B3383F4BB6)state
{
  rootEntry = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  isUserMoved = [(MPSectionedIdentifierListItemEntry *)self isUserMoved];
  isUserRemoved = [(MPSectionedIdentifierListItemEntry *)self isUserRemoved];
  isDataSourceMoved = [(MPSectionedIdentifierListItemEntry *)self isDataSourceMoved];
  isDataSourceRemoved = [(MPSectionedIdentifierListItemEntry *)self isDataSourceRemoved];
  hasClones = [(MPSectionedIdentifierListItemEntry *)self hasClones];
  if (rootEntry)
  {
    latestUserClone = [(MPSectionedIdentifierListItemEntry *)self latestUserClone];
    v26 = hasClones;
    v10 = (latestUserClone == self) << 48;
    [(MPSectionedIdentifierListItemEntry *)self latestDataSourceClone];
    v11 = isDataSourceRemoved;
    v12 = isDataSourceMoved;
    v13 = isUserRemoved;
    v15 = v14 = isUserMoved;
    v16 = (v15 == self) << 56;
    _generationNumber = [(MPSectionedIdentifierListItemEntry *)self _generationNumber];

    isUserMoved = v14;
    isUserRemoved = v13;
    isDataSourceMoved = v12;
    isDataSourceRemoved = v11;
    v18 = v10;
    hasClones = v26;

    v19 = 0x10000000000;
  }

  else
  {
    _generationNumber = [(MPSectionedIdentifierListItemEntry *)self _generationNumber];
    v16 = 0;
    v18 = 0;
    v19 = 0;
  }

  v20 = 0x100000000;
  if (!hasClones)
  {
    v20 = 0;
  }

  v21 = 0x1000000;
  if (!isDataSourceRemoved)
  {
    v21 = 0;
  }

  v22 = 0x10000;
  if (!isDataSourceMoved)
  {
    v22 = 0;
  }

  v23 = 256;
  if (!isUserRemoved)
  {
    v23 = 0;
  }

  v24 = v23 | isUserMoved | v22 | v21 | v20 | v16 | v18 | v19;
  v25 = _generationNumber;
  result.var8 = v25;
  result.var0 = v24;
  result.var1 = BYTE1(v24);
  result.var2 = BYTE2(v24);
  result.var3 = BYTE3(v24);
  result.var4 = BYTE4(v24);
  result.var5 = BYTE5(v24);
  result.var6 = BYTE6(v24);
  result.var7 = HIBYTE(v24);
  return result;
}

- (void)setDataSourceRemoved
{
  rootEntry = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = rootEntry;
  if (rootEntry)
  {
    [rootEntry setDataSourceRemoved];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MPSectionedIdentifierListItemEntry;
    [(MPSectionedIdentifierListEntry *)&v5 setDataSourceRemoved];
  }
}

- (id)stringRepresentation
{
  v9[3] = *MEMORY[0x1E69E9840];
  sectionIdentifier = [(MPSectionedIdentifierListEntry *)self sectionIdentifier];
  v4 = [(MPSectionedIdentifierListEntry *)self positionKey:sectionIdentifier];
  generation = [v4 generation];
  v9[2] = generation;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v7 = [v6 componentsJoinedByString:@"∆"];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  sectionIdentifier = [(MPSectionedIdentifierListEntry *)self sectionIdentifier];
  itemIdentifier = [(MPSectionedIdentifierListItemEntry *)self itemIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p> %@ - %@", v4, self, sectionIdentifier, itemIdentifier];

  return v7;
}

- (id)_stateDumpObject
{
  v22[9] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = MPSectionedIdentifierListItemEntry;
  _stateDumpObject = [(MPSectionedIdentifierListEntry *)&v20 _stateDumpObject];
  v4 = [_stateDumpObject mutableCopy];

  state = [(MPSectionedIdentifierListItemEntry *)self state];
  v7 = v6;
  itemIdentifier = [(MPSectionedIdentifierListItemEntry *)self itemIdentifier];
  [v4 setObject:itemIdentifier forKeyedSubscript:@"_itemID"];

  v21[0] = @"userMoved";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:state & 1];
  v22[0] = v19;
  v21[1] = @"userRemoved";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:(state >> 8) & 1];
  v22[1] = v9;
  v21[2] = @"dataSourceMoved";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:(state >> 16) & 1];
  v22[2] = v10;
  v21[3] = @"dataSourceRemoved";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:(state >> 24) & 1];
  v22[3] = v11;
  v21[4] = @"hasClones";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:HIDWORD(state) & 1];
  v22[4] = v12;
  v21[5] = @"isClone";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:(state >> 40) & 1];
  v22[5] = v13;
  v21[6] = @"isActiveClone";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:HIWORD(state) & 1];
  v22[6] = v14;
  v21[7] = @"isActiveDataSourceClone";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:HIBYTE(state) & 1];
  v22[7] = v15;
  v21[8] = @"generationNumber";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v22[8] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:9];
  [v4 setObject:v17 forKeyedSubscript:@"state"];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = MPSectionedIdentifierListItemEntry;
  coderCopy = coder;
  [(MPSectionedIdentifierListEntry *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_itemIdentifier forKey:{@"iid", v7.receiver, v7.super_class}];
  dataSourceMoved = self->_dataSourceMoved;
  if (self->_dataSourceCloned)
  {
    dataSourceMoved |= 2uLL;
  }

  if (self->_userRemoved)
  {
    dataSourceMoved |= 4uLL;
  }

  if (self->_userMoved)
  {
    dataSourceMoved |= 8uLL;
  }

  if (self->_userCloned)
  {
    dataSourceMoved |= 0x10uLL;
  }

  if (self->_hasClones)
  {
    v6 = dataSourceMoved | 0x20;
  }

  else
  {
    v6 = dataSourceMoved;
  }

  [coderCopy encodeInteger:v6 forKey:@"f"];
}

- (MPSectionedIdentifierListItemEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MPSectionedIdentifierListItemEntry;
  v5 = [(MPSectionedIdentifierListEntry *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iid"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [coderCopy decodeIntegerForKey:@"f"];
    v5->_dataSourceMoved = v8 & 1;
    v5->_dataSourceCloned = (v8 & 2) != 0;
    v5->_userRemoved = (v8 & 4) != 0;
    v5->_userMoved = (v8 & 8) != 0;
    v5->_userCloned = (v8 & 0x10) != 0;
    v5->_hasClones = (v8 & 0x20) != 0;
  }

  return v5;
}

+ (MPSectionedIdentifierListItemEntry)itemEntryWithSectionIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier generationPrefix:(id)prefix
{
  prefixCopy = prefix;
  itemIdentifierCopy = itemIdentifier;
  identifierCopy = identifier;
  if ([prefixCopy length])
  {
    v11 = [prefixCopy stringByAppendingString:@"1"];
  }

  else
  {
    v11 = @"1";
  }

  v12 = [self alloc];
  v13 = [MPSectionedIdentifierListEntryPositionKey positionKeyWithDeviceIdentifier:&stru_1F149ECA8 generation:v11];
  v14 = [v12 initWithPositionKey:v13 sectionIdentifier:identifierCopy];

  v15 = [itemIdentifierCopy copy];
  v16 = v14[9];
  v14[9] = v15;

  return v14;
}

@end