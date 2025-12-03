@interface ML3QueryResultSet(MPMediaLibraryAdditions)
- (id)sectionIndexTitles;
- (void)enumerateSectionHeadersUsingBlock:()MPMediaLibraryAdditions;
@end

@implementation ML3QueryResultSet(MPMediaLibraryAdditions)

- (id)sectionIndexTitles
{
  query = [self query];
  library = [query library];
  localizedSectionIndexTitles = [library localizedSectionIndexTitles];

  return localizedSectionIndexTitles;
}

- (void)enumerateSectionHeadersUsingBlock:()MPMediaLibraryAdditions
{
  v4 = a3;
  query = [self query];
  library = [query library];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__ML3QueryResultSet_MPMediaLibraryAdditions__enumerateSectionHeadersUsingBlock___block_invoke;
  v9[3] = &unk_1E76770F0;
  v10 = library;
  v11 = v4;
  v7 = v4;
  v8 = library;
  [self enumerateSectionsUsingBlock:v9];
}

@end