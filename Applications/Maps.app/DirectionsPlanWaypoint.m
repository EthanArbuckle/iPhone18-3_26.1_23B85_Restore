@interface DirectionsPlanWaypoint
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DirectionsPlanWaypoint

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  waypoint = self->_waypoint;
  v6 = v4[2];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[1])
  {
    [(DirectionsPlanWaypoint *)self setSearchString:?];
    v4 = v7;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((waypoint = self->_waypoint, !(waypoint | v4[2])) || -[GEOComposedWaypoint isEqual:](waypoint, "isEqual:")))
  {
    searchString = self->_searchString;
    if (searchString | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(GEOComposedWaypoint *)self->_waypoint copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_searchString copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_waypoint)
  {
    [v4 setWaypoint:?];
    v4 = v5;
  }

  if (self->_searchString)
  {
    [v5 setSearchString:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_waypoint)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_searchString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  waypoint = self->_waypoint;
  if (waypoint)
  {
    v5 = [(GEOComposedWaypoint *)waypoint dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"waypoint"];
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
  v4 = [(DirectionsPlanWaypoint *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end