@interface WaypointSet
- (BOOL)isEqual:(id)equal;
- (GEOComposedWaypoint)destination;
- (WaypointSet)initWithWaypoints:(id)waypoints;
- (id)description;
- (id)waypointAtIndex:(unint64_t)index;
- (unint64_t)count;
@end

@implementation WaypointSet

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    if ([(WaypointSet *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      v7 = v6;
      waypointsOrNull = self->_waypointsOrNull;
      v9 = waypointsOrNull;
      if (!waypointsOrNull)
      {
        waypointsOrNull = [(WaypointSet *)v6 waypointsOrNull];
        if (!waypointsOrNull)
        {
          v11 = 1;
          goto LABEL_11;
        }

        v9 = self->_waypointsOrNull;
      }

      waypointsOrNull2 = [(WaypointSet *)v7 waypointsOrNull];
      v11 = [(NSArray *)v9 isEqual:waypointsOrNull2];

      if (waypointsOrNull)
      {
LABEL_12:

        goto LABEL_13;
      }

LABEL_11:

      goto LABEL_12;
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (unint64_t)count
{
  waypointsOrNull = [(WaypointSet *)self waypointsOrNull];
  v3 = [waypointsOrNull count];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = sub_10099F8F0(self->_waypointsOrNull);
  v5 = [NSString stringWithFormat:@"<%@: %p, waypoints: %@>", v3, self, v4];

  return v5;
}

- (GEOComposedWaypoint)destination
{
  waypointsOrNull = [(WaypointSet *)self waypointsOrNull];
  v4 = -[WaypointSet waypointAtIndex:](self, "waypointAtIndex:", [waypointsOrNull count] - 1);

  return v4;
}

- (id)waypointAtIndex:(unint64_t)index
{
  waypointsOrNull = [(WaypointSet *)self waypointsOrNull];
  v6 = [waypointsOrNull count];

  if (v6 <= index)
  {
    v10 = 0;
  }

  else
  {
    waypointsOrNull2 = [(WaypointSet *)self waypointsOrNull];
    v8 = [waypointsOrNull2 objectAtIndexedSubscript:index];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9;
  }

  return v10;
}

- (WaypointSet)initWithWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  v19.receiver = self;
  v19.super_class = WaypointSet;
  v5 = [(WaypointSet *)&v19 init];
  if (v5)
  {
    v6 = [waypointsCopy copy];
    waypointsOrNull = v5->_waypointsOrNull;
    v5->_waypointsOrNull = v6;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v5->_waypointsOrNull;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = 0;
            goto LABEL_12;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:

    v5->_areAllValidWaypoints = v13;
  }

  return v5;
}

@end