@interface _INVocabularyGenerationDiff
- (BOOL)hasChanges;
- (id)description;
@end

@implementation _INVocabularyGenerationDiff

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  isFullReset = [(_INVocabularyGenerationDiff *)self isFullReset];
  deletedSiriIDs = [(_INVocabularyGenerationDiff *)self deletedSiriIDs];
  updatedVocabularyItems = [(_INVocabularyGenerationDiff *)self updatedVocabularyItems];
  v8 = [v3 stringWithFormat:@"<%@ %p>{\n  Reset=%d\n  deletedSiriIDs=%@\n  updatedVocabularyItems=%@\n}", v4, self, isFullReset, deletedSiriIDs, updatedVocabularyItems];

  return v8;
}

- (BOOL)hasChanges
{
  if ([(_INVocabularyGenerationDiff *)self isFullReset])
  {
    return 1;
  }

  deletedSiriIDs = [(_INVocabularyGenerationDiff *)self deletedSiriIDs];
  if ([deletedSiriIDs count])
  {
    v3 = 1;
  }

  else
  {
    updatedVocabularyItems = [(_INVocabularyGenerationDiff *)self updatedVocabularyItems];
    v3 = [updatedVocabularyItems count] != 0;
  }

  return v3;
}

@end