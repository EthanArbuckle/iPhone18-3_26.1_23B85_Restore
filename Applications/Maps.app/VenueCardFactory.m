@interface VenueCardFactory
- (VenueCardFactory)initWithChangeNotifier:(id)a3;
- (VenueCardFactoryDelegate)delegate;
- (id)existingViewControllerForCardItem:(id)a3;
- (id)viewControllerForCardItem:(id)a3;
- (void)cardStack:(id)a3 didChangeStack:(id)a4;
@end

@implementation VenueCardFactory

- (VenueCardFactoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cardStack:(id)a3 didChangeStack:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableSet set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [(NSMapTable *)self->_cardItemToViewControllerMapping keyEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (([v5 containsObject:v12] & 1) == 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(NSMapTable *)self->_cardItemToViewControllerMapping removeObjectForKey:*(*(&v18 + 1) + 8 * j), v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (id)existingViewControllerForCardItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_cardItemToViewControllerMapping objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if ([v4 conformsToProtocol:&OBJC_PROTOCOL___VenueRoutePlanningCardItem])
  {
    v8 = [(VenueCardFactory *)self delegate];
    v9 = [v8 routePlanningOverviewViewControllerForCardFactory:self];
LABEL_21:
    v7 = v9;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [(NSMapTable *)self->_cardItemToViewControllerMapping keyEnumerator];
    v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = v4;
          v16 = v15;
          if (v14 == v15)
          {

LABEL_20:
            v9 = [(NSMapTable *)self->_cardItemToViewControllerMapping objectForKey:v14];
            goto LABEL_21;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && (v17 = [v14 venueCardID], v17 == objc_msgSend(v16, "venueCardID")))
          {
            v18 = [v14 venueCardID];

            if (v18)
            {
              goto LABEL_20;
            }
          }

          else
          {
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

  return v7;
}

- (id)viewControllerForCardItem:(id)a3
{
  v4 = a3;
  if (![v4 isVenueItem])
  {
    v6 = 0;
    goto LABEL_19;
  }

  v5 = [(VenueCardFactory *)self existingViewControllerForCardItem:v4];
  if (!v5)
  {
    if ([v4 conformsToProtocol:&OBJC_PROTOCOL___VenuePlaceCardItem])
    {
      v5 = objc_alloc_init(PlaceCardViewController);
LABEL_17:
      [(NSMapTable *)self->_cardItemToViewControllerMapping setObject:v5 forKey:v4];
      goto LABEL_18;
    }

    if ([v4 conformsToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem])
    {
      v7 = v4;
      v8 = [[VenueCategoryViewController alloc] initWithCategoryCardItem:v7];
    }

    else if ([v4 conformsToProtocol:&OBJC_PROTOCOL___VenueAutoCompleteCategoryCardItem])
    {
      v7 = v4;
      v8 = [[VenueCategoryViewController alloc] initWithAutoCompleteCategoryCardItem:v7];
    }

    else
    {
      if ([v4 conformsToProtocol:&OBJC_PROTOCOL___VenueClusterCardItem])
      {
        v9 = [v4 venueLabelMarker];
        v10 = [v9 isCluster];

        if (v10)
        {
          v11 = [(VenueCardFactory *)self delegate];
          v7 = [v11 shareDelegateForCardFactory:self];

          v5 = [[SimpleResultsViewController alloc] initWithShareDelegate:v7];
          [(PlaceCardViewController *)v5 setIsPresentingVenueClusterResults:1];
LABEL_16:

          goto LABEL_17;
        }
      }

      if (![v4 conformsToProtocol:&OBJC_PROTOCOL___VenueRoutePlanningCardItem])
      {
        v5 = 0;
        goto LABEL_17;
      }

      v7 = [(VenueCardFactory *)self delegate];
      v8 = [v7 routePlanningOverviewViewControllerForCardFactory:self];
    }

    v5 = v8;
    goto LABEL_16;
  }

LABEL_18:
  v6 = v5;

LABEL_19:

  return v6;
}

- (VenueCardFactory)initWithChangeNotifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VenueCardFactory;
  v5 = [(VenueCardFactory *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_changeNotifier, v4);
    v7 = +[NSMapTable weakToStrongObjectsMapTable];
    cardItemToViewControllerMapping = v6->_cardItemToViewControllerMapping;
    v6->_cardItemToViewControllerMapping = v7;
  }

  return v6;
}

@end