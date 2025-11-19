@interface TransitTripStopItem
- (TransitTripStopItem)initWithPlaceHolderType:(unint64_t)a3 numCollapsedStops:(unint64_t)a4;
- (TransitTripStopItem)initWithTransitTripStop:(id)a3 stopIndex:(unint64_t)a4;
- (id)description;
- (id)placeholderTextForLine:(id)a3;
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

- (id)placeholderTextForLine:(id)a3
{
  v4 = [a3 isBus];
  type = self->_type;
  if (type == 2)
  {
    v6 = +[NSBundle mainBundle];
    if (v4)
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
    if (v4)
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

- (TransitTripStopItem)initWithTransitTripStop:(id)a3 stopIndex:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = TransitTripStopItem;
  v8 = [(TransitTripStopItem *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transitTripStop, a3);
    v9->_type = 0;
    v10 = [NSNumber numberWithUnsignedInteger:a4];
    identifier = v9->_identifier;
    v9->_identifier = v10;
  }

  return v9;
}

- (TransitTripStopItem)initWithPlaceHolderType:(unint64_t)a3 numCollapsedStops:(unint64_t)a4
{
  v15.receiver = self;
  v15.super_class = TransitTripStopItem;
  v6 = [(TransitTripStopItem *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_numberOfCollapsedStops = a4;
    v6->_type = a3;
    v8 = @"PostAlightingPlaceholder";
    if (a3 == 1)
    {
      v8 = @"PreBoardingPlaceholder";
    }

    v9 = v8;
    v10 = +[NSUUID UUID];
    v11 = [v10 UUIDString];
    v12 = [NSString stringWithFormat:@"%@-%lu-%@", v9, a4, v11];

    identifier = v7->_identifier;
    v7->_identifier = v12;
  }

  return v7;
}

@end