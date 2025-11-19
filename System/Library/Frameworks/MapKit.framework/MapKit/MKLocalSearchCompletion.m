@interface MKLocalSearchCompletion
- (BOOL)getCoordinate:(CLLocationCoordinate2D *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (GEOStorageCompletion)geoStorageCompletion;
- (MKLocalSearchCompletion)initWithGeoCompletionItem:(id)a3 serverSectionIndex:(unint64_t)a4 serverItemIndexInSection:(unint64_t)a5;
- (NSArray)childItems;
- (NSArray)displayLines;
- (NSArray)subtitleHighlightRanges;
- (NSArray)titleHighlightRanges;
- (NSString)subtitle;
- (NSString)title;
- (float)_disambiguationRadiusMeters;
- (id)description;
- (id)highlightsForLine:(unint64_t)a3;
- (int)_placeType;
- (int64_t)_type;
- (int64_t)autocompleteCellType;
- (void)sendFeedback;
@end

@implementation MKLocalSearchCompletion

- (id)highlightsForLine:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(MKLocalSearchCompletion *)self subtitleHighlightRanges];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(MKLocalSearchCompletion *)self titleHighlightRanges];
  }

  return v3;
}

- (NSArray)displayLines
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [(MKLocalSearchCompletion *)self title];
  v7[0] = v3;
  v4 = [(MKLocalSearchCompletion *)self subtitle];
  v7[1] = v4;
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
    v5 = [(MKMapItem *)self->_mapItem _geoMapItem];

    if (v5)
    {
      v6 = [(MKMapItem *)self->_mapItem _geoMapItem];
      v7 = [v6 _placeType];

      return v7;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(GEOCompletionItem *)self->_item isEqual:v4[1]];
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
  v6 = [(MKLocalSearchCompletion *)self title];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, v6];

  v8 = [(MKLocalSearchCompletion *)self subtitle];
  if ([v8 length])
  {
    [v7 appendFormat:@" (%@)", v8];
  }

  return v7;
}

- (NSArray)childItems
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(MKLocalSearchCompletion *)self publisherResult];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69A21A8]);
    v5 = [(MKLocalSearchCompletion *)self publisherResult];
    v6 = [v4 initWithPublisherResult:v5];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = [(MKLocalSearchCompletion *)self mapItem];
    v9 = [v8 _geoMapItem];
    v7 = [v9 _childItems];
  }

  return v7;
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
  v2 = [(MKLocalSearchCompletion *)self copyStorage];

  return v2;
}

- (BOOL)getCoordinate:(CLLocationCoordinate2D *)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = MKCoordinateInvalid;
  if (![(GEOCompletionItem *)self->_item getCoordinate:&v5]|| fabs(*(&v5 + 1) + 180.0) < 0.00000001 && fabs(*&v5 + 180.0) < 0.00000001)
  {
    return 0;
  }

  *a3 = CLLocationCoordinate2DMake(*&v5, *(&v5 + 1));
  return 1;
}

- (NSArray)subtitleHighlightRanges
{
  v3 = [(GEOCompletionItem *)self->_item displayLines];
  if ([v3 count] < 2)
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
  v2 = [(GEOCompletionItem *)self->_item displayLines];
  if ([v2 count] < 2)
  {
    v3 = &stru_1F15B23C0;
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript:1];
  }

  return v3;
}

- (NSArray)titleHighlightRanges
{
  v3 = [(GEOCompletionItem *)self->_item displayLines];
  if ([v3 count])
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
  v2 = [(GEOCompletionItem *)self->_item displayLines];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
  }

  else
  {
    v3 = &stru_1F15B23C0;
  }

  return v3;
}

- (BOOL)isKindOfClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MKLocalSearchCompletion;
  return [(MKLocalSearchCompletion *)&v6 isKindOfClass:a3];
}

- (MKLocalSearchCompletion)initWithGeoCompletionItem:(id)a3 serverSectionIndex:(unint64_t)a4 serverItemIndexInSection:(unint64_t)a5
{
  v9 = a3;
  v17.receiver = self;
  v17.super_class = MKLocalSearchCompletion;
  v10 = [(MKLocalSearchCompletion *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_item, a3);
    v11->_serverSectionIndex = a4;
    v11->_serverItemIndexInSection = a5;
    v12 = [(GEOCompletionItem *)v11->_item geoMapItem];
    if (v12)
    {
      v13 = [MKMapItem _itemWithGeoMapItem:v12];
      mapItem = v11->_mapItem;
      v11->_mapItem = v13;
    }

    v15 = v11;
  }

  return v11;
}

@end