@interface HomeListPhotoSuggestionCellModel
- (BOOL)isEqual:(id)a3;
- (HomeListPhotoSuggestionCellModel)initWithEntry:(id)a3;
- (NSString)subtitle;
@end

@implementation HomeListPhotoSuggestionCellModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    entry = self->_entry;
    v7 = [(HomeListPhotoSuggestionCellModel *)v5 entry];
    if (entry == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(MapsSuggestionsEntry *)entry isEqual:v7];
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

- (HomeListPhotoSuggestionCellModel)initWithEntry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HomeListPhotoSuggestionCellModel;
  v6 = [(HomeListPhotoSuggestionCellModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entry, a3);
  }

  return v7;
}

@end