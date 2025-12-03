@interface CloudTabGroupSyncEvent
- (CloudTabGroupSyncEvent)initWithDictionaryRepresentation:(id)representation;
- (NSArray)childEvents;
- (NSDictionary)dictionaryRepresentation;
- (id)_defaultSubtitle;
- (id)extraAttributes;
@end

@implementation CloudTabGroupSyncEvent

- (CloudTabGroupSyncEvent)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v27.receiver = self;
  v27.super_class = CloudTabGroupSyncEvent;
  v5 = [(CloudTabGroupSyncEvent *)&v27 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"Title"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_100137BA8;
    }

    objc_storeStrong(&v5->_title, v8);

    v9 = [representationCopy objectForKeyedSubscript:@"Subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v9;

    v11 = [representationCopy objectForKeyedSubscript:@"SymbolName"];
    symbolName = v5->_symbolName;
    v5->_symbolName = v11;

    v13 = [representationCopy objectForKeyedSubscript:@"ExtraAttributes"];
    v14 = [v13 objectForKeyedSubscript:@"Metadata"];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &__NSDictionary0__struct;
    }

    objc_storeStrong(&v5->_metadata, v16);

    v17 = [representationCopy objectForKeyedSubscript:@"ExtraAttributes"];
    v18 = [v17 objectForKeyedSubscript:@"Children"];
    v19 = v18;
    v20 = &__NSArray0__struct;
    if (v18)
    {
      v20 = v18;
    }

    v21 = v20;

    v22 = [v21 safari_mapObjectsUsingBlock:&stru_100134C20];

    v23 = [v22 mutableCopy];
    childEvents = v5->_childEvents;
    v5->_childEvents = v23;

    v25 = v5;
  }

  return v5;
}

- (NSArray)childEvents
{
  v2 = [(NSMutableArray *)self->_childEvents copy];

  return v2;
}

- (id)_defaultSubtitle
{
  beginDate = self->_beginDate;
  if (beginDate && self->_endDate)
  {
    v4 = sub_100072F28(beginDate);
    v5 = sub_100072F28(self->_endDate);
    v6 = [NSString stringWithFormat:@"%@ - %@", v4, v5];
  }

  else
  {
    v6 = &stru_100137BA8;
  }

  return v6;
}

- (id)extraAttributes
{
  metadata = self->_metadata;
  v6[0] = @"Metadata";
  v6[1] = @"Children";
  v7[0] = metadata;
  v3 = [(NSMutableArray *)self->_childEvents valueForKey:@"dictionaryRepresentation"];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v11[0] = self->_title;
  v10[0] = @"Title";
  v10[1] = @"Subtitle";
  subtitle = self->_subtitle;
  _defaultSubtitle = subtitle;
  if (!subtitle)
  {
    _defaultSubtitle = [(CloudTabGroupSyncEvent *)self _defaultSubtitle];
  }

  symbolName = self->_symbolName;
  if (!symbolName)
  {
    symbolName = &stru_100137BA8;
  }

  v11[1] = _defaultSubtitle;
  v11[2] = symbolName;
  v10[2] = @"SymbolName";
  v10[3] = @"ExtraAttributes";
  v6 = symbolName;
  extraAttributes = [(CloudTabGroupSyncEvent *)self extraAttributes];
  v11[3] = extraAttributes;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  if (!subtitle)
  {
  }

  return v8;
}

@end