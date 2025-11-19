@interface HKCodableLocationCoordinateSeries
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCoordinates:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableLocationCoordinateSeries

- (void)addCoordinates:(id)a3
{
  v4 = a3;
  coordinates = self->_coordinates;
  v8 = v4;
  if (!coordinates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_coordinates;
    self->_coordinates = v6;

    v4 = v8;
    coordinates = self->_coordinates;
  }

  [(NSMutableArray *)coordinates addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableLocationCoordinateSeries;
  v4 = [(HKCodableLocationCoordinateSeries *)&v8 description];
  v5 = [(HKCodableLocationCoordinateSeries *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_coordinates count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_coordinates, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_coordinates;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"coordinates"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_resumeDate];
    [v3 setObject:v11 forKey:@"resumeDate"];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_coordinates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    resumeDate = self->_resumeDate;
    PBDataWriterWriteDoubleField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(HKCodableLocationCoordinateSeries *)self coordinatesCount])
  {
    [v8 clearCoordinates];
    v4 = [(HKCodableLocationCoordinateSeries *)self coordinatesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableLocationCoordinateSeries *)self coordinatesAtIndex:i];
        [v8 addCoordinates:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(v8 + 1) = *&self->_resumeDate;
    *(v8 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_coordinates;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{a3, v14}];
        [v5 addCoordinates:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_resumeDate;
    *(v5 + 24) |= 1u;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  coordinates = self->_coordinates;
  if (coordinates | *(v4 + 2))
  {
    if (![(NSMutableArray *)coordinates isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_resumeDate == *(v4 + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_coordinates hash];
  if (*&self->_has)
  {
    resumeDate = self->_resumeDate;
    if (resumeDate < 0.0)
    {
      resumeDate = -resumeDate;
    }

    *v4.i64 = floor(resumeDate + 0.5);
    v8 = (resumeDate - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(v4 + 2);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HKCodableLocationCoordinateSeries *)self addCoordinates:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 24))
  {
    self->_resumeDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end