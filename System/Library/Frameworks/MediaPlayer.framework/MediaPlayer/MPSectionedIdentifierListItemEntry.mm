@interface MPSectionedIdentifierListItemEntry
+ (MPSectionedIdentifierListItemEntry)itemEntryWithSectionIdentifier:(id)a3 itemIdentifier:(id)a4 generationPrefix:(id)a5;
- ($8BEA2F14B5BFFCEA171CA5B3383F4BB6)state;
- (BOOL)isDataSourceRemoved;
- (BOOL)isRemoved;
- (MPSectionedIdentifierListItemEntry)initWithCoder:(id)a3;
- (MPSectionedIdentifierListItemEntry)latestDataSourceClone;
- (MPSectionedIdentifierListItemEntry)latestUserClone;
- (MPSectionedIdentifierListItemEntry)rootEntry;
- (NSString)description;
- (id)_stateDumpObject;
- (id)newClonedEntry;
- (id)stringRepresentation;
- (int64_t)_generationNumber;
- (void)encodeWithCoder:(id)a3;
- (void)prepareForDealloc;
- (void)setDataSourceRemoved;
@end

@implementation MPSectionedIdentifierListItemEntry

- (MPSectionedIdentifierListItemEntry)latestUserClone
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(MPSectionedIdentifierListItemEntry *)v6 clonedEntries];
  v8 = [v7 reverseObjectEnumerator];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (![v13 isRemoved])
        {
          v14 = v13;

          goto LABEL_14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = self;
LABEL_14:

  return v14;
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
  v3 = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isDataSourceRemoved];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MPSectionedIdentifierListItemEntry;
    v5 = [(MPSectionedIdentifierListEntry *)&v8 isDataSourceRemoved];
  }

  v6 = v5;

  return v6;
}

- (MPSectionedIdentifierListItemEntry)rootEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_rootEntry);

  return WeakRetained;
}

- (int64_t)_generationNumber
{
  v3 = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = v3;
  if (v3 && ([v3 clonedEntries], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "indexOfObjectIdenticalTo:", self), v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
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
  v3 = [(MPSectionedIdentifierListItemEntry *)self clonedEntries];
  [v3 removeAllObjects];
}

- (id)newClonedEntry
{
  v3 = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  v7 = [(MPSectionedIdentifierListEntry *)self sectionIdentifier];
  v8 = [(MPSectionedIdentifierListItemEntry *)self itemIdentifier];
  v9 = [(MPSectionedIdentifierListEntry *)self positionKey];
  v10 = [v9 generation];
  v11 = [MPSectionedIdentifierListItemEntry itemEntryWithSectionIdentifier:v7 itemIdentifier:v8 generationPrefix:v10];

  [v11 setRootEntry:v6];
  v12 = [(MPSectionedIdentifierListEntry *)self hostedSectionIdentifier];
  [v11 setHostedSectionIdentifier:v12];

  v11[67] = self->_userRemoved;
  v11[68] = self->_userMoved;
  v11[66] = self->_dataSourceMoved;
  v13 = [(MPSectionedIdentifierListItemEntry *)v6 clonedEntries];

  if (!v13)
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    [(MPSectionedIdentifierListItemEntry *)v6 setClonedEntries:v14];
  }

  v15 = [(MPSectionedIdentifierListItemEntry *)v6 clonedEntries];
  [v15 addObject:v11];

  v6->_hasClones = 1;
  return v11;
}

