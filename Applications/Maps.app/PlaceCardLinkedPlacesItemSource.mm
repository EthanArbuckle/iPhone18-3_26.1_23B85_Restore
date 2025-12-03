@interface PlaceCardLinkedPlacesItemSource
- (id)allItems;
- (void)updateForPlaceCardItem:(id)item;
@end

@implementation PlaceCardLinkedPlacesItemSource

- (id)allItems
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_linkedPlaces copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)updateForPlaceCardItem:(id)item
{
  itemCopy = item;
  v49 = self->_geoMapItem;
  v50 = itemCopy;
  if ([itemCopy isCurrentLocation])
  {
    v5 = 0;
    _geoMapItem = 0;
    goto LABEL_7;
  }

  personalizedItem = [itemCopy personalizedItem];

  if (personalizedItem)
  {
    personalizedItem2 = [v50 personalizedItem];
    v5 = personalizedItem2;
  }

  else
  {
    mapItem = [v50 mapItem];

    v5 = 0;
    _geoMapItem = 0;
    personalizedItem2 = v50;
    if (!mapItem)
    {
      goto LABEL_7;
    }
  }

  mapItem2 = [personalizedItem2 mapItem];
  _geoMapItem = [mapItem2 _geoMapItem];

LABEL_7:
  if ([(GEOMapItem *)_geoMapItem _isTransitDisplayFeature])
  {

    _geoMapItem = 0;
  }

  v51 = _geoMapItem;
  if (_geoMapItem != self->_geoMapItem)
  {
    v46 = v5;
    selfCopy = self;
    objc_storeStrong(&self->_geoMapItem, _geoMapItem);
    v11 = +[NSMutableArray array];
    v54 = +[NSMutableSet set];
    if (v51)
    {
      featureID = self->_featureID;
      _identifier = [(GEOMapItem *)v51 _identifier];
      v44 = _identifier == 0;
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
      _containedPlace = [(GEOMapItem *)self->_geoMapItem _containedPlace];
      if (_containedPlace)
      {
        [v11 addObject:v47];
        if (_identifier)
        {
          [v54 addObject:_identifier];
        }

        children = [_containedPlace children];
        v18 = [children count];

        if (v18)
        {
          [(PlaceCardLinkedPlacesItem *)v47 setParent:1];
          [(PlaceCardLinkedPlacesItem *)v47 setSortOrder:1];
          featureID = [_containedPlace featureId];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          children2 = [_containedPlace children];
          v20 = [children2 countByEnumeratingWithState:&v59 objects:v64 count:16];
          if (v20)
          {
            v21 = *v60;
            v22 = 2;
            do
            {
              v23 = 0;
              v24 = _identifier;
              do
              {
                if (*v60 != v21)
                {
                  objc_enumerationMutation(children2);
                }

                v25 = *(*(&v59 + 1) + 8 * v23);
                v26 = [[PlaceCardLinkedPlacesItem alloc] initWithGEOMapItem:v25];
                [(PlaceCardLinkedPlacesItem *)v26 setSortOrder:v22];
                [(PlaceCardLinkedPlacesItem *)v26 setChild:1];
                [v11 addObject:v26];
                _identifier = [v25 _identifier];

                if (_identifier)
                {
                  [v54 addObject:_identifier];
                }

                v23 = v23 + 1;
                ++v22;
                v24 = _identifier;
              }

              while (v20 != v23);
              v20 = [children2 countByEnumeratingWithState:&v59 objects:v64 count:16];
            }

            while (v20);
          }
        }

        else
        {
          parent = [_containedPlace parent];

          if (parent)
          {
            parent2 = [_containedPlace parent];
            featureID = [_containedPlace parentFeatureId];
            v29 = [[PlaceCardLinkedPlacesItem alloc] initWithGEOMapItem:parent2];
            [(PlaceCardLinkedPlacesItem *)v29 setParent:1];
            [(PlaceCardLinkedPlacesItem *)v29 setSortOrder:1];
            [v11 addObject:v29];
            [(PlaceCardLinkedPlacesItem *)v47 setChild:1];
            [(PlaceCardLinkedPlacesItem *)v47 setSortOrder:2];
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            obj = [_containedPlace siblings];
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
                  _identifier2 = [v34 _identifier];

                  _identifier = _identifier2;
                  if (_identifier2)
                  {
                    [v54 addObject:_identifier2];
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
            featureID = [_containedPlace featureId];
          }
        }

        v15 = 1;
      }

      else if (_identifier && [(NSSet *)self->_linkedPlaceIdentifiers containsObject:_identifier])
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
          _identifier3 = [(GEOMapItem *)v49 _identifier];
          v38 = _identifier3 == 0;

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

        v39 = selfCopy;
        objc_sync_enter(v39);
        v40 = [v11 copy];
        linkedPlaces = v39->_linkedPlaces;
        v39->_linkedPlaces = v40;

        objc_sync_exit(v39);
        objc_storeStrong(&v39->_containedPlace, _containedPlace);
        selfCopy->_featureID = v16;
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
      _containedPlace = 0;
      v15 = self->_featureID != 0;
      v16 = 0;
    }

    if (v15 && [(NSSet *)selfCopy->_linkedPlaceIdentifiers isEqualToSet:v54])
    {
      v15 = (v16 != selfCopy->_featureID) & v15;
    }

    goto LABEL_50;
  }

LABEL_56:
}

@end