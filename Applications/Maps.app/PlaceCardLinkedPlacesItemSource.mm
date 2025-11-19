@interface PlaceCardLinkedPlacesItemSource
- (id)allItems;
- (void)updateForPlaceCardItem:(id)a3;
@end

@implementation PlaceCardLinkedPlacesItemSource

- (id)allItems
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_linkedPlaces copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)updateForPlaceCardItem:(id)a3
{
  v4 = a3;
  v49 = self->_geoMapItem;
  v50 = v4;
  if ([v4 isCurrentLocation])
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v7 = [v4 personalizedItem];

  if (v7)
  {
    v8 = [v50 personalizedItem];
    v5 = v8;
  }

  else
  {
    v9 = [v50 mapItem];

    v5 = 0;
    v6 = 0;
    v8 = v50;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v10 = [v8 mapItem];
  v6 = [v10 _geoMapItem];

LABEL_7:
  if ([(GEOMapItem *)v6 _isTransitDisplayFeature])
  {

    v6 = 0;
  }

  v51 = v6;
  if (v6 != self->_geoMapItem)
  {
    v46 = v5;
    v52 = self;
    objc_storeStrong(&self->_geoMapItem, v6);
    v11 = +[NSMutableArray array];
    v54 = +[NSMutableSet set];
    if (v51)
    {
      featureID = self->_featureID;
      v12 = [(GEOMapItem *)v51 _identifier];
      v44 = v12 == 0;
      v13 = [PlaceCardLinkedPlacesItem alloc];
      if (v46)
      {
        v14 = [(PlaceCardLinkedPlacesItem *)v13 initWithPersonalizedItem:?];
      }

      else
      {
        v14 = [(PlaceCardLinkedPlacesItem *)v13 initWithGEOMapItem:v51];
      }

      v47 = v14;
      v48 = [(GEOMapItem *)self->_geoMapItem _containedPlace];
      if (v48)
      {
        [v11 addObject:v47];
        if (v12)
        {
          [v54 addObject:v12];
        }

        v17 = [v48 children];
        v18 = [v17 count];

        if (v18)
        {
          [(PlaceCardLinkedPlacesItem *)v47 setParent:1];
          [(PlaceCardLinkedPlacesItem *)v47 setSortOrder:1];
          featureID = [v48 featureId];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v19 = [v48 children];
          v20 = [v19 countByEnumeratingWithState:&v59 objects:v64 count:16];
          if (v20)
          {
            v21 = *v60;
            v22 = 2;
            do
            {
              v23 = 0;
              v24 = v12;
              do
              {
                if (*v60 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                v25 = *(*(&v59 + 1) + 8 * v23);
                v26 = [[PlaceCardLinkedPlacesItem alloc] initWithGEOMapItem:v25];
                [(PlaceCardLinkedPlacesItem *)v26 setSortOrder:v22];
                [(PlaceCardLinkedPlacesItem *)v26 setChild:1];
                [v11 addObject:v26];
                v12 = [v25 _identifier];

                if (v12)
                {
                  [v54 addObject:v12];
                }

                v23 = v23 + 1;
                ++v22;
                v24 = v12;
              }

              while (v20 != v23);
              v20 = [v19 countByEnumeratingWithState:&v59 objects:v64 count:16];
            }

            while (v20);
          }
        }

        else
        {
          v27 = [v48 parent];

          if (v27)
          {
            v28 = [v48 parent];
            featureID = [v48 parentFeatureId];
            v29 = [[PlaceCardLinkedPlacesItem alloc] initWithGEOMapItem:v28];
            [(PlaceCardLinkedPlacesItem *)v29 setParent:1];
            [(PlaceCardLinkedPlacesItem *)v29 setSortOrder:1];
            [v11 addObject:v29];
            [(PlaceCardLinkedPlacesItem *)v47 setChild:1];
            [(PlaceCardLinkedPlacesItem *)v47 setSortOrder:2];
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            obj = [v48 siblings];
            v30 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
            if (v30)
            {
              v31 = *v56;
              v32 = 3;
              do
              {
                for (i = 0; i != v30; i = i + 1)
                {
                  if (*v56 != v31)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v34 = *(*(&v55 + 1) + 8 * i);
                  v35 = [[PlaceCardLinkedPlacesItem alloc] initWithGEOMapItem:v34];

                  v29 = v35;
                  [(PlaceCardLinkedPlacesItem *)v35 setSortOrder:v32];
                  [(PlaceCardLinkedPlacesItem *)v35 setChild:1];
                  [v11 addObject:v35];
                  v36 = [v34 _identifier];

                  v12 = v36;
                  if (v36)
                  {
                    [v54 addObject:v36];
                  }

                  ++v32;
                }

                v30 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
              }

              while (v30);
            }
          }

          else
          {
            featureID = [v48 featureId];
          }
        }

        v15 = 1;
      }

      else if (v12 && [(NSSet *)self->_linkedPlaceIdentifiers containsObject:v12])
      {
        v15 = 0;
      }

      else
      {
        featureID = 0;
        v15 = self->_featureID != 0;
      }

      v16 = featureID;
      if (v44)
      {
LABEL_50:
        if (v49)
        {
          v37 = [(GEOMapItem *)v49 _identifier];
          v38 = v37 == 0;

          if (((v38 | v15) & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if (!v15)
        {
LABEL_55:

          v5 = v46;
          goto LABEL_56;
        }

        v39 = v52;
        objc_sync_enter(v39);
        v40 = [v11 copy];
        linkedPlaces = v39->_linkedPlaces;
        v39->_linkedPlaces = v40;

        objc_sync_exit(v39);
        objc_storeStrong(&v39->_containedPlace, v48);
        v52->_featureID = v16;
        v42 = [v54 copy];
        linkedPlaceIdentifiers = v39->_linkedPlaceIdentifiers;
        v39->_linkedPlaceIdentifiers = v42;

        [(PersonalizedItemSource *)v39 _notifyObserversItemsDidChange];
        goto LABEL_55;
      }
    }

    else
    {
      v47 = 0;
      v48 = 0;
      v15 = self->_featureID != 0;
      v16 = 0;
    }

    if (v15 && [(NSSet *)v52->_linkedPlaceIdentifiers isEqualToSet:v54])
    {
      v15 = (v16 != v52->_featureID) & v15;
    }

    goto LABEL_50;
  }

LABEL_56:
}

@end