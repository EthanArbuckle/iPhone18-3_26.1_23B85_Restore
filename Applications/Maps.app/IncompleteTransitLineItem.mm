@interface IncompleteTransitLineItem
- (BOOL)departuresAreVehicleSpecific;
- (BOOL)hasLineColorString;
- (BOOL)showVehicleNumber;
- (GEOMapItemIdentifier)identifier;
- (GEOTransitArtworkDataSource)artwork;
- (GEOTransitSystem)system;
- (IncompleteTransitLineItem)initWithIdentifier:(id)a3 name:(id)a4;
- (IncompleteTransitLineItem)initWithLabelMarker:(id)a3 system:(id)a4;
- (IncompleteTransitLineItem)initWithTransitLine:(id)a3;
- (NSString)name;
- (unint64_t)departureTimeDisplayStyle;
- (unint64_t)muid;
@end

@implementation IncompleteTransitLineItem

- (BOOL)showVehicleNumber
{
  line = self->_line;
  if (line)
  {
    LOBYTE(line) = [(GEOTransitLine *)line showVehicleNumber];
  }

  return line;
}

- (BOOL)hasLineColorString
{
  line = self->_line;
  if (line)
  {
    LOBYTE(line) = [(GEOTransitLine *)line hasLineColorString];
  }

  return line;
}

- (GEOTransitArtworkDataSource)artwork
{
  line = self->_line;
  if (line)
  {
    v4 = [(GEOTransitLine *)line artwork];
  }

  else
  {
    v4 = self->_labelMarker;
  }

  return v4;
}

- (BOOL)departuresAreVehicleSpecific
{
  line = self->_line;
  if (line)
  {
    LOBYTE(line) = [(GEOTransitLine *)line departuresAreVehicleSpecific];
  }

  return line;
}

- (unint64_t)departureTimeDisplayStyle
{
  result = self->_line;
  if (result)
  {
    return [result departureTimeDisplayStyle];
  }

  return result;
}

- (GEOTransitSystem)system
{
  system = self->_system;
  if (system)
  {
    v3 = system;
  }

  else
  {
    v3 = [(GEOTransitLine *)self->_line system];
  }

  return v3;
}

- (NSString)name
{
  if (self->_line)
  {
    v2 = [(GEOTransitLine *)self->_line name];
  }

  else if (self->_labelMarker)
  {
    v2 = [(VKLabelMarker *)self->_labelMarker _annotationTitle];
  }

  else
  {
    v2 = self->_name;
  }

  return v2;
}

- (GEOMapItemIdentifier)identifier
{
  line = self->_line;
  if (line)
  {
    v4 = [(GEOTransitLine *)line identifier];
  }

  else
  {
    labelMarker = self->_labelMarker;
    if (labelMarker)
    {
      v6 = [(VKLabelMarker *)labelMarker _maps_lineIdentifiers];
      v7 = [v6 firstObject];

      if (v7)
      {
        v8 = [v7 geoMapItemIdentifier];

        goto LABEL_8;
      }
    }

    v4 = [(MKMapItemIdentifier *)self->_identifier geoMapItemIdentifier];
  }

  v8 = v4;
LABEL_8:

  return v8;
}

- (unint64_t)muid
{
  if (self->_line)
  {
    line = self->_line;

    return [(GEOTransitLine *)line muid];
  }

  labelMarker = self->_labelMarker;
  if (!labelMarker)
  {
    line = self->_identifier;

    return [(GEOTransitLine *)line muid];
  }

  v6 = [(VKLabelMarker *)labelMarker _maps_lineIdentifiers];
  v7 = [v6 firstObject];
  v8 = [v7 muid];

  return v8;
}

- (IncompleteTransitLineItem)initWithTransitLine:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IncompleteTransitLineItem;
  v6 = [(IncompleteTransitLineItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_line, a3);
  }

  return v7;
}

- (IncompleteTransitLineItem)initWithIdentifier:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = IncompleteTransitLineItem;
  v9 = [(IncompleteTransitLineItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;
  }

  return v10;
}

- (IncompleteTransitLineItem)initWithLabelMarker:(id)a3 system:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IncompleteTransitLineItem;
  v9 = [(IncompleteTransitLineItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_labelMarker, a3);
    objc_storeStrong(&v10->_system, a4);
  }

  return v10;
}

@end