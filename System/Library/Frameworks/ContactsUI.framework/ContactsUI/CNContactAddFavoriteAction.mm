@interface CNContactAddFavoriteAction
- (CNContactAddFavoriteAction)initWithContact:(id)a3 propertyItems:(id)a4 favorites:(id)a5;
- (id)actionsController;
- (id)menuProviderForContextMenuInteraction:(id)a3;
- (void)_saveFavorite:(id)a3;
- (void)didSelectActionItem:(id)a3;
- (void)favoritesEntryPicker:(id)a3 didPickEntry:(id)a4 dismissPicker:(BOOL)a5;
- (void)favoritesEntryPicker:(id)a3 didUpdateWithMenu:(id)a4;
@end

@implementation CNContactAddFavoriteAction

- (void)_saveFavorite:(id)a3
{
  v53[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49 = self;
  v5 = [(CNContactAddFavoriteAction *)self favorites];
  v51 = [v4 contactProperty];
  v50 = [v51 contact];
  v6 = [v4 contactProperty];
  v7 = [v6 key];
  v8 = [v4 contactProperty];
  v9 = [v8 identifier];
  v10 = [v4 actionType];
  v11 = [v4 bundleIdentifier];
  v12 = [v5 entriesForContact:v50 propertyKey:v7 labeledValueIdentifier:v9 actionType:v10 bundleIdentifier:v11];
  v13 = [v12 count];

  v14 = v5;
  if (v13)
  {
    goto LABEL_30;
  }

  [v5 addEntry:v4];
  [v5 save];
  v15 = [v4 actionType];
  v16 = *MEMORY[0x1E695C150];
  v17 = v15 | *MEMORY[0x1E695C150];
  v18 = v17 != 0;
  if (v17)
  {
    v6 = [v4 actionType];
    if (([v6 isEqual:v16] & 1) == 0)
    {

      goto LABEL_13;
    }
  }

  v19 = [v4 bundleIdentifier];
  v20 = *MEMORY[0x1E695C140];
  if (!(v19 | *MEMORY[0x1E695C140]))
  {
    if (v18)
    {
    }

    goto LABEL_12;
  }

  v21 = v19;
  v22 = [v4 bundleIdentifier];
  v23 = [v22 isEqual:v20];

  if (!v18)
  {
    if (v23)
    {
      goto LABEL_12;
    }

LABEL_13:
    v25 = [v4 actionType];
    v26 = *MEMORY[0x1E695C1B8];
    v27 = MEMORY[0x1E695C118];
    v28 = v25 | *MEMORY[0x1E695C1B8];
    v29 = v28 != 0;
    if (v28 && ([v4 actionType], v6 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v6, "isEqual:", v26) & 1) == 0))
    {
    }

    else
    {
      v30 = [v4 bundleIdentifier];
      v31 = *v27;
      if (!(v30 | *v27))
      {
        if (v29)
        {
        }

        goto LABEL_23;
      }

      v32 = v30;
      v33 = [v4 bundleIdentifier];
      v34 = [v33 isEqual:v31];

      if (v29)
      {

        if ((v34 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_23:
        v24 = CNUIContactActionDestinationTypeFaceTime;
        goto LABEL_24;
      }

      if (v34)
      {
        goto LABEL_23;
      }
    }

LABEL_31:
    v42 = [v4 actionType];
    v43 = (v42 | v16) != 0;
    if (v42 | v16)
    {
      v6 = [v4 actionType];
      if (([v6 isEqual:v16] & 1) == 0)
      {

        v35 = 0;
        goto LABEL_25;
      }
    }

    v44 = [v4 bundleIdentifier];
    v45 = *v27;
    if (!(v44 | *v27))
    {
      v36 = v49;
      if (v42 | v16)
      {
      }

      goto LABEL_41;
    }

    v46 = v44;
    v47 = [v4 bundleIdentifier];
    v48 = [v47 isEqual:v45];

    v36 = v49;
    if (v43)
    {

      if ((v48 & 1) == 0)
      {
LABEL_38:
        v35 = 0;
        goto LABEL_26;
      }
    }

    else if (!v48)
    {
      goto LABEL_38;
    }

LABEL_41:
    v35 = CNUIContactActionDestinationTypeFaceTimeAudio;
    goto LABEL_26;
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_12:
  v24 = CNUIContactActionDestinationTypePhoneNumber;
LABEL_24:
  v35 = v24;
LABEL_25:
  v36 = v49;
LABEL_26:
  v37 = +[CNUIDataCollector sharedCollector];
  v38 = v37;
  v39 = CNUIContactActionTypeAddToFavorites;
  if (v35)
  {
    v52 = CNUIContactActionDestinationType;
    v53[0] = v35;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    [v38 logContactActionType:v39 attributes:v40];
  }

  else
  {
    [v37 logContactActionType:CNUIContactActionTypeAddToFavorites attributes:0];
  }

  v41 = [(CNContactAction *)v36 delegate];
  [v41 actionDidFinish:v36];

LABEL_30:
}

- (void)favoritesEntryPicker:(id)a3 didUpdateWithMenu:(id)a4
{
  v8 = a4;
  if ([v8 count])
  {
    v5 = [(CNContactAction *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(CNContactAction *)self delegate];
      [v7 action:self didUpdateWithMenu:v8];
    }
  }
}

- (void)favoritesEntryPicker:(id)a3 didPickEntry:(id)a4 dismissPicker:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  if (v5)
  {
    [(CNContactAddFavoriteAction *)self setFavoritesEntryPicker:0];
  }

  [(CNContactAddFavoriteAction *)self _saveFavorite:v7];
}

- (void)didSelectActionItem:(id)a3
{
  v4 = a3;
  v5 = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];
  [v5 didSelectActionItem:v4];
}

- (id)actionsController
{
  v3 = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];

  if (!v3)
  {
    v4 = [CNUIFavoritesEntryPicker alloc];
    v5 = [(CNContactAction *)self contact];
    v6 = [(CNUIFavoritesEntryPicker *)v4 initWithContact:v5];
    [(CNContactAddFavoriteAction *)self setFavoritesEntryPicker:v6];

    v7 = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];
    [v7 setDelegate:self];

    v8 = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];
    [v8 setUpActionsController];
  }

  v9 = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];
  v10 = [v9 actionsController];

  return v10;
}

- (id)menuProviderForContextMenuInteraction:(id)a3
{
  v4 = a3;
  v5 = [CNUIFavoritesEntryPicker alloc];
  v6 = [(CNContactAction *)self contact];
  v7 = [(CNUIFavoritesEntryPicker *)v5 initWithContact:v6];
  [(CNContactAddFavoriteAction *)self setFavoritesEntryPicker:v7];

  v8 = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];
  [v8 setDelegate:self];

  v9 = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];
  v10 = [v9 menuProviderForContextMenuInteraction:v4];

  return v10;
}

- (CNContactAddFavoriteAction)initWithContact:(id)a3 propertyItems:(id)a4 favorites:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = CNContactAddFavoriteAction;
  v10 = [(CNPropertyAction *)&v13 initWithContact:a3 propertyItems:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_favorites, a5);
  }

  return v11;
}

@end