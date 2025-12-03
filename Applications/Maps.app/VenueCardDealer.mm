@interface VenueCardDealer
- (id)existingCardForHand:(id)hand cardItem:(id)item;
- (id)newHandFromExistingHand:(id)hand nextTopCard:(id)card source:(unint64_t)source;
- (unint64_t)_indexOfFirstNonPlaceCardInHand:(id)hand;
- (unint64_t)_venueIdForHand:(id)hand;
@end

@implementation VenueCardDealer

- (unint64_t)_indexOfFirstNonPlaceCardInHand:(id)hand
{
  handCopy = hand;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005C3780;
  v6[3] = &unk_101622E88;
  v6[4] = &v7;
  [handCopy enumerateObjectsWithOptions:2 usingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (unint64_t)_venueIdForHand:(id)hand
{
  firstObject = [hand firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    venueID = [firstObject venueID];
  }

  else
  {
    venueID = 0;
  }

  return venueID;
}

- (id)existingCardForHand:(id)hand cardItem:(id)item
{
  itemCopy = item;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  reverseObjectEnumerator = [hand reverseObjectEnumerator];
  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = itemCopy;
        v12 = v11;
        if (v10 == v11)
        {

LABEL_16:
          v7 = v10;
          goto LABEL_17;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (v13 = [v10 venueCardID], v13 == objc_msgSend(v12, "venueCardID")))
        {
          venueCardID = [v10 venueCardID];

          if (venueCardID)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v7;
}

- (id)newHandFromExistingHand:(id)hand nextTopCard:(id)card source:(unint64_t)source
{
  handCopy = hand;
  cardCopy = card;
  if ([cardCopy isVenueItem])
  {
    v10 = [(VenueCardDealer *)self existingCardForHand:handCopy cardItem:cardCopy];
    if (v10 && (v11 = [handCopy indexOfObject:v10], v11 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v18 = [handCopy subarrayWithRange:{0, v11 + 1}];
    }

    else
    {
      if ([handCopy count])
      {
        v12 = [(VenueCardDealer *)self _venueIdForHand:handCopy];
        if (v12 == [cardCopy venueID])
        {
          if (source != 1 || ![cardCopy conformsToProtocol:&OBJC_PROTOCOL___VenuePlaceCardItem] || (objc_msgSend(handCopy, "lastObject"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "conformsToProtocol:", &OBJC_PROTOCOL___VenuePlaceCardItem), v13, !v14))
          {
            v18 = [handCopy arrayByAddingObject:cardCopy];
            goto LABEL_17;
          }

          v15 = [(VenueCardDealer *)self _indexOfFirstNonPlaceCardInHand:handCopy];
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = [handCopy subarrayWithRange:{0, v15 + 1}];
            v17 = [v20 arrayByAddingObject:cardCopy];

            goto LABEL_18;
          }

          v21 = cardCopy;
          v16 = &v21;
        }

        else
        {
          v22 = cardCopy;
          v16 = &v22;
        }
      }

      else
      {
        v23 = cardCopy;
        v16 = &v23;
      }

      v18 = [NSArray arrayWithObjects:v16 count:1, v21, v22, v23];
    }

LABEL_17:
    v17 = v18;
LABEL_18:

    goto LABEL_19;
  }

  v17 = handCopy;
LABEL_19:

  return v17;
}

@end