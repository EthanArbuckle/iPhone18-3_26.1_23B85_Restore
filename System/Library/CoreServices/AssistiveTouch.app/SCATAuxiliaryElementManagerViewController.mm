@interface SCATAuxiliaryElementManagerViewController
- (BOOL)_elementContainsAllSubviewsOfView:(id)view view:(id)a4;
- (void)loadView;
- (void)updateCustomFocusingViewStateForViewsWithElement:(id)element;
- (void)viewDidLoad;
@end

@implementation SCATAuxiliaryElementManagerViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [v3 setAutoresizingMask:18];
  [(SCATAuxiliaryElementManagerViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SCATAuxiliaryElementManagerViewController;
  [(SCATAuxiliaryElementManagerViewController *)&v3 viewDidLoad];
  [(SCATAuxiliaryElementManagerViewController *)self updateCustomFocusingViewStateForViewsWithElement:0];
}

- (void)updateCustomFocusingViewStateForViewsWithElement:(id)element
{
  elementCopy = element;
  if ([elementCopy isGroup])
  {
    parentGroup = elementCopy;
  }

  else
  {
    parentGroup = [elementCopy parentGroup];
  }

  v6 = parentGroup;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  viewsRequiringStateUpdate = [(SCATAuxiliaryElementManagerViewController *)self viewsRequiringStateUpdate];
  v8 = [viewsRequiringStateUpdate countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(viewsRequiringStateUpdate);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        isGroup = [elementCopy isGroup];
        if (isGroup)
        {
          LOBYTE(isGroup) = [(SCATAuxiliaryElementManagerViewController *)self _elementContainsAllSubviewsOfView:elementCopy view:v12];
        }

        v14 = 1;
        if (v12 != elementCopy && (isGroup & 1) == 0)
        {
          v15 = [v6 containsObject:v12];
          if ((v15 & 1) != 0 || (sub_1000A8484(v15, v6, v12) & 1) != 0 || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 assistiveTouchGroupElementsEnabled], v16, (v17 & 1) == 0))
          {
            v14 = 2;
          }

          else
          {
            v14 = 0;
          }
        }

        [v12 updateFocusState:v14];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [viewsRequiringStateUpdate countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (BOOL)_elementContainsAllSubviewsOfView:(id)view view:(id)a4
{
  viewCopy = view;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = viewCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![*(*(&v14 + 1) + 8 * i) isDescendantOfView:{v6, v14}])
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

@end