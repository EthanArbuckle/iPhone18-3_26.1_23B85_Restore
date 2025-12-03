@interface MPStoreLibraryMappingResponse
- (void)setLibraryIdentifierSet:(id)set forIdentifierSet:(id)identifierSet;
@end

@implementation MPStoreLibraryMappingResponse

- (void)setLibraryIdentifierSet:(id)set forIdentifierSet:(id)identifierSet
{
  setCopy = set;
  identifierSetCopy = identifierSet;
  if (identifierSetCopy)
  {
    storeIdentifierSetToLibraryIdentifierSet = self->_storeIdentifierSetToLibraryIdentifierSet;
    v8 = setCopy;
    if (setCopy)
    {
      if (!storeIdentifierSetToLibraryIdentifierSet)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v10 = self->_storeIdentifierSetToLibraryIdentifierSet;
        self->_storeIdentifierSetToLibraryIdentifierSet = v9;

        v8 = setCopy;
        storeIdentifierSetToLibraryIdentifierSet = self->_storeIdentifierSetToLibraryIdentifierSet;
      }

      [(NSMutableDictionary *)storeIdentifierSetToLibraryIdentifierSet setObject:v8 forKey:identifierSetCopy];
    }

    else
    {
      [(NSMutableDictionary *)storeIdentifierSetToLibraryIdentifierSet removeObjectForKey:identifierSetCopy];
    }
  }
}

@end