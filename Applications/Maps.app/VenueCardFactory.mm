@interface VenueCardFactory
- (VenueCardFactory)initWithChangeNotifier:(id)notifier;
- (VenueCardFactoryDelegate)delegate;
- (id)existingViewControllerForCardItem:(id)item;
- (id)viewControllerForCardItem:(id)item;
- (void)cardStack:(id)stack didChangeStack:(id)changeStack;
@end

@implementation VenueCardFactory

- (VenueCardFactoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cardStack:(id)stack didChangeStack:(id)changeStack
{
  changeStackCopy = changeStack;
  v6 = +[NSMutableSet set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  keyEnumerator = [(NSMapTable *)self->_cardItemToViewControllerMapping keyEnumerator];
  v8 = [keyEnumerator countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (([changeStackCopy containsObject:v12] & 1) == 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [keyEnumerator countByEnumeratingWithState:&v22 objects:v27 count:16];
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

- (id)existingViewControllerForCardItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMapTable *)self->_cardItemToViewControllerMapping objectForKey:itemCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if ([itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueRoutePlanningCardItem])
  {
    delegate = [(VenueCardFactory *)self delegate];
    v9 = [delegate routePlanningOverviewViewControllerForCardFactory:self];
LABEL_21:
    v7 = v9;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    delegate = [(NSMapTable *)self->_cardItemToViewControllerMapping keyEnumerator];
    v10 = [delegate countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(delegate);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = itemCopy;
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
            venueCardID = [v14 venueCardID];

            if (venueCardID)
            {
              goto LABEL_20;
            }
          }

          else
          {
          }
        }

        v11 = [delegate countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (id)viewControllerForCardItem:(id)item
{
  itemCopy = item;
  if (![itemCopy isVenueItem])
  {
    v6 = 0;
    goto LABEL_19;
  }

  v5 = [(VenueCardFactory *)self existingViewControllerForCardItem:itemCopy];
  if (!v5)
  {
    if ([itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenuePlaceCardItem])
    {
      v5 = objc_alloc_init(PlaceCardViewController);
LABEL_17:
      [(NSMapTable *)self->_cardItemToViewControllerMapping setObject:v5 forKey:itemCopy];
      goto LABEL_18;
    }

    if ([itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem])
    {
      delegate2 = itemCopy;
      v8 = [[VenueCategoryViewController alloc] initWithCategoryCardItem:delegate2];
    }

    else if ([itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueAutoCompleteCategoryCardItem])
    {
      delegate2 = itemCopy;
      v8 = [[VenueCategoryViewController alloc] initWithAutoCompleteCategoryCardItem:delegate2];
    }

    else
    {
      if ([itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueClusterCardItem])
      {
        venueLabelMarker = [itemCopy venueLabelMarker];
        isCluster = [venueLabelMarker isCluster];

        if (isCluster)
        {
          delegate = [(VenueCardFactory *)self delegate];
          delegate2 = [delegate shareDelegateForCardFactory:self];

          v5 = [[SimpleResultsViewController alloc] initWithShareDelegate:delegate2];
          [(PlaceCardViewController *)v5 setIsPresentingVenueClusterResults:1];
LABEL_16:

          goto LABEL_17;
        }
      }

      if (![itemCopy conformsToProtocol:&OBJC_PROTOCOL___VenueRoutePlanningCardItem])
      {
        v5 = 0;
        goto LABEL_17;
      }

      delegate2 = [(VenueCardFactory *)self delegate];
      v8 = [delegate2 routePlanningOverviewViewControllerForCardFactory:self];
    }

    v5 = v8;
    goto LABEL_16;
  }

LABEL_18:
  v6 = v5;

LABEL_19:

  return v6;
}

- (VenueCardFactory)initWithChangeNotifier:(id)notifier
{
  notifierCopy = notifier;
  v10.receiver = self;
  v10.super_class = VenueCardFactory;
  v5 = [(VenueCardFactory *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_changeNotifier, notifierCopy);
    v7 = +[NSMapTable weakToStrongObjectsMapTable];
    cardItemToViewControllerMapping = v6->_cardItemToViewControllerMapping;
    v6->_cardItemToViewControllerMapping = v7;
  }

  return v6;
}

@end