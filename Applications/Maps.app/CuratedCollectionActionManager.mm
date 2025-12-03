@interface CuratedCollectionActionManager
- (CuratedCollectionActionDelegate)delegate;
- (id)_glyphColor;
- (id)_savedItemWithSaveTitle:(id)title unsaveTitle:(id)unsaveTitle;
- (id)createRowActionsWithStyle:(unint64_t)style;
- (void)performAction:(id)action options:(id)options completion:(id)completion;
- (void)setCollectionIsSaved:(BOOL)saved;
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
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v4 = +[UIColor lightTextColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCollectionIsSaved:(BOOL)saved
{
  self->_collectionIsSaved = saved;
  [(MKPlaceCardActionItem *)self->_saveItem setSelected:?];
  saveItem = self->_saveItem;

  [(MKPlaceCardActionItem *)saveItem setEnabled:1];
}

- (void)performAction:(id)action options:(id)options completion:(id)completion
{
  optionsCopy = options;
  type = [action type];
  if (type > 12)
  {
    if (type == 13)
    {
      delegate = [(CuratedCollectionActionManager *)self delegate];
      [delegate didSelectOpenHomePage];
    }

    else
    {
      if (type != 16)
      {
        goto LABEL_11;
      }

      delegate = [optionsCopy objectForKeyedSubscript:@"view"];
      delegate2 = [(CuratedCollectionActionManager *)self delegate];
      [delegate2 didSelectShareFromView:delegate];
    }
  }

  else if (type == 5)
  {
    delegate = [(CuratedCollectionActionManager *)self delegate];
    [delegate didSelectSaveCollection];
  }

  else
  {
    if (type != 6)
    {
      goto LABEL_11;
    }

    delegate = [(CuratedCollectionActionManager *)self delegate];
    [delegate didSelectRemoveFromSavedCollection];
  }

LABEL_11:
}

- (id)_savedItemWithSaveTitle:(id)title unsaveTitle:(id)unsaveTitle
{
  unsaveTitleCopy = unsaveTitle;
  titleCopy = title;
  _glyphColor = [(CuratedCollectionActionManager *)self _glyphColor];
  v9 = [[MKPlaceCardActionItem alloc] initWithType:6 displayString:unsaveTitleCopy glyph:@"checkmark" enabled:1];

  if (_glyphColor)
  {
    [v9 setGlyphColor:_glyphColor];
  }

  v10 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v11 = @"square.and.arrow.down.fill";
  if (v10)
  {
    v11 = @"plus";
  }

  v12 = v11;
  v13 = [[MKPlaceCardActionItem alloc] initWithType:5 displayString:titleCopy glyph:v12 enabled:1];

  [v13 setSelectedItem:v9];
  [v13 setSelected:{-[CuratedCollectionActionManager collectionIsSaved](self, "collectionIsSaved")}];
  if (_glyphColor)
  {
    [v13 setGlyphColor:_glyphColor];
  }

  return v13;
}

- (id)createRowActionsWithStyle:(unint64_t)style
{
  v4 = objc_alloc_init(NSMutableArray);
  _glyphColor = [(CuratedCollectionActionManager *)self _glyphColor];
  if (self->_hasHomePage)
  {
    v6 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v6 userInterfaceIdiom];

    if (userInterfaceIdiom != 5)
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
    userInterfaceIdiom2 = [v15 userInterfaceIdiom];

    v17 = +[NSBundle mainBundle];
    v12 = v17;
    if (userInterfaceIdiom2 == 5)
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

  if (_glyphColor)
  {
    [v25 setGlyphColor:_glyphColor];
  }

  [v4 addObject:v25];

  return v4;
}

@end