@interface MPMediaLibraryEntityTranslationContext
- (NSString)personID;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPMediaLibraryEntityTranslationContext

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  mediaLibrary = [(MPMediaLibraryEntityTranslationContext *)self mediaLibrary];
  [v5 setMediaLibrary:mediaLibrary];

  allowedEntityIdentifiers = [(MPMediaLibraryEntityTranslationContext *)self allowedEntityIdentifiers];
  v8 = [allowedEntityIdentifiers copyWithZone:zone];
  [v5 setAllowedEntityIdentifiers:v8];

  scopedContainers = [(MPMediaLibraryEntityTranslationContext *)self scopedContainers];
  v10 = [scopedContainers copyWithZone:zone];
  [v5 setScopedContainers:v10];

  [v5 setMultiQuery:{-[MPMediaLibraryEntityTranslationContext isMultiQuery](self, "isMultiQuery")}];
  [v5 setSortUsingAllowedEntityIdentifiers:{-[MPMediaLibraryEntityTranslationContext sortUsingAllowedEntityIdentifiers](self, "sortUsingAllowedEntityIdentifiers")}];
  [v5 setFilteringOptions:{-[MPMediaLibraryEntityTranslationContext filteringOptions](self, "filteringOptions")}];
  modelKind = [(MPMediaLibraryEntityTranslationContext *)self modelKind];
  [v5 setModelKind:modelKind];

  personID = [(MPMediaLibraryEntityTranslationContext *)self personID];
  v13 = [personID copyWithZone:zone];
  [v5 setPersonID:v13];

  filterText = [(MPMediaLibraryEntityTranslationContext *)self filterText];
  v15 = [filterText copyWithZone:zone];
  [v5 setFilterText:v15];

  propertyFilters = [(MPMediaLibraryEntityTranslationContext *)self propertyFilters];
  v17 = [propertyFilters copyWithZone:zone];
  [v5 setPropertyFilters:v17];

  identifierSourcePrefix = [(MPMediaLibraryEntityTranslationContext *)self identifierSourcePrefix];
  v19 = [identifierSourcePrefix copyWithZone:zone];
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