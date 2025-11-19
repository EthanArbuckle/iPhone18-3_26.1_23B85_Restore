@interface ExternalURLQuery
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToExternalURLQuery:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (ExternalURLQuery)initWithQuery:(id)a3 coordinate:(CLLocationCoordinate2D)a4 muid:(unint64_t)a5 resultProviderId:(int)a6 contentProvider:(id)a7;
- (id)description;
- (unint64_t)hash;
@end

@implementation ExternalURLQuery

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ExternalURLQuery *)self isEqualToExternalURLQuery:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToExternalURLQuery:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_23;
  }

  v8 = [(ExternalURLQuery *)self query];
  if (v8 || ([v7 query], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(ExternalURLQuery *)self query];
    v5 = [v7 query];
    if (([v4 isEqualToString:v5] & 1) == 0)
    {

      v10 = 0;
      goto LABEL_20;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  [(ExternalURLQuery *)self coordinate];
  v12 = v11;
  [v7 coordinate];
  if (v12 == v13)
  {
    [(ExternalURLQuery *)self coordinate];
    v15 = v14;
    [v7 coordinate];
    if (v15 == v16)
    {
      v17 = [(ExternalURLQuery *)self muid];
      if (v17 == [v7 muid])
      {
        v18 = [(ExternalURLQuery *)self resultProviderId];
        if (v18 == [v7 resultProviderId])
        {
          v19 = [(ExternalURLQuery *)self contentProvider];
          if (v19 || ([v7 contentProvider], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v20 = [(ExternalURLQuery *)self contentProvider];
            v21 = [v7 contentProvider];
            v10 = [v20 isEqualToString:v21];

            if (v19)
            {

              if ((v9 & 1) == 0)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }

            v23 = v24;
          }

          else
          {
            v23 = 0;
            v10 = 1;
          }

          if ((v9 & 1) == 0)
          {
            goto LABEL_20;
          }

LABEL_19:

          goto LABEL_20;
        }
      }
    }
  }

  v10 = 0;
  if (v9)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (!v8)
  {
  }

LABEL_23:
  return v10;
}

- (unint64_t)hash
{
  v3 = [(ExternalURLQuery *)self query];
  v4 = [v3 hash];
  [(ExternalURLQuery *)self coordinate];
  v6 = fabs(v5);
  v7 = floor(v6 + 0.5);
  v8 = (v6 - v7) * 1.84467441e19;
  v9 = v7 - trunc(v7 * 5.42101086e-20) * 1.84467441e19;
  v10 = 2654435761u * v9;
  v11 = v10 + v8;
  if (v8 <= 0.0)
  {
    v11 = 2654435761u * v9;
  }

  v12 = v10 - fabs(v8);
  if (v8 < 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  [(ExternalURLQuery *)self coordinate];
  v15 = fabs(v14);
  v16 = floor(v15 + 0.5);
  v17 = (v15 - v16) * 1.84467441e19;
  v18 = v16 - trunc(v16 * 5.42101086e-20) * 1.84467441e19;
  v19 = 2654435761u * v18;
  v20 = v19 + v17;
  if (v17 <= 0.0)
  {
    v20 = 2654435761u * v18;
  }

  v21 = v19 - fabs(v17);
  if (v17 < 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v23 = v13 ^ v4 ^ v22 ^ (2654435761u * [(ExternalURLQuery *)self muid]);
  v24 = 2654435761 * [(ExternalURLQuery *)self resultProviderId];
  v25 = [(ExternalURLQuery *)self contentProvider];
  v26 = v24 ^ [v25 hash];

  return v23 ^ v26;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(ExternalURLQuery *)self query];
  [(ExternalURLQuery *)self coordinate];
  v6 = v5;
  [(ExternalURLQuery *)self coordinate];
  v8 = v7;
  v9 = [NSNumber numberWithUnsignedLongLong:[(ExternalURLQuery *)self muid]];
  v10 = [NSNumber numberWithInt:[(ExternalURLQuery *)self resultProviderId]];
  v11 = [(ExternalURLQuery *)self contentProvider];
  v12 = [NSString stringWithFormat:@"<%@: %p query=%@ coordinate=%lf, %lf muid=%@ resultProviderId=%@ contentProvider=%@>", v3, self, v4, v6, v8, v9, v10, v11];

  return v12;
}

- (ExternalURLQuery)initWithQuery:(id)a3 coordinate:(CLLocationCoordinate2D)a4 muid:(unint64_t)a5 resultProviderId:(int)a6 contentProvider:(id)a7
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v13 = a3;
  v14 = a7;
  v21.receiver = self;
  v21.super_class = ExternalURLQuery;
  v15 = [(ExternalURLQuery *)&v21 init];
  if (v15)
  {
    v16 = [v13 copy];
    query = v15->_query;
    v15->_query = v16;

    v15->_coordinate.latitude = latitude;
    v15->_coordinate.longitude = longitude;
    v15->_muid = a5;
    v15->_resultProviderId = a6;
    v18 = [v14 copy];
    contentProvider = v15->_contentProvider;
    v15->_contentProvider = v18;
  }

  return v15;
}

@end