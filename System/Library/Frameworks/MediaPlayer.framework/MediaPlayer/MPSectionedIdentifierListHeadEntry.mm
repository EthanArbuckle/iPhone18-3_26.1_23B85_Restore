@interface MPSectionedIdentifierListHeadEntry
+ (MPSectionedIdentifierListHeadEntry)headEntryWithSectionIdentifier:(id)a3;
- (MPSectionedIdentifierListHeadEntry)initWithCoder:(id)a3;
- (MPSectionedIdentifierListHeadEntry)initWithPositionKey:(id)a3 sectionIdentifier:(id)a4;
- (NSString)description;
- (id)nextEntries;
- (void)encodeWithCoder:(id)a3;
- (void)setBranchDepth:(int64_t)a3;
@end

@implementation MPSectionedIdentifierListHeadEntry

- (void)setBranchDepth:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MPSectionedIdentifierListHeadEntry;
  [(MPSectionedIdentifierListEntry *)&v5 setBranchDepth:?];
  [(MPSectionedIdentifierListEntry *)self->_tailEntry setBranchDepth:a3];
}

- (id)nextEntries
{
  v7.receiver = self;
  v7.super_class = MPSectionedIdentifierListHeadEntry;
  v3 = [(MPSectionedIdentifierListEntry *)&v7 nextEntries];
  v4 = [v3 mutableCopy];

  v5 = [(MPSectionedIdentifierListHeadEntry *)self tailEntry];
  [v4 insertObject:v5 atIndex:0];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSectionedIdentifierListHeadEntry;
  v4 = a3;
  [(MPSectionedIdentifierListEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_shuffledHead forKey:{@"isShuffled", v5.receiver, v5.super_class}];
}

- (MPSectionedIdentifierListHeadEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MPSectionedIdentifierListHeadEntry;
  v5 = [(MPSectionedIdentifierListEntry *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_shuffledHead = [v4 decodeBoolForKey:@"isShuffled"];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if ([(MPSectionedIdentifierListHeadEntry *)self isShuffledHead])
  {
    v5 = @"🔀 ";
  }

  else
  {
    v5 = &stru_1F149ECA8;
  }

  v6 = [(MPSectionedIdentifierListEntry *)self sectionIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p> %@%@", v4, self, v5, v6];

  return v7;
}

- (MPSectionedIdentifierListHeadEntry)initWithPositionKey:(id)a3 sectionIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = MPSectionedIdentifierListHeadEntry;
  v4 = [(MPSectionedIdentifierListEntry *)&v10 initWithPositionKey:a3 sectionIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    identifiersItemEntryMap = v4->_identifiersItemEntryMap;
    v4->_identifiersItemEntryMap = v5;

    v7 = [MPSectionedIdentifierListTailEntry tailEntryWithSectionHeadEntry:v4];
    tailEntry = v4->_tailEntry;
    v4->_tailEntry = v7;
  }

  return v4;
}

+ (MPSectionedIdentifierListHeadEntry)headEntryWithSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MPSectionedIdentifierListEntryPositionKey positionKeyWithDeviceIdentifier:&stru_1F149ECA8 generation:@"1"];
  v7 = [v5 initWithPositionKey:v6 sectionIdentifier:v4];

  return v7;
}

@end