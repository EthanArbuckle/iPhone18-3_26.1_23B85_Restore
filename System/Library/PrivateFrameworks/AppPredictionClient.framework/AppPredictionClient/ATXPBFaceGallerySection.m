@interface ATXPBFaceGallerySection
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)semanticTypeAsString:(int)a3;
- (id)typeAsString:(int)a3;
- (int)StringAsSemanticType:(id)a3;
- (int)StringAsType:(id)a3;
- (int)semanticType;
- (int)type;
- (unint64_t)hash;
- (void)addItems:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBFaceGallerySection

- (int)type
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)a3
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

- (id)typeAsString:(int)a3
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E80C3E08[a3];
  }

  return v4;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Full"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Scrollable"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Unity"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ScrollableSquares"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Tall"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addItems:(id)a3
{
  v4 = a3;
  items = self->_items;
  v8 = v4;
  if (!items)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_items;
    self->_items = v6;

    v4 = v8;
    items = self->_items;
  }

  [(NSMutableArray *)items addObject:v4];
}

- (int)semanticType
{
  if (*&self->_has)
  {
    return self->_semanticType;
  }

  else
  {
    return 0;
  }
}

- (id)semanticTypeAsString:(int)a3
{
  if (a3 >= 0xF)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E80C3E30[a3];
  }

  return v4;
}

- (int)StringAsSemanticType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FeaturedFaces"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FeaturedPhotos"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Focus"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Hero"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PhotoShuffle"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"WeatherAndAstronomy"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Kaleidoscope"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Emoji"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Unity"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"Pride"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"OSVersion"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"Collections"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"Color"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SpatialPhotos"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBFaceGallerySection;
  v4 = [(ATXPBFaceGallerySection *)&v8 description];
  v5 = [(ATXPBFaceGallerySection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    type = self->_type;
    if (type >= 5)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_1E80C3E08[type];
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  if ([(NSMutableArray *)self->_items count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_items, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_items;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"items"];
  }

  if (*&self->_has)
  {
    semanticType = self->_semanticType;
    if (semanticType >= 0xF)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_semanticType];
    }

    else
    {
      v14 = off_1E80C3E30[semanticType];
    }

    [v3 setObject:v14 forKey:@"semanticType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_items;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[5] = self->_type;
    *(v4 + 24) |= 2u;
  }

  v9 = v4;
  if ([(ATXPBFaceGallerySection *)self itemsCount])
  {
    [v9 clearItems];
    v5 = [(ATXPBFaceGallerySection *)self itemsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ATXPBFaceGallerySection *)self itemsAtIndex:i];
        [v9 addItems:v8];
      }
    }
  }

  if (*&self->_has)
  {
    *(v9 + 4) = self->_semanticType;
    *(v9 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_type;
    *(v5 + 24) |= 2u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_items;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:{a3, v14}];
        [v6 addItems:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if (*&self->_has)
  {
    *(v6 + 16) = self->_semanticType;
    *(v6 + 24) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_type != *(v4 + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_14;
  }

  items = self->_items;
  if (items | *(v4 + 1))
  {
    if (![(NSMutableArray *)items isEqual:?])
    {
LABEL_14:
      v7 = 0;
      goto LABEL_15;
    }

    has = self->_has;
  }

  v7 = (*(v4 + 24) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_semanticType != *(v4 + 4))
    {
      goto LABEL_14;
    }

    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_items hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_semanticType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if ((*(v4 + 24) & 2) != 0)
  {
    self->_type = *(v4 + 5);
    *&self->_has |= 2u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v4 + 1);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ATXPBFaceGallerySection *)self addItems:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (v5[6])
  {
    self->_semanticType = v5[4];
    *&self->_has |= 1u;
  }
}

@end