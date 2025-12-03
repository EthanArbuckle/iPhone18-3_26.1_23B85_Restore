@interface HomeListSimpleSuggestionCellModel
- (BOOL)isEqual:(id)equal;
- (HomeListSimpleSuggestionCellModel)initWithEntry:(id)entry;
@end

@implementation HomeListSimpleSuggestionCellModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    entry = self->_entry;
    entry = [(HomeListSimpleSuggestionCellModel *)v5 entry];
    if (entry == entry)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(MapsSuggestionsEntry *)entry isEqual:entry];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HomeListSimpleSuggestionCellModel)initWithEntry:(id)entry
{
  entryCopy = entry;
  v9.receiver = self;
  v9.super_class = HomeListSimpleSuggestionCellModel;
  v6 = [(HomeListSimpleSuggestionCellModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entry, entry);
  }

  return v7;
}

@end