@interface CuratedCollectionActionManager
- (CuratedCollectionActionDelegate)delegate;
- (id)_glyphColor;
- (id)_savedItemWithSaveTitle:(id)a3 unsaveTitle:(id)a4;
- (id)createRowActionsWithStyle:(unint64_t)a3;
- (void)performAction:(id)a3 options:(id)a4 completion:(id)a5;
- (void)setCollectionIsSaved:(BOOL)a3;
@end

@implementation CuratedCollectionActionManager

- (CuratedCollectionActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_glyphColor
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
  {
    v4 = +[UIColor lightTextColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCollectionIsSaved:(BOOL)a3
{
  self->_collectionIsSaved = a3;
  [(MKPlaceCardActionItem *)self->_saveItem setSelected:?];
  saveItem = self->_saveItem;

  [(MKPlaceCardActionItem *)saveItem setEnabled:1];
}

- (void)performAction:(id)a3 options:(id)a4 completion:(id)a5
{
  v10 = a4;
  v7 = [a3 type];
  if (v7 > 12)
  {
    if (v7 == 13)
    {
      v8 = [(CuratedCollectionActionManager *)self delegate];
      [v8 didSelectOpenHomePage];
    }

    else
    {
      if (v7 != 16)
      {
        goto LABEL_11;
      }

      v8 = [v10 objectForKeyedSubscript:@"view"];
      v9 = [(CuratedCollectionActionManager *)self delegate];
      [v9 didSelectShareFromView:v8];
    }
  }

  else if (v7 == 5)
  {
    v8 = [(CuratedCollectionActionManager *)self delegate];
    [v8 didSelectSaveCollection];
  }

  else
  {
    if (v7 != 6)
    {
      goto LABEL_11;
    }

    v8 = [(CuratedCollectionActionManager *)self delegate];
    [v8 didSelectRemoveFromSavedCollection];
  }

LABEL_11:
}

- (id)_savedItemWithSaveTitle:(id)a3 unsaveTitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CuratedCollectionActionManager *)self _glyphColor];
  v9 = [[MKPlaceCardActionItem alloc] initWithType:6 displayString:v6 glyph:@"checkmark" enabled:1];

  if (v8)
  {
    [v9 setGlyphColor:v8];
  }

  v10 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v11 = @"square.and.arrow.down.fill";
  if (v10)
  {
    v11 = @"plus";
  }

  v12 = v11;
  v13 = [[MKPlaceCardActionItem alloc] initWithType:5 displayString:v7 glyph:v12 enabled:1];

  [v13 setSelectedItem:v9];
  [v13 setSelected:{-[CuratedCollectionActionManager collectionIsSaved](self, "collectionIsSaved")}];
  if (v8)
  {
    [v13 setGlyphColor:v8];
  }

  return v13;
}

- (id)createRowActionsWithStyle:(unint64_t)a3
{
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [(CuratedCollectionActionManager *)self _glyphColor];
  if (self->_hasHomePage)
  {
    v6 = +[UIDevice currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 != 5)
    {
      v8 = [MKPlaceCardActionItem alloc];
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"Open_Website_Collection_Action_Row" value:@"localized string not found" table:0];
      v11 = [v8 initWithType:13 displayString:v10 glyph:@"safari.fill" enabled:1];

      [v4 addObject:v11];
    }
  }

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Remove_Saved_Curated_Collection_from_Library_Action_Row" value:@"localized string not found" table:0];
    v14 = @"Save_Curated_Collection__from_Library__Action_Row";
  }

  else
  {
    v15 = +[UIDevice currentDevice];
    v16 = [v15 userInterfaceIdiom];

    v17 = +[NSBundle mainBundle];
    v12 = v17;
    if (v16 == 5)
    {
      v13 = [v17 localizedStringForKey:@"Remove_Saved_Curated_Collection_Mac_Action_Row" value:@"localized string not found" table:0];
      v14 = @"Save_Curated_Collection_Mac_Action_Row";
    }

    else
    {
      v13 = [v17 localizedStringForKey:@"Remove_Saved_Curated_Collection_Action_Row" value:@"localized string not found" table:0];
      v14 = @"Save_Curated_Collection_Action_Row";
    }
  }

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:v14 value:@"localized string not found" table:0];

  v20 = [(CuratedCollectionActionManager *)self _savedItemWithSaveTitle:v19 unsaveTitle:v13];
  saveItem = self->_saveItem;
  self->_saveItem = v20;

  [v4 addObject:self->_saveItem];
  v22 = [MKPlaceCardActionItem alloc];
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"Share_Collection_Action_Row" value:@"localized string not found" table:0];
  v25 = [v22 initWithType:16 displayString:v24 glyph:@"square.and.arrow.up" enabled:1];

  if (v5)
  {
    [v25 setGlyphColor:v5];
  }

  [v4 addObject:v25];

  return v4;
}

@end