- (MPSectionedIdentifierListItemEntry)latestDataSourceClone
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(MPSectionedIdentifierListItemEntry *)v6 clonedEntries];
  v8 = [v7 reverseObjectEnumerator];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isDataSourceCloned])
        {
          v14 = v13;

          goto LABEL_14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v3 = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = [(MPSectionedIdentifierListItemEntry *)self isUserMoved];
  v5 = [(MPSectionedIdentifierListItemEntry *)self isUserRemoved];
  v6 = [(MPSectionedIdentifierListItemEntry *)self isDataSourceMoved];
  v7 = [(MPSectionedIdentifierListItemEntry *)self isDataSourceRemoved];
  v8 = [(MPSectionedIdentifierListItemEntry *)self hasClones];
  if (v3)
  {
    v9 = [(MPSectionedIdentifierListItemEntry *)self latestUserClone];
    v26 = v8;
    v10 = (v9 == self) << 48;
    [(MPSectionedIdentifierListItemEntry *)self latestDataSourceClone];
    v11 = v7;
    v12 = v6;
    v13 = v5;
    v15 = v14 = v4;
    v16 = (v15 == self) << 56;
    v17 = [(MPSectionedIdentifierListItemEntry *)self _generationNumber];

    v4 = v14;
    v5 = v13;
    v6 = v12;
    v7 = v11;
    v18 = v10;
    v8 = v26;

    v19 = 0x10000000000;
  }

  else
  {
    v17 = [(MPSectionedIdentifierListItemEntry *)self _generationNumber];
    v16 = 0;
    v18 = 0;
    v19 = 0;
  }

  v20 = 0x100000000;
  if (!v8)
  {
    v20 = 0;
  }

  v21 = 0x1000000;
  if (!v7)
  {
    v21 = 0;
  }

  v22 = 0x10000;
  if (!v6)
  {
    v22 = 0;
  }

  v23 = 256;
  if (!v5)
  {
    v23 = 0;
  }

  v24 = v23 | v4 | v22 | v21 | v20 | v16 | v18 | v19;
  v25 = v17;
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
  v3 = [(MPSectionedIdentifierListItemEntry *)self rootEntry];
  v4 = v3;
  if (v3)
  {
    [v3 setDataSourceRemoved];
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
  v3 = [(MPSectionedIdentifierListEntry *)self sectionIdentifier];
  v4 = [(MPSectionedIdentifierListEntry *)self positionKey:v3];
  v5 = [v4 generation];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v7 = [v6 componentsJoinedByString:@"∆"];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPSectionedIdentifierListEntry *)self sectionIdentifier];
  v6 = [(MPSectionedIdentifierListItemEntry *)self itemIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p> %@ - %@", v4, self, v5, v6];

  return v7;
}

- (id)_stateDumpObject
{
  v22[9] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = MPSectionedIdentifierListItemEntry;
  v3 = [(MPSectionedIdentifierListEntry *)&v20 _stateDumpObject];
  v4 = [v3 mutableCopy];

  v5 = [(MPSectionedIdentifierListItemEntry *)self state];
  v7 = v6;
  v8 = [(MPSectionedIdentifierListItemEntry *)self itemIdentifier];
  [v4 setObject:v8 forKeyedSubscript:@"_itemID"];

  v21[0] = @"userMoved";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:v5 & 1];
  v22[0] = v19;
  v21[1] = @"userRemoved";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:(v5 >> 8) & 1];
  v22[1] = v9;
  v21[2] = @"dataSourceMoved";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:(v5 >> 16) & 1];
  v22[2] = v10;
  v21[3] = @"dataSourceRemoved";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:(v5 >> 24) & 1];
  v22[3] = v11;
  v21[4] = @"hasClones";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:HIDWORD(v5) & 1];
  v22[4] = v12;
  v21[5] = @"isClone";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:(v5 >> 40) & 1];
  v22[5] = v13;
  v21[6] = @"isActiveClone";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:HIWORD(v5) & 1];
  v22[6] = v14;
  v21[7] = @"isActiveDataSourceClone";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:HIBYTE(v5) & 1];
  v22[7] = v15;
  v21[8] = @"generationNumber";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v22[8] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:9];
  [v4 setObject:v17 forKeyedSubscript:@"state"];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = MPSectionedIdentifierListItemEntry;
  v4 = a3;
  [(MPSectionedIdentifierListEntry *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_itemIdentifier forKey:{@"iid", v7.receiver, v7.super_class}];
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

  [v4 encodeInteger:v6 forKey:@"f"];
}

- (MPSectionedIdentifierListItemEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MPSectionedIdentifierListItemEntry;
  v5 = [(MPSectionedIdentifierListEntry *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iid"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v8 = [v4 decodeIntegerForKey:@"f"];
    v5->_dataSourceMoved = v8 & 1;
    v5->_dataSourceCloned = (v8 & 2) != 0;
    v5->_userRemoved = (v8 & 4) != 0;
    v5->_userMoved = (v8 & 8) != 0;
    v5->_userCloned = (v8 & 0x10) != 0;
    v5->_hasClones = (v8 & 0x20) != 0;
  }

  return v5;
}

+ (MPSectionedIdentifierListItemEntry)itemEntryWithSectionIdentifier:(id)a3 itemIdentifier:(id)a4 generationPrefix:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([v8 length])
  {
    v11 = [v8 stringByAppendingString:@"1"];
  }

  else
  {
    v11 = @"1";
  }

  v12 = [a1 alloc];
  v13 = [MPSectionedIdentifierListEntryPositionKey positionKeyWithDeviceIdentifier:&stru_1F149ECA8 generation:v11];
  v14 = [v12 initWithPositionKey:v13 sectionIdentifier:v10];

  v15 = [v9 copy];
  v16 = v14[9];
  v14[9] = v15;

  return v14;
}

@end