@interface _FavoritesTwoLinesContentViewModel
- (id)_secondaryTitleForPlaceCount:(unint64_t)a3 transitLineCount:(unint64_t)a4;
- (id)_secondaryTitlePlacesOnly:(unint64_t)a3;
- (id)_secondaryTitleTransitLineOnly:(unint64_t)a3;
- (void)_updateSubtitleWithContents:(id)a3;
- (void)setObservedQuery:(id)a3;
@end

@implementation _FavoritesTwoLinesContentViewModel

- (id)_secondaryTitleForPlaceCount:(unint64_t)a3 transitLineCount:(unint64_t)a4
{
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"count_of_places" value:@"localized string not found" table:0];

  v8 = [NSString localizedStringWithFormat:v7, a3];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"count_of_transit_lines" value:@"localized string not found" table:0];

  v11 = [NSString localizedStringWithFormat:v10, a4];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"count_of_places_and_transit_lines" value:@"localized string not found" table:0];

  v14 = [NSString stringWithFormat:v13, v8, v11];

  return v14;
}

- (id)_secondaryTitleTransitLineOnly:(unint64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"count_of_transit_lines" value:@"localized string not found" table:0];

  v6 = [NSString localizedStringWithFormat:v5, a3];

  return v6;
}

- (id)_secondaryTitlePlacesOnly:(unint64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"count_of_places" value:@"localized string not found" table:0];

  v6 = [NSString localizedStringWithFormat:v5, a3];

  return v6;
}

- (void)_updateSubtitleWithContents:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ++v7;
        }

        else
        {
          v8 += [v11 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
    if (v8)
    {
      if (v7)
      {
        [(_FavoritesTwoLinesContentViewModel *)self _secondaryTitleForPlaceCount:v7 transitLineCount:v8];
      }

      else
      {
        [(_FavoritesTwoLinesContentViewModel *)self _secondaryTitleTransitLineOnly:v8];
      }
      v12 = ;
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = [(_FavoritesTwoLinesContentViewModel *)self _secondaryTitlePlacesOnly:v7];
LABEL_17:
  v13 = v12;
  if (![(__CFString *)v12 length])
  {

    v13 = @" ";
  }

  [(_BasicTwoLinesContentViewModel *)self setSubtitleText:v13];
}

- (void)setObservedQuery:(id)a3
{
  v5 = a3;
  if (self->_observedQuery != v5)
  {
    objc_storeStrong(&self->_observedQuery, a3);
    objc_initWeak(&location, self);
    observedQuery = self->_observedQuery;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100C53EC4;
    v8[3] = &unk_10164EC38;
    objc_copyWeak(&v9, &location);
    v7 = &_dispatch_main_q;
    [(MSPQuery *)observedQuery setChangeHandler:v8 queue:&_dispatch_main_q];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

@end