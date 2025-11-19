@interface VenuesStack
+ (id)cards:(id)a3 lastCardConformingToProtocol:(id)a4;
+ (id)cardsFromArray:(id)a3 passingTest:(id)a4 ascending:(BOOL)a5;
- (VenuesStack)initWithCardDealer:(id)a3;
- (VenuesStackDataSource)dataSource;
- (VenuesStackDelegate)delegate;
- (id)lastCardConformingToProtocol:(id)a3;
- (unint64_t)pushVenueCardItem:(id)a3 withSource:(unint64_t)a4;
- (unint64_t)pushVenueCardItem:(id)a3 withSource:(unint64_t)a4 savePlaceCardSelectionState:(BOOL)a5;
- (unint64_t)venueIdForCurrentCardStack;
- (void)_notifyObserversStackDidChange;
- (void)clearStack;
- (void)popVenueCard:(id)a3;
@end

@implementation VenuesStack

- (VenuesStackDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VenuesStackDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_notifyObserversStackDidChange
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_stackObservers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) cardStack:self didChangeStack:{self->_cardStack, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)lastCardConformingToProtocol:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() cards:self->_cardStack lastCardConformingToProtocol:v4];

  return v5;
}

- (unint64_t)venueIdForCurrentCardStack
{
  v2 = [(NSArray *)self->_cardStack firstObject];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 venueID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearStack
{
  [(NSMapTable *)self->_cardToPreviousStateMapping removeAllObjects];
  cardStack = self->_cardStack;
  self->_cardStack = &__NSArray0__struct;

  [(VenuesStack *)self _notifyObserversStackDidChange];
}

- (void)popVenueCard:(id)a3
{
  v12 = a3;
  v4 = [(NSArray *)self->_cardStack lastObject];
  if (v4)
  {
    v5 = [(NSArray *)self->_cardStack count];
    v6 = v5 - 1;
    if (v5 == 1)
    {
      v8 = self->_stateFromBeforeTheStack;
      stateFromBeforeTheStack = self->_stateFromBeforeTheStack;
      self->_stateFromBeforeTheStack = 0;

      v7 = 0;
    }

    else
    {
      v7 = [(NSArray *)self->_cardStack objectAtIndexedSubscript:v5 - 2];
      v8 = [(NSMapTable *)self->_cardToPreviousStateMapping objectForKey:v7];
      [(NSMapTable *)self->_cardToPreviousStateMapping removeObjectForKey:v7];
    }

    v10 = [(NSArray *)self->_cardStack subarrayWithRange:0, v6];
    cardStack = self->_cardStack;
    self->_cardStack = v10;

    [(VenuesStack *)self _notifyObserversStackDidChange];
    if (v12)
    {
      v12[2](v12, v4, v7, v8);
    }
  }

  else if (v12)
  {
    v12[2](v12, 0, 0, 0);
  }
}

- (unint64_t)pushVenueCardItem:(id)a3 withSource:(unint64_t)a4 savePlaceCardSelectionState:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(VenueCardDealer *)self->_dealer newHandFromExistingHand:self->_cardStack nextTopCard:v8 source:a4];
  if (v9 == self->_cardStack)
  {
    v13 = 1;
  }

  else
  {
    v10 = [(VenueCardDealer *)self->_dealer existingCardForHand:v9 cardItem:v8];
    if (v10)
    {
      v11 = [(NSArray *)v9 indexOfObject:v10];
      if (v11)
      {
        v12 = [(NSArray *)v9 objectAtIndexedSubscript:v11 - 1];
      }

      else
      {
        v12 = 0;
      }

      v14 = [(VenuesStack *)self dataSource];
      v15 = [v14 stateForNewCardItem:v10 previousItemInStack:v12 savePlaceCardSelectionState:v5];

      v16 = [(NSArray *)self->_cardStack lastObject];
      v28 = v12;
      if ([(NSArray *)v9 containsObject:v16])
      {
        [(NSMapTable *)self->_cardToPreviousStateMapping setObject:v15 forKey:v16];
      }

      else if (![(NSArray *)self->_cardStack count])
      {
        objc_storeStrong(&self->_stateFromBeforeTheStack, v15);
      }

      v17 = [NSMutableArray arrayWithArray:self->_cardStack, v15];
      [v17 removeObjectsInArray:v9];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [(NSMapTable *)self->_cardToPreviousStateMapping removeObjectForKey:*(*(&v29 + 1) + 8 * i)];
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v20);
      }

      v23 = [(NSArray *)v9 copy];
      cardStack = self->_cardStack;
      self->_cardStack = v23;

      if ([v18 count] && (-[VenuesStack delegate](self, "delegate"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "venuesStack:reorderedStackAndRemovedCardItems:", self, v18), v25, a4 == 1))
      {
        v13 = 3;
      }

      else
      {
        [(VenuesStack *)self _notifyObserversStackDidChange];
        v13 = 2;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)pushVenueCardItem:(id)a3 withSource:(unint64_t)a4
{
  v6 = a3;
  v7 = -[VenuesStack pushVenueCardItem:withSource:savePlaceCardSelectionState:](self, "pushVenueCardItem:withSource:savePlaceCardSelectionState:", v6, a4, [v6 conformsToProtocol:&OBJC_PROTOCOL___VenuePlaceCardItem]);

  return v7;
}

- (VenuesStack)initWithCardDealer:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = VenuesStack;
  v6 = [(VenuesStack *)&v15 init];
  v7 = v6;
  if (v6)
  {
    cardStack = v6->_cardStack;
    v6->_cardStack = &__NSArray0__struct;

    v9 = +[NSMapTable weakToStrongObjectsMapTable];
    cardToPreviousStateMapping = v7->_cardToPreviousStateMapping;
    v7->_cardToPreviousStateMapping = v9;

    objc_storeStrong(&v7->_dealer, a3);
    v11 = +[NSHashTable weakObjectsHashTable];
    stackObservers = v7->_stackObservers;
    v7->_stackObservers = v11;

    stateFromBeforeTheStack = v7->_stateFromBeforeTheStack;
    v7->_stateFromBeforeTheStack = 0;

    objc_storeWeak(&v7->_dataSource, 0);
  }

  return v7;
}

+ (id)cardsFromArray:(id)a3 passingTest:(id)a4 ascending:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100D12B70;
  v20 = sub_100D12B80;
  v21 = 0;
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100D12B88;
  v13[3] = &unk_101651560;
  v10 = v8;
  v14 = v10;
  v15 = &v16;
  [v7 enumerateObjectsWithOptions:v9 usingBlock:v13];
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

+ (id)cards:(id)a3 lastCardConformingToProtocol:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D12CD4;
  v9[3] = &unk_101651538;
  v10 = a4;
  v6 = v10;
  v7 = [a1 cardsFromArray:a3 passingTest:v9 ascending:0];

  return v7;
}

@end