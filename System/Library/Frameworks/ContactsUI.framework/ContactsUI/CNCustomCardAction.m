@interface CNCustomCardAction
+ (id)groupForActionGivenPlacement:(int64_t)a3 inContactContentViewController:(id)a4;
+ (int64_t)placementForGroup:(id)a3 inContactContentViewController:(id)a4;
- (BOOL)isValidForContact:(id)a3;
- (BOOL)matchesTarget:(id)a3 selector:(SEL)a4 group:(id)a5 inContactContentViewController:(id)a6;
- (CNCustomCardAction)initWithTitle:(id)a3 targetActionWrapper:(id)a4 contactIdentifier:(id)a5 placement:(int64_t)a6 isDestructive:(BOOL)a7 menuProvider:(id)a8;
@end

@implementation CNCustomCardAction

- (BOOL)matchesTarget:(id)a3 selector:(SEL)a4 group:(id)a5 inContactContentViewController:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = [objc_opt_class() placementForGroup:v12 inContactContentViewController:v11];

  if (v13 == [(CNCustomCardAction *)self placement])
  {
    v14 = [(CNCustomCardAction *)self targetActionWrapper];
    v15 = [v14 target];
    if (v15 == v10)
    {
      v17 = [(CNCustomCardAction *)self targetActionWrapper];
      v16 = [v17 action] == a4;
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

- (BOOL)isValidForContact:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(CNCustomCardAction *)self contactIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (CNCustomCardAction)initWithTitle:(id)a3 targetActionWrapper:(id)a4 contactIdentifier:(id)a5 placement:(int64_t)a6 isDestructive:(BOOL)a7 menuProvider:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  if (!a6)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"CNCustomCardAction.m" lineNumber:42 description:@"placement should not be undefined"];
  }

  v27.receiver = self;
  v27.super_class = CNCustomCardAction;
  v19 = [(CNCustomCardAction *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, a3);
    objc_storeStrong(&v20->_targetActionWrapper, a4);
    objc_storeStrong(&v20->_contactIdentifier, a5);
    v20->_placement = a6;
    v20->_destructive = a7;
    v21 = _Block_copy(v18);
    menuProvider = v20->_menuProvider;
    v20->_menuProvider = v21;

    v23 = v20;
  }

  return v20;
}

+ (id)groupForActionGivenPlacement:(int64_t)a3 inContactContentViewController:(id)a4
{
  v5 = a4;
  v6 = v5;
  switch(a3)
  {
    case 3:
      v7 = [v5 cardFooterGroup];
      goto LABEL_7;
    case 2:
      v7 = [v5 cardBottomGroup];
      goto LABEL_7;
    case 1:
      v7 = [v5 cardTopGroup];
LABEL_7:
      v8 = v7;
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

+ (int64_t)placementForGroup:(id)a3 inContactContentViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 cardTopGroup];

  if (v7 == v5)
  {
    v10 = 1;
  }

  else
  {
    v8 = [v6 cardBottomGroup];

    if (v8 == v5)
    {
      v10 = 2;
    }

    else
    {
      v9 = [v6 cardFooterGroup];

      if (v9 == v5)
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