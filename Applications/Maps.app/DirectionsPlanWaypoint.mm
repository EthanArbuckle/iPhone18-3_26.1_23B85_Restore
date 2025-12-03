@interface DirectionsPlanWaypoint
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DirectionsPlanWaypoint

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  waypoint = self->_waypoint;
  v6 = fromCopy[2];
  v7 = fromCopy;
  if (waypoint)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(GEOComposedWaypoint *)waypoint mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DirectionsPlanWaypoint *)self setWaypoint:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    [(DirectionsPlanWaypoint *)self setSearchString:?];
    fromCopy = v7;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((waypoint = self->_waypoint, !(waypoint | equalCopy[2])) || -[GEOComposedWaypoint isEqual:](waypoint, "isEqual:")))
  {
    searchString = self->_searchString;
    if (searchString | equalCopy[1])
    {
      v7 = [(NSString *)searchString isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(GEOComposedWaypoint *)self->_waypoint copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_searchString copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_waypoint)
  {
    [toCopy setWaypoint:?];
    toCopy = v5;
  }

  if (self->_searchString)
  {
    [v5 setSearchString:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_waypoint)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_searchString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  waypoint = self->_waypoint;
  if (waypoint)
  {
    dictionaryRepresentation = [(GEOComposedWaypoint *)waypoint dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"waypoint"];
  }

  searchString = self->_searchString;
  if (searchString)
  {
    [v3 setObject:searchString forKey:@"searchString"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = DirectionsPlanWaypoint;
  v3 = [(DirectionsPlanWaypoint *)&v7 description];
  dictionaryRepresentation = [(DirectionsPlanWaypoint *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end