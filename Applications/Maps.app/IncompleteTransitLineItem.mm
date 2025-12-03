@interface IncompleteTransitLineItem
- (BOOL)departuresAreVehicleSpecific;
- (BOOL)hasLineColorString;
- (BOOL)showVehicleNumber;
- (GEOMapItemIdentifier)identifier;
- (GEOTransitArtworkDataSource)artwork;
- (GEOTransitSystem)system;
- (IncompleteTransitLineItem)initWithIdentifier:(id)identifier name:(id)name;
- (IncompleteTransitLineItem)initWithLabelMarker:(id)marker system:(id)system;
- (IncompleteTransitLineItem)initWithTransitLine:(id)line;
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
    artwork = [(GEOTransitLine *)line artwork];
  }

  else
  {
    artwork = self->_labelMarker;
  }

  return artwork;
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
    system = system;
  }

  else
  {
    system = [(GEOTransitLine *)self->_line system];
  }

  return system;
}

- (NSString)name
{
  if (self->_line)
  {
    name = [(GEOTransitLine *)self->_line name];
  }

  else if (self->_labelMarker)
  {
    name = [(VKLabelMarker *)self->_labelMarker _annotationTitle];
  }

  else
  {
    name = self->_name;
  }

  return name;
}

- (GEOMapItemIdentifier)identifier
{
  line = self->_line;
  if (line)
  {
    identifier = [(GEOTransitLine *)line identifier];
  }

  else
  {
    labelMarker = self->_labelMarker;
    if (labelMarker)
    {
      _maps_lineIdentifiers = [(VKLabelMarker *)labelMarker _maps_lineIdentifiers];
      firstObject = [_maps_lineIdentifiers firstObject];

      if (firstObject)
      {
        geoMapItemIdentifier = [firstObject geoMapItemIdentifier];

        goto LABEL_8;
      }
    }

    identifier = [(MKMapItemIdentifier *)self->_identifier geoMapItemIdentifier];
  }

  geoMapItemIdentifier = identifier;
LABEL_8:

  return geoMapItemIdentifier;
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

  _maps_lineIdentifiers = [(VKLabelMarker *)labelMarker _maps_lineIdentifiers];
  firstObject = [_maps_lineIdentifiers firstObject];
  muid = [firstObject muid];

  return muid;
}

- (IncompleteTransitLineItem)initWithTransitLine:(id)line
{
  lineCopy = line;
  v9.receiver = self;
  v9.super_class = IncompleteTransitLineItem;
  v6 = [(IncompleteTransitLineItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_line, line);
  }

  return v7;
}

- (IncompleteTransitLineItem)initWithIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = IncompleteTransitLineItem;
  v9 = [(IncompleteTransitLineItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;
  }

  return v10;
}

- (IncompleteTransitLineItem)initWithLabelMarker:(id)marker system:(id)system
{
  markerCopy = marker;
  systemCopy = system;
  v12.receiver = self;
  v12.super_class = IncompleteTransitLineItem;
  v9 = [(IncompleteTransitLineItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_labelMarker, marker);
    objc_storeStrong(&v10->_system, system);
  }

  return v10;
}

@end