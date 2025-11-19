@interface MPMediaLibraryEntityTranslationContext
- (NSString)personID;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPMediaLibraryEntityTranslationContext

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(MPMediaLibraryEntityTranslationContext *)self mediaLibrary];
  [v5 setMediaLibrary:v6];

  v7 = [(MPMediaLibraryEntityTranslationContext *)self allowedEntityIdentifiers];
  v8 = [v7 copyWithZone:a3];
  [v5 setAllowedEntityIdentifiers:v8];

  v9 = [(MPMediaLibraryEntityTranslationContext *)self scopedContainers];
  v10 = [v9 copyWithZone:a3];
  [v5 setScopedContainers:v10];

  [v5 setMultiQuery:{-[MPMediaLibraryEntityTranslationContext isMultiQuery](self, "isMultiQuery")}];
  [v5 setSortUsingAllowedEntityIdentifiers:{-[MPMediaLibraryEntityTranslationContext sortUsingAllowedEntityIdentifiers](self, "sortUsingAllowedEntityIdentifiers")}];
  [v5 setFilteringOptions:{-[MPMediaLibraryEntityTranslationContext filteringOptions](self, "filteringOptions")}];
  v11 = [(MPMediaLibraryEntityTranslationContext *)self modelKind];
  [v5 setModelKind:v11];

  v12 = [(MPMediaLibraryEntityTranslationContext *)self personID];
  v13 = [v12 copyWithZone:a3];
  [v5 setPersonID:v13];

  v14 = [(MPMediaLibraryEntityTranslationContext *)self filterText];
  v15 = [v14 copyWithZone:a3];
  [v5 setFilterText:v15];

  v16 = [(MPMediaLibraryEntityTranslationContext *)self propertyFilters];
  v17 = [v16 copyWithZone:a3];
  [v5 setPropertyFilters:v17];

  v18 = [(MPMediaLibraryEntityTranslationContext *)self identifierSourcePrefix];
  v19 = [v18 copyWithZone:a3];
  [v5 setIdentifierSourcePrefix:v19];

  return v5;
}

- (NSString)personID
{
  p_personID = &self->_personID;
  v3 = [(NSString *)self->_personID length];
  v4 = MEMORY[0x1E69E4388];
  if (v3)
  {
    v4 = p_personID;
  }

  v5 = *v4;

  return v5;
}

@end