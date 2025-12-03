@interface LabelMarkerVenueCardItem
- (LabelMarkerVenueCardItem)initWithLabelMarker:(id)marker;
- (unint64_t)venueID;
@end

@implementation LabelMarkerVenueCardItem

- (unint64_t)venueID
{
  if (([(VKLabelMarker *)self->_labelMarker isCluster]& 1) != 0)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 1;
    clusterFeatureAnnotations = [(VKLabelMarker *)self->_labelMarker clusterFeatureAnnotations];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10066C0D0;
    v7[3] = &unk_1016253E8;
    v7[4] = &v12;
    v7[5] = &v8;
    [clusterFeatureAnnotations enumerateObjectsUsingBlock:v7];

    if (v9[3])
    {
      v4 = v13[3];
    }

    else
    {
      v4 = 0;
    }

    _Block_object_dispose(&v8, 8);
    _Block_object_dispose(&v12, 8);
    return v4;
  }

  else
  {
    labelMarker = self->_labelMarker;

    return [(VKLabelMarker *)labelMarker venueID];
  }
}

- (LabelMarkerVenueCardItem)initWithLabelMarker:(id)marker
{
  markerCopy = marker;
  v9.receiver = self;
  v9.super_class = LabelMarkerVenueCardItem;
  v6 = [(LabelMarkerVenueCardItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_labelMarker, marker);
  }

  return v7;
}

@end