@interface MPStoreLibraryMappingResponse
- (void)setLibraryIdentifierSet:(id)a3 forIdentifierSet:(id)a4;
@end

@implementation MPStoreLibraryMappingResponse

- (void)setLibraryIdentifierSet:(id)a3 forIdentifierSet:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v6)
  {
    storeIdentifierSetToLibraryIdentifierSet = self->_storeIdentifierSetToLibraryIdentifierSet;
    v8 = v11;
    if (v11)
    {
      if (!storeIdentifierSetToLibraryIdentifierSet)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v10 = self->_storeIdentifierSetToLibraryIdentifierSet;
        self->_storeIdentifierSetToLibraryIdentifierSet = v9;

        v8 = v11;
        storeIdentifierSetToLibraryIdentifierSet = self->_storeIdentifierSetToLibraryIdentifierSet;
      }

      [(NSMutableDictionary *)storeIdentifierSetToLibraryIdentifierSet setObject:v8 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)storeIdentifierSetToLibraryIdentifierSet removeObjectForKey:v6];
    }
  }
}

@end