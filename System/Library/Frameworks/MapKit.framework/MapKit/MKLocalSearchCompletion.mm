@interface MKLocalSearchCompletion
- (BOOL)getCoordinate:(CLLocationCoordinate2D *)coordinate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfClass:(Class)class;
- (GEOStorageCompletion)geoStorageCompletion;
- (MKLocalSearchCompletion)initWithGeoCompletionItem:(id)item serverSectionIndex:(unint64_t)index serverItemIndexInSection:(unint64_t)section;
- (NSArray)childItems;
- (NSArray)displayLines;
- (NSArray)subtitleHighlightRanges;
- (NSArray)titleHighlightRanges;
- (NSString)subtitle;
- (NSString)title;
- (float)_disambiguationRadiusMeters;
- (id)description;
- (id)highlightsForLine:(unint64_t)line;
- (int)_placeType;
- (int64_t)_type;
- (int64_t)autocompleteCellType;
- (void)sendFeedback;
@end

@implementation MKLocalSearchCompletion

- (id)highlightsForLine:(unint64_t)line
{
  if (line == 1)
  {
    subtitleHighlightRanges = [(MKLocalSearchCompletion *)self subtitleHighlightRanges];
  }

  else if (line)
  {
    subtitleHighlightRanges = 0;
  }

  else
  {
    subtitleHighlightRanges = [(MKLocalSearchCompletion *)self titleHighlightRanges];
  }

  return subtitleHighlightRanges;
}

- (NSArray)displayLines
{
  v7[2] = *MEMORY[0x1E69E9840];
  title = [(MKLocalSearchCompletion *)self title];
  v7[0] = title;
  subtitle = [(MKLocalSearchCompletion *)self subtitle];
  v7[1] = subtitle;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (float)_disambiguationRadiusMeters
{
  if (![(GEOCompletionItem *)self->_item hasDisambiguationRadiusMeters])
  {
    return 0.0;
  }

  item = self->_item;

  [(GEOCompletionItem *)item disambiguationRadiusMeters];
  return result;
}

- (int)_placeType
{
  if ([(GEOCompletionItem *)self->_item placeType])
  {
    item = self->_item;

    return [(GEOCompletionItem *)item placeType];
  }

  else
  {
    _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];

    if (_geoMapItem)
    {
      _geoMapItem2 = [(MKMapItem *)self->_mapItem _geoMapItem];
      _placeType = [_geoMapItem2 _placeType];

      return _placeType;
    }

    else
    {
      return 0;
    }
  }
}

- (int64_t)_type
{
  result = [(GEOCompletionItem *)self->_item type];
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

- (void)sendFeedback
{
  if (!self->_alreadySentFeedback)
  {
    self->_alreadySentFeedback = 1;
    [(GEOCompletionItem *)self->_item sendFeedback];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(GEOCompletionItem *)self->_item isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  title = [(MKLocalSearchCompletion *)self title];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, title];

  subtitle = [(MKLocalSearchCompletion *)self subtitle];
  if ([subtitle length])
  {
    [v7 appendFormat:@" (%@)", subtitle];
  }

  return v7;
}

- (NSArray)childItems
{
  v11[1] = *MEMORY[0x1E69E9840];
  publisherResult = [(MKLocalSearchCompletion *)self publisherResult];

  if (publisherResult)
  {
    v4 = objc_alloc(MEMORY[0x1E69A21A8]);
    publisherResult2 = [(MKLocalSearchCompletion *)self publisherResult];
    v6 = [v4 initWithPublisherResult:publisherResult2];
    v11[0] = v6;
    _childItems = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    mapItem = [(MKLocalSearchCompletion *)self mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    _childItems = [_geoMapItem _childItems];
  }

  return _childItems;
}

- (int64_t)autocompleteCellType
{
  result = [(GEOCompletionItem *)self->_item autocompleteCellType];
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

- (GEOStorageCompletion)geoStorageCompletion
{
  copyStorage = [(MKLocalSearchCompletion *)self copyStorage];

  return copyStorage;
}

- (BOOL)getCoordinate:(CLLocationCoordinate2D *)coordinate
{
  if (!coordinate)
  {
    return 0;
  }

  v5 = MKCoordinateInvalid;
  if (![(GEOCompletionItem *)self->_item getCoordinate:&v5]|| fabs(*(&v5 + 1) + 180.0) < 0.00000001 && fabs(*&v5 + 180.0) < 0.00000001)
  {
    return 0;
  }

  *coordinate = CLLocationCoordinate2DMake(*&v5, *(&v5 + 1));
  return 1;
}

- (NSArray)subtitleHighlightRanges
{
  displayLines = [(GEOCompletionItem *)self->_item displayLines];
  if ([displayLines count] < 2)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [(GEOCompletionItem *)self->_item highlightsForLine:1];
  }

  return v4;
}

- (NSString)subtitle
{
  displayLines = [(GEOCompletionItem *)self->_item displayLines];
  if ([displayLines count] < 2)
  {
    v3 = &stru_1F15B23C0;
  }

  else
  {
    v3 = [displayLines objectAtIndexedSubscript:1];
  }

  return v3;
}

- (NSArray)titleHighlightRanges
{
  displayLines = [(GEOCompletionItem *)self->_item displayLines];
  if ([displayLines count])
  {
    v4 = [(GEOCompletionItem *)self->_item highlightsForLine:0];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (NSString)title
{
  displayLines = [(GEOCompletionItem *)self->_item displayLines];
  if ([displayLines count])
  {
    v3 = [displayLines objectAtIndexedSubscript:0];
  }

  else
  {
    v3 = &stru_1F15B23C0;
  }

  return v3;
}

- (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MKLocalSearchCompletion;
  return [(MKLocalSearchCompletion *)&v6 isKindOfClass:class];
}

- (MKLocalSearchCompletion)initWithGeoCompletionItem:(id)item serverSectionIndex:(unint64_t)index serverItemIndexInSection:(unint64_t)section
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = MKLocalSearchCompletion;
  v10 = [(MKLocalSearchCompletion *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_item, item);
    v11->_serverSectionIndex = index;
    v11->_serverItemIndexInSection = section;
    geoMapItem = [(GEOCompletionItem *)v11->_item geoMapItem];
    if (geoMapItem)
    {
      v13 = [MKMapItem _itemWithGeoMapItem:geoMapItem];
      mapItem = v11->_mapItem;
      v11->_mapItem = v13;
    }

    v15 = v11;
  }

  return v11;
}

@end