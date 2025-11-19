@interface _MPSectionedIdentifierListCloneIndexEntry
- (_MPSectionedIdentifierListCloneIndexEntry)init;
@end

@implementation _MPSectionedIdentifierListCloneIndexEntry

- (_MPSectionedIdentifierListCloneIndexEntry)init
{
  v6.receiver = self;
  v6.super_class = _MPSectionedIdentifierListCloneIndexEntry;
  v2 = [(_MPSectionedIdentifierListCloneIndexEntry *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    clonedEntries = v2->_clonedEntries;
    v2->_clonedEntries = v3;
  }

  return v2;
}

@end