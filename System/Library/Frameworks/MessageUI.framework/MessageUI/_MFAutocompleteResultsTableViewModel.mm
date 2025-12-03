@interface _MFAutocompleteResultsTableViewModel
- (_MFAutocompleteResultsTableViewModel)initWithNumberOfSections:(unint64_t)sections;
- (id)computeDiffForModel:(id)model;
- (id)sectionAtIndex:(unint64_t)index;
- (unint64_t)numberOfNonEmptySections;
- (void)enumerateSections:(id)sections;
- (void)setNumberOfSections:(unint64_t)sections;
- (void)setSection:(id)section atIndex:(unint64_t)index;
@end

@implementation _MFAutocompleteResultsTableViewModel

- (void)setNumberOfSections:(unint64_t)sections
{
  self->_numberOfSections = sections;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:sections];
  sections = self->_sections;
  self->_sections = v4;
}

- (unint64_t)numberOfNonEmptySections
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64___MFAutocompleteResultsTableViewModel_numberOfNonEmptySections__block_invoke;
  v4[3] = &unk_1E806CAB0;
  v4[4] = &v5;
  [(_MFAutocompleteResultsTableViewModel *)self enumerateSections:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)enumerateSections:(id)sections
{
  sectionsCopy = sections;
  sections = self->_sections;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58___MFAutocompleteResultsTableViewModel_enumerateSections___block_invoke;
  v7[3] = &unk_1E806CAD8;
  v8 = sectionsCopy;
  v6 = sectionsCopy;
  [(NSMutableDictionary *)sections enumerateKeysAndObjectsUsingBlock:v7];
}

- (_MFAutocompleteResultsTableViewModel)initWithNumberOfSections:(unint64_t)sections
{
  v7.receiver = self;
  v7.super_class = _MFAutocompleteResultsTableViewModel;
  v4 = [(_MFAutocompleteResultsTableViewModel *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(_MFAutocompleteResultsTableViewModel *)v4 setNumberOfSections:sections];
  }

  return v5;
}

- (id)sectionAtIndex:(unint64_t)index
{
  if (self->_numberOfSections >= index)
  {
    sections = self->_sections;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v8 = [(NSMutableDictionary *)sections objectForKey:v7];

    v3 = v8;
    if (!v8)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = self->_sections;
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
      [(NSMutableDictionary *)v9 setObject:v3 forKey:v10];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSection:(id)section atIndex:(unint64_t)index
{
  sections = self->_sections;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:section];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [(NSMutableDictionary *)sections setObject:v7 forKey:v6];
}

- (id)computeDiffForModel:(id)model
{
  modelCopy = model;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  indexSet3 = [MEMORY[0x1E696AD50] indexSet];
  numberOfSections = [modelCopy numberOfSections];
  if (numberOfSections == [(_MFAutocompleteResultsTableViewModel *)self numberOfSections])
  {
    for (i = 0; i < [(_MFAutocompleteResultsTableViewModel *)self numberOfSections]; ++i)
    {
      numberOfSections2 = [modelCopy numberOfSections];
      if (numberOfSections2 < [(_MFAutocompleteResultsTableViewModel *)self numberOfSections])
      {
        v11 = [(_MFAutocompleteResultsTableViewModel *)self sectionAtIndex:i];
        if ([v11 count])
        {
          v12 = [modelCopy sectionAtIndex:i];
          v13 = [v12 count];

          v14 = indexSet2;
          if (!v13)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      numberOfSections3 = [modelCopy numberOfSections];
      if (numberOfSections3 <= [(_MFAutocompleteResultsTableViewModel *)self numberOfSections])
      {
        goto LABEL_14;
      }

      v16 = [modelCopy sectionAtIndex:i];
      if (![v16 count])
      {

LABEL_14:
        v19 = [modelCopy sectionAtIndex:i];
        v20 = [v19 count];

        v14 = indexSet3;
        if (!v20)
        {
          continue;
        }

        goto LABEL_15;
      }

      v17 = [(_MFAutocompleteResultsTableViewModel *)self sectionAtIndex:i];
      v18 = [v17 count];

      v14 = indexSet;
      if (v18)
      {
        goto LABEL_14;
      }

LABEL_15:
      [v14 addIndex:i];
    }
  }

  v21 = objc_alloc_init(_MFTableViewModelDiff);
  [(_MFTableViewModelDiff *)v21 setChangedRows:indexSet3];
  [(_MFTableViewModelDiff *)v21 setDeletedRows:indexSet2];
  [(_MFTableViewModelDiff *)v21 setInsertedRows:indexSet];

  return v21;
}

@end