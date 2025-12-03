@interface HomeListPhotoSuggestionCellModel
- (BOOL)isEqual:(id)equal;
- (HomeListPhotoSuggestionCellModel)initWithEntry:(id)entry;
- (NSString)subtitle;
@end

@implementation HomeListPhotoSuggestionCellModel

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
    entry = [(HomeListPhotoSuggestionCellModel *)v5 entry];
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

- (NSString)subtitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Maps Home] Add photos you took here" value:@"localized string not found" table:0];

  return v3;
}

- (HomeListPhotoSuggestionCellModel)initWithEntry:(id)entry
{
  entryCopy = entry;
  v9.receiver = self;
  v9.super_class = HomeListPhotoSuggestionCellModel;
  v6 = [(HomeListPhotoSuggestionCellModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entry, entry);
  }

  return v7;
}

@end