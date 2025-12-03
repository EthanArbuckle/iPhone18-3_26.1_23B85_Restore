@interface TransitTripStopItem
- (TransitTripStopItem)initWithPlaceHolderType:(unint64_t)type numCollapsedStops:(unint64_t)stops;
- (TransitTripStopItem)initWithTransitTripStop:(id)stop stopIndex:(unint64_t)index;
- (id)description;
- (id)placeholderTextForLine:(id)line;
@end

@implementation TransitTripStopItem

- (id)description
{
  if (self->_type)
  {
    v2 = self->_identifier;
  }

  else
  {
    v2 = [(GEOTransitTripStop *)self->_transitTripStop description];
  }

  return v2;
}

- (id)placeholderTextForLine:(id)line
{
  isBus = [line isBus];
  type = self->_type;
  if (type == 2)
  {
    v6 = +[NSBundle mainBundle];
    if (isBus)
    {
      v7 = @"[Transit Schedule] (Bus) Additional bus stops";
    }

    else
    {
      v7 = @"[Transit Schedule] (Non-bus) Additional non-bus stops text";
    }
  }

  else
  {
    if (type != 1)
    {
      v8 = 0;
      goto LABEL_11;
    }

    v6 = +[NSBundle mainBundle];
    if (isBus)
    {
      v7 = @"[Transit Schedule] (Bus) Previous stops text";
    }

    else
    {
      v7 = @"[Transit Schedule] (Non-bus) Previous stops text";
    }
  }

  v9 = [v6 localizedStringForKey:v7 value:@"localized string not found" table:0];

  v8 = [NSString localizedStringWithFormat:v9, self->_numberOfCollapsedStops];

LABEL_11:

  return v8;
}

- (TransitTripStopItem)initWithTransitTripStop:(id)stop stopIndex:(unint64_t)index
{
  stopCopy = stop;
  v13.receiver = self;
  v13.super_class = TransitTripStopItem;
  v8 = [(TransitTripStopItem *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transitTripStop, stop);
    v9->_type = 0;
    v10 = [NSNumber numberWithUnsignedInteger:index];
    identifier = v9->_identifier;
    v9->_identifier = v10;
  }

  return v9;
}

- (TransitTripStopItem)initWithPlaceHolderType:(unint64_t)type numCollapsedStops:(unint64_t)stops
{
  v15.receiver = self;
  v15.super_class = TransitTripStopItem;
  v6 = [(TransitTripStopItem *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_numberOfCollapsedStops = stops;
    v6->_type = type;
    v8 = @"PostAlightingPlaceholder";
    if (type == 1)
    {
      v8 = @"PreBoardingPlaceholder";
    }

    v9 = v8;
    v10 = +[NSUUID UUID];
    uUIDString = [v10 UUIDString];
    v12 = [NSString stringWithFormat:@"%@-%lu-%@", v9, stops, uUIDString];

    identifier = v7->_identifier;
    v7->_identifier = v12;
  }

  return v7;
}

@end