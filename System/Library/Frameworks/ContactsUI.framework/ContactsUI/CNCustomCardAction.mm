@interface CNCustomCardAction
+ (id)groupForActionGivenPlacement:(int64_t)placement inContactContentViewController:(id)controller;
+ (int64_t)placementForGroup:(id)group inContactContentViewController:(id)controller;
- (BOOL)isValidForContact:(id)contact;
- (BOOL)matchesTarget:(id)target selector:(SEL)selector group:(id)group inContactContentViewController:(id)controller;
- (CNCustomCardAction)initWithTitle:(id)title targetActionWrapper:(id)wrapper contactIdentifier:(id)identifier placement:(int64_t)placement isDestructive:(BOOL)destructive menuProvider:(id)provider;
@end

@implementation CNCustomCardAction

- (BOOL)matchesTarget:(id)target selector:(SEL)selector group:(id)group inContactContentViewController:(id)controller
{
  targetCopy = target;
  controllerCopy = controller;
  groupCopy = group;
  v13 = [objc_opt_class() placementForGroup:groupCopy inContactContentViewController:controllerCopy];

  if (v13 == [(CNCustomCardAction *)self placement])
  {
    targetActionWrapper = [(CNCustomCardAction *)self targetActionWrapper];
    target = [targetActionWrapper target];
    if (target == targetCopy)
    {
      targetActionWrapper2 = [(CNCustomCardAction *)self targetActionWrapper];
      v16 = [targetActionWrapper2 action] == selector;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isValidForContact:(id)contact
{
  identifier = [contact identifier];
  contactIdentifier = [(CNCustomCardAction *)self contactIdentifier];
  v6 = [identifier isEqualToString:contactIdentifier];

  return v6;
}

- (CNCustomCardAction)initWithTitle:(id)title targetActionWrapper:(id)wrapper contactIdentifier:(id)identifier placement:(int64_t)placement isDestructive:(BOOL)destructive menuProvider:(id)provider
{
  titleCopy = title;
  wrapperCopy = wrapper;
  identifierCopy = identifier;
  providerCopy = provider;
  if (!placement)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNCustomCardAction.m" lineNumber:42 description:@"placement should not be undefined"];
  }

  v27.receiver = self;
  v27.super_class = CNCustomCardAction;
  v19 = [(CNCustomCardAction *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v20->_targetActionWrapper, wrapper);
    objc_storeStrong(&v20->_contactIdentifier, identifier);
    v20->_placement = placement;
    v20->_destructive = destructive;
    v21 = _Block_copy(providerCopy);
    menuProvider = v20->_menuProvider;
    v20->_menuProvider = v21;

    v23 = v20;
  }

  return v20;
}

+ (id)groupForActionGivenPlacement:(int64_t)placement inContactContentViewController:(id)controller
{
  controllerCopy = controller;
  v6 = controllerCopy;
  switch(placement)
  {
    case 3:
      cardFooterGroup = [controllerCopy cardFooterGroup];
      goto LABEL_7;
    case 2:
      cardFooterGroup = [controllerCopy cardBottomGroup];
      goto LABEL_7;
    case 1:
      cardFooterGroup = [controllerCopy cardTopGroup];
LABEL_7:
      v8 = cardFooterGroup;
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

+ (int64_t)placementForGroup:(id)group inContactContentViewController:(id)controller
{
  groupCopy = group;
  controllerCopy = controller;
  cardTopGroup = [controllerCopy cardTopGroup];

  if (cardTopGroup == groupCopy)
  {
    v10 = 1;
  }

  else
  {
    cardBottomGroup = [controllerCopy cardBottomGroup];

    if (cardBottomGroup == groupCopy)
    {
      v10 = 2;
    }

    else
    {
      cardFooterGroup = [controllerCopy cardFooterGroup];

      if (cardFooterGroup == groupCopy)
      {
        v10 = 3;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

@end