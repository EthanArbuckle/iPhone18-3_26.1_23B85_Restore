@interface SCATRecipeLongPressController
- (id)actionStringForLongPress:(BOOL)press;
- (id)controllerForLongPress:(BOOL)press;
@end

@implementation SCATRecipeLongPressController

- (id)actionStringForLongPress:(BOOL)press
{
  pressCopy = press;
  mapping = [(SCATRecipeLongPressController *)self mapping];
  v5 = mapping;
  if (pressCopy)
  {
    longPressAction = [mapping longPressAction];

    if (!longPressAction)
    {
      goto LABEL_7;
    }

LABEL_5:
    v7 = AXSwitchRecipeMappingNameForAction();

    goto LABEL_8;
  }

  longPressAction = [mapping action];

  if (longPressAction)
  {
    goto LABEL_5;
  }

  _AXAssert();
LABEL_7:
  v7 = AXParameterizedLocalizedString();
LABEL_8:

  return v7;
}

- (id)controllerForLongPress:(BOOL)press
{
  pressCopy = press;
  v5 = objc_alloc_init(SCATRecipeActionsController);
  v6 = AXParameterizedLocalizedString();
  [(SCATRecipeActionsController *)v5 setTitle:v6];

  recipe = [(SCATRecipeLongPressController *)self recipe];
  [(SCATRecipeActionsController *)v5 setRecipe:recipe];

  mapping = [(SCATRecipeLongPressController *)self mapping];
  [(SCATRecipeActionsController *)v5 setMapping:mapping];

  [(SCATRecipeActionsController *)v5 setForLongPress:pressCopy];

  return v5;
}

@end