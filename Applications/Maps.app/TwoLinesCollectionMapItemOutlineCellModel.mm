@interface TwoLinesCollectionMapItemOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (TwoLinesCollectionMapItemOutlineCellModel)initWithMapItem:(id)a3 currentLocation:(id)a4 distanceUnit:(int64_t)a5 backgroundModel:(id)a6;
- (id)homeActionObject;
- (unint64_t)hash;
@end

@implementation TwoLinesCollectionMapItemOutlineCellModel

- (id)homeActionObject
{
  v2 = [(TwoLinesCollectionMapItemOutlineCellModel *)self mapItem];
  v3 = [v2 _geoMapItem];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = TwoLinesCollectionMapItemOutlineCellModel;
    if ([(TwoLinesBasicOutlineCellModel *)&v13 isEqual:v6])
    {
      v7 = [(TwoLinesCollectionMapItemOutlineCellModel *)v6 mapItem];
      v8 = v7;
      if (v7 == self->_mapItem || [(MKMapItem *)v7 isEqual:?])
      {
        v9 = [(TwoLinesCollectionMapItemOutlineCellModel *)v6 currentLocation];
        v10 = v9;
        v11 = (v9 == self->_currentLocation || [(GEOLocation *)v9 isEqual:?]) && [(TwoLinesCollectionMapItemOutlineCellModel *)v6 distanceUnit]== self->_distanceUnit;
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

- (TwoLinesCollectionMapItemOutlineCellModel)initWithMapItem:(id)a3 currentLocation:(id)a4 distanceUnit:(int64_t)a5 backgroundModel:(id)a6
{
  v11 = a3;
  v12 = a4;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100F95940;
  v19[3] = &unk_10165F750;
  v13 = v11;
  v20 = v13;
  v14 = v12;
  v21 = v14;
  v18.receiver = self;
  v18.super_class = TwoLinesCollectionMapItemOutlineCellModel;
  v15 = [(TwoLinesBasicOutlineCellModel *)&v18 initWithBackgroundModel:a6 contentModelBlock:v19];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mapItem, a3);
    objc_storeStrong(&v16->_currentLocation, a4);
    v16->_distanceUnit = a5;
  }

  return v16;
}

@end