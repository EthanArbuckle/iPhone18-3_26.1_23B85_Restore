@interface RAPUserPathEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)traversalAsString:(int)a3;
- (int)StringAsTraversal:(id)a3;
- (int)traversal;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStepIndex:(BOOL)a3;
- (void)setHasTraversal:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RAPUserPathEntry

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 28);
  if (v6)
  {
    self->_routeIndex = *(v4 + 4);
    *&self->_has |= 1u;
    v6 = *(v4 + 28);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_stepIndex = *(v4 + 5);
  *&self->_has |= 2u;
  if ((*(v4 + 28) & 4) != 0)
  {
LABEL_4:
    self->_traversal = *(v4 + 6);
    *&self->_has |= 4u;
  }

LABEL_5:
  rerouteLocation = self->_rerouteLocation;
  v8 = v5[1];
  if (rerouteLocation)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v5;
    [(GEOLatLng *)rerouteLocation mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v5;
    [(RAPUserPathEntry *)self setRerouteLocation:?];
  }

  v5 = v9;
LABEL_14:
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(GEOLatLng *)self->_rerouteLocation hash:v3];
  }

  v6 = 2654435761 * self->_routeIndex;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_stepIndex;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_traversal;
  return v7 ^ v6 ^ v8 ^ [(GEOLatLng *)self->_rerouteLocation hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_routeIndex != *(v4 + 4))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_stepIndex != *(v4 + 5))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_traversal != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
    goto LABEL_19;
  }

  rerouteLocation = self->_rerouteLocation;
  if (rerouteLocation | *(v4 + 1))
  {
    v6 = [(GEOLatLng *)rerouteLocation isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_20:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 5) = self->_stepIndex;
    *(v5 + 28) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 4) = self->_routeIndex;
  *(v5 + 28) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 6) = self->_traversal;
    *(v5 + 28) |= 4u;
  }

LABEL_5:
  v8 = [(GEOLatLng *)self->_rerouteLocation copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[4] = self->_routeIndex;
    *(v4 + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[5] = self->_stepIndex;
  *(v4 + 28) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[6] = self->_traversal;
    *(v4 + 28) |= 4u;
  }

LABEL_5:
  if (self->_rerouteLocation)
  {
    v6 = v4;
    [v4 setRerouteLocation:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

LABEL_5:
  if (self->_rerouteLocation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_routeIndex];
    [v3 setObject:v5 forKey:@"routeIndex"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = [NSNumber numberWithUnsignedInt:self->_stepIndex];
  [v3 setObject:v6 forKey:@"stepIndex"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  traversal = self->_traversal;
  if (traversal >= 3)
  {
    v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_traversal];
  }

  else
  {
    v8 = *(&off_101655168 + traversal);
  }

  [v3 setObject:v8 forKey:@"traversal"];

LABEL_11:
  rerouteLocation = self->_rerouteLocation;
  if (rerouteLocation)
  {
    v10 = [(GEOLatLng *)rerouteLocation dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"rerouteLocation"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RAPUserPathEntry;
  v3 = [(RAPUserPathEntry *)&v7 description];
  v4 = [(RAPUserPathEntry *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (int)StringAsTraversal:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"STORED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"COMPLETED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MISSED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)traversalAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_101655168 + a3);
  }

  return v4;
}

- (void)setHasTraversal:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)traversal
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_traversal;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStepIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end