@interface MPSectionedIdentifierListHeadEntry
+ (MPSectionedIdentifierListHeadEntry)headEntryWithSectionIdentifier:(id)identifier;
- (MPSectionedIdentifierListHeadEntry)initWithCoder:(id)coder;
- (MPSectionedIdentifierListHeadEntry)initWithPositionKey:(id)key sectionIdentifier:(id)identifier;
- (NSString)description;
- (id)nextEntries;
- (void)encodeWithCoder:(id)coder;
- (void)setBranchDepth:(int64_t)depth;
@end

@implementation MPSectionedIdentifierListHeadEntry

- (void)setBranchDepth:(int64_t)depth
{
  v5.receiver = self;
  v5.super_class = MPSectionedIdentifierListHeadEntry;
  [(MPSectionedIdentifierListEntry *)&v5 setBranchDepth:?];
  [(MPSectionedIdentifierListEntry *)self->_tailEntry setBranchDepth:depth];
}

- (id)nextEntries
{
  v7.receiver = self;
  v7.super_class = MPSectionedIdentifierListHeadEntry;
  nextEntries = [(MPSectionedIdentifierListEntry *)&v7 nextEntries];
  v4 = [nextEntries mutableCopy];

  tailEntry = [(MPSectionedIdentifierListHeadEntry *)self tailEntry];
  [v4 insertObject:tailEntry atIndex:0];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSectionedIdentifierListHeadEntry;
  coderCopy = coder;
  [(MPSectionedIdentifierListEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_shuffledHead forKey:{@"isShuffled", v5.receiver, v5.super_class}];
}

- (MPSectionedIdentifierListHeadEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MPSectionedIdentifierListHeadEntry;
  v5 = [(MPSectionedIdentifierListEntry *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_shuffledHead = [coderCopy decodeBoolForKey:@"isShuffled"];
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

  sectionIdentifier = [(MPSectionedIdentifierListEntry *)self sectionIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p> %@%@", v4, self, v5, sectionIdentifier];

  return v7;
}

- (MPSectionedIdentifierListHeadEntry)initWithPositionKey:(id)key sectionIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = MPSectionedIdentifierListHeadEntry;
  v4 = [(MPSectionedIdentifierListEntry *)&v10 initWithPositionKey:key sectionIdentifier:identifier];
  if (v4)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    identifiersItemEntryMap = v4->_identifiersItemEntryMap;
    v4->_identifiersItemEntryMap = dictionary;

    v7 = [MPSectionedIdentifierListTailEntry tailEntryWithSectionHeadEntry:v4];
    tailEntry = v4->_tailEntry;
    v4->_tailEntry = v7;
  }

  return v4;
}

+ (MPSectionedIdentifierListHeadEntry)headEntryWithSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self alloc];
  v6 = [MPSectionedIdentifierListEntryPositionKey positionKeyWithDeviceIdentifier:&stru_1F149ECA8 generation:@"1"];
  v7 = [v5 initWithPositionKey:v6 sectionIdentifier:identifierCopy];

  return v7;
}

@end