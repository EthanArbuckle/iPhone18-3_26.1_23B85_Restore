@interface VenueCardDealer
- (id)existingCardForHand:(id)a3 cardItem:(id)a4;
- (id)newHandFromExistingHand:(id)a3 nextTopCard:(id)a4 source:(unint64_t)a5;
- (unint64_t)_indexOfFirstNonPlaceCardInHand:(id)a3;
- (unint64_t)_venueIdForHand:(id)a3;
@end

@implementation VenueCardDealer

- (unint64_t)_indexOfFirstNonPlaceCardInHand:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005C3780;
  v6[3] = &unk_101622E88;
  v6[4] = &v7;
  [v3 enumerateObjectsWithOptions:2 usingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (unint64_t)_venueIdForHand:(id)a3
{
  v3 = [a3 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 venueID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)existingCardForHand:(id)a3 cardItem:(id)a4
{
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a3 reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = v5;
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
          v14 = [v10 venueCardID];

          if (v14)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)newHandFromExistingHand:(id)a3 nextTopCard:(id)a4 source:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 isVenueItem])
  {
    v10 = [(VenueCardDealer *)self existingCardForHand:v8 cardItem:v9];
    if (v10 && (v11 = [v8 indexOfObject:v10], v11 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v18 = [v8 subarrayWithRange:{0, v11 + 1}];
    }

    else
    {
      if ([v8 count])
      {
        v12 = [(VenueCardDealer *)self _venueIdForHand:v8];
        if (v12 == [v9 venueID])
        {
          if (a5 != 1 || ![v9 conformsToProtocol:&OBJC_PROTOCOL___VenuePlaceCardItem] || (objc_msgSend(v8, "lastObject"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "conformsToProtocol:", &OBJC_PROTOCOL___VenuePlaceCardItem), v13, !v14))
          {
            v18 = [v8 arrayByAddingObject:v9];
            goto LABEL_17;
          }

          v15 = [(VenueCardDealer *)self _indexOfFirstNonPlaceCardInHand:v8];
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = [v8 subarrayWithRange:{0, v15 + 1}];
            v17 = [v20 arrayByAddingObject:v9];

            goto LABEL_18;
          }

          v21 = v9;
          v16 = &v21;
        }

        else
        {
          v22 = v9;
          v16 = &v22;
        }
      }

      else
      {
        v23 = v9;
        v16 = &v23;
      }

      v18 = [NSArray arrayWithObjects:v16 count:1, v21, v22, v23];
    }

LABEL_17:
    v17 = v18;
LABEL_18:

    goto LABEL_19;
  }

  v17 = v8;
LABEL_19:

  return v17;
}

@end