@interface ML3QueryResultSet(MPMediaLibraryAdditions)
- (id)sectionIndexTitles;
- (void)enumerateSectionHeadersUsingBlock:()MPMediaLibraryAdditions;
@end

@implementation ML3QueryResultSet(MPMediaLibraryAdditions)

- (id)sectionIndexTitles
{
  v1 = [a1 query];
  v2 = [v1 library];
  v3 = [v2 localizedSectionIndexTitles];

  return v3;
}

- (void)enumerateSectionHeadersUsingBlock:()MPMediaLibraryAdditions
{
  v4 = a3;
  v5 = [a1 query];
  v6 = [v5 library];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__ML3QueryResultSet_MPMediaLibraryAdditions__enumerateSectionHeadersUsingBlock___block_invoke;
  v9[3] = &unk_1E76770F0;
  v10 = v6;
  v11 = v4;
  v7 = v4;
  v8 = v6;
  [a1 enumerateSectionsUsingBlock:v9];
}

@end