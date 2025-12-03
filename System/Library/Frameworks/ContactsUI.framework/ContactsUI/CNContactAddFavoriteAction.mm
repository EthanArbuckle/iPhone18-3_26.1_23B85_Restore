@interface CNContactAddFavoriteAction
- (CNContactAddFavoriteAction)initWithContact:(id)contact propertyItems:(id)items favorites:(id)favorites;
- (id)actionsController;
- (id)menuProviderForContextMenuInteraction:(id)interaction;
- (void)_saveFavorite:(id)favorite;
- (void)didSelectActionItem:(id)item;
- (void)favoritesEntryPicker:(id)picker didPickEntry:(id)entry dismissPicker:(BOOL)dismissPicker;
- (void)favoritesEntryPicker:(id)picker didUpdateWithMenu:(id)menu;
@end

@implementation CNContactAddFavoriteAction

- (void)_saveFavorite:(id)favorite
{
  v53[1] = *MEMORY[0x1E69E9840];
  favoriteCopy = favorite;
  selfCopy = self;
  favorites = [(CNContactAddFavoriteAction *)self favorites];
  contactProperty = [favoriteCopy contactProperty];
  contact = [contactProperty contact];
  contactProperty2 = [favoriteCopy contactProperty];
  v7 = [contactProperty2 key];
  contactProperty3 = [favoriteCopy contactProperty];
  identifier = [contactProperty3 identifier];
  actionType = [favoriteCopy actionType];
  bundleIdentifier = [favoriteCopy bundleIdentifier];
  v12 = [favorites entriesForContact:contact propertyKey:v7 labeledValueIdentifier:identifier actionType:actionType bundleIdentifier:bundleIdentifier];
  v13 = [v12 count];

  v14 = favorites;
  if (v13)
  {
    goto LABEL_30;
  }

  [favorites addEntry:favoriteCopy];
  [favorites save];
  actionType2 = [favoriteCopy actionType];
  v16 = *MEMORY[0x1E695C150];
  v17 = actionType2 | *MEMORY[0x1E695C150];
  v18 = v17 != 0;
  if (v17)
  {
    contactProperty2 = [favoriteCopy actionType];
    if (([contactProperty2 isEqual:v16] & 1) == 0)
    {

      goto LABEL_13;
    }
  }

  bundleIdentifier2 = [favoriteCopy bundleIdentifier];
  v20 = *MEMORY[0x1E695C140];
  if (!(bundleIdentifier2 | *MEMORY[0x1E695C140]))
  {
    if (v18)
    {
    }

    goto LABEL_12;
  }

  v21 = bundleIdentifier2;
  bundleIdentifier3 = [favoriteCopy bundleIdentifier];
  v23 = [bundleIdentifier3 isEqual:v20];

  if (!v18)
  {
    if (v23)
    {
      goto LABEL_12;
    }

LABEL_13:
    actionType3 = [favoriteCopy actionType];
    v26 = *MEMORY[0x1E695C1B8];
    v27 = MEMORY[0x1E695C118];
    v28 = actionType3 | *MEMORY[0x1E695C1B8];
    v29 = v28 != 0;
    if (v28 && ([favoriteCopy actionType], contactProperty2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(contactProperty2, "isEqual:", v26) & 1) == 0))
    {
    }

    else
    {
      bundleIdentifier4 = [favoriteCopy bundleIdentifier];
      v31 = *v27;
      if (!(bundleIdentifier4 | *v27))
      {
        if (v29)
        {
        }

        goto LABEL_23;
      }

      v32 = bundleIdentifier4;
      bundleIdentifier5 = [favoriteCopy bundleIdentifier];
      v34 = [bundleIdentifier5 isEqual:v31];

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
    actionType4 = [favoriteCopy actionType];
    v43 = (actionType4 | v16) != 0;
    if (actionType4 | v16)
    {
      contactProperty2 = [favoriteCopy actionType];
      if (([contactProperty2 isEqual:v16] & 1) == 0)
      {

        v35 = 0;
        goto LABEL_25;
      }
    }

    bundleIdentifier6 = [favoriteCopy bundleIdentifier];
    v45 = *v27;
    if (!(bundleIdentifier6 | *v27))
    {
      v36 = selfCopy;
      if (actionType4 | v16)
      {
      }

      goto LABEL_41;
    }

    v46 = bundleIdentifier6;
    bundleIdentifier7 = [favoriteCopy bundleIdentifier];
    v48 = [bundleIdentifier7 isEqual:v45];

    v36 = selfCopy;
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
  v36 = selfCopy;
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

  delegate = [(CNContactAction *)v36 delegate];
  [delegate actionDidFinish:v36];

LABEL_30:
}

- (void)favoritesEntryPicker:(id)picker didUpdateWithMenu:(id)menu
{
  menuCopy = menu;
  if ([menuCopy count])
  {
    delegate = [(CNContactAction *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(CNContactAction *)self delegate];
      [delegate2 action:self didUpdateWithMenu:menuCopy];
    }
  }
}

- (void)favoritesEntryPicker:(id)picker didPickEntry:(id)entry dismissPicker:(BOOL)dismissPicker
{
  dismissPickerCopy = dismissPicker;
  entryCopy = entry;
  if (dismissPickerCopy)
  {
    [(CNContactAddFavoriteAction *)self setFavoritesEntryPicker:0];
  }

  [(CNContactAddFavoriteAction *)self _saveFavorite:entryCopy];
}

- (void)didSelectActionItem:(id)item
{
  itemCopy = item;
  favoritesEntryPicker = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];
  [favoritesEntryPicker didSelectActionItem:itemCopy];
}

- (id)actionsController
{
  favoritesEntryPicker = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];

  if (!favoritesEntryPicker)
  {
    v4 = [CNUIFavoritesEntryPicker alloc];
    contact = [(CNContactAction *)self contact];
    v6 = [(CNUIFavoritesEntryPicker *)v4 initWithContact:contact];
    [(CNContactAddFavoriteAction *)self setFavoritesEntryPicker:v6];

    favoritesEntryPicker2 = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];
    [favoritesEntryPicker2 setDelegate:self];

    favoritesEntryPicker3 = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];
    [favoritesEntryPicker3 setUpActionsController];
  }

  favoritesEntryPicker4 = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];
  actionsController = [favoritesEntryPicker4 actionsController];

  return actionsController;
}

- (id)menuProviderForContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  v5 = [CNUIFavoritesEntryPicker alloc];
  contact = [(CNContactAction *)self contact];
  v7 = [(CNUIFavoritesEntryPicker *)v5 initWithContact:contact];
  [(CNContactAddFavoriteAction *)self setFavoritesEntryPicker:v7];

  favoritesEntryPicker = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];
  [favoritesEntryPicker setDelegate:self];

  favoritesEntryPicker2 = [(CNContactAddFavoriteAction *)self favoritesEntryPicker];
  v10 = [favoritesEntryPicker2 menuProviderForContextMenuInteraction:interactionCopy];

  return v10;
}

- (CNContactAddFavoriteAction)initWithContact:(id)contact propertyItems:(id)items favorites:(id)favorites
{
  favoritesCopy = favorites;
  v13.receiver = self;
  v13.super_class = CNContactAddFavoriteAction;
  v10 = [(CNPropertyAction *)&v13 initWithContact:contact propertyItems:items];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_favorites, favorites);
  }

  return v11;
}

@end