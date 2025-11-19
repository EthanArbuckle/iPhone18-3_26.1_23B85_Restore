@interface _INVocabularyGenerationDiff
- (BOOL)hasChanges;
- (id)description;
@end

@implementation _INVocabularyGenerationDiff

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_INVocabularyGenerationDiff *)self isFullReset];
  v6 = [(_INVocabularyGenerationDiff *)self deletedSiriIDs];
  v7 = [(_INVocabularyGenerationDiff *)self updatedVocabularyItems];
  v8 = [v3 stringWithFormat:@"<%@ %p>{\n  Reset=%d\n  deletedSiriIDs=%@\n  updatedVocabularyItems=%@\n}", v4, self, v5, v6, v7];

  return v8;
}

- (BOOL)hasChanges
{
  if ([(_INVocabularyGenerationDiff *)self isFullReset])
  {
    return 1;
  }

  v4 = [(_INVocabularyGenerationDiff *)self deletedSiriIDs];
  if ([v4 count])
  {
    v3 = 1;
  }

  else
  {
    v5 = [(_INVocabularyGenerationDiff *)self updatedVocabularyItems];
    v3 = [v5 count] != 0;
  }

  return v3;
}

@end