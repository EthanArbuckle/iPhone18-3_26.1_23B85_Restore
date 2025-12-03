@interface TwoLinesCollectionMapItemOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (TwoLinesCollectionMapItemOutlineCellModel)initWithMapItem:(id)item currentLocation:(id)location distanceUnit:(int64_t)unit backgroundModel:(id)model;
- (id)homeActionObject;
- (unint64_t)hash;
@end

@implementation TwoLinesCollectionMapItemOutlineCellModel

- (id)homeActionObject
{
  mapItem = [(TwoLinesCollectionMapItemOutlineCellModel *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];

  return _geoMapItem;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = TwoLinesCollectionMapItemOutlineCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v13 isEqual:v6])
    {
      mapItem = [(TwoLinesCollectionMapItemOutlineCellModel *)v6 mapItem];
      v8 = mapItem;
      if (mapItem == self->_mapItem || [(MKMapItem *)mapItem isEqual:?])
      {
        currentLocation = [(TwoLinesCollectionMapItemOutlineCellModel *)v6 currentLocation];
        v10 = currentLocation;
        v11 = (currentLocation == self->_currentLocation || [(GEOLocation *)currentLocation isEqual:?]) && [(TwoLinesCollectionMapItemOutlineCellModel *)v6 distanceUnit]== self->_distanceUnit;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(MKMapItem *)self->_mapItem hash];
  v4 = [(GEOLocation *)self->_currentLocation hash]^ v3;
  return v4 ^ [(SidebarOutlineCellBackgroundModel *)self->super._backgroundModel hash];
}

- (TwoLinesCollectionMapItemOutlineCellModel)initWithMapItem:(id)item currentLocation:(id)location distanceUnit:(int64_t)unit backgroundModel:(id)model
{
  itemCopy = item;
  locationCopy = location;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100F95940;
  v19[3] = &unk_10165F750;
  v13 = itemCopy;
  v20 = v13;
  v14 = locationCopy;
  v21 = v14;
  v18.receiver = self;
  v18.super_class = TwoLinesCollectionMapItemOutlineCellModel;
  v15 = [(TwoLinesBasicOutlineCellModel *)&v18 initWithBackgroundModel:model contentModelBlock:v19];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mapItem, item);
    objc_storeStrong(&v16->_currentLocation, location);
    v16->_distanceUnit = unit;
  }

  return v16;
}

@end