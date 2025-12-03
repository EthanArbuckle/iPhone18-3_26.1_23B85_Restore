@interface ATXPBFaceGalleryEvent
+ (uint64_t)itemsType;
- (BOOL)hasConfiguration;
- (BOOL)isEqual:(id)equal;
- (__CFString)eventTypeAsString:(__CFString *)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)itemsAtIndex:(id *)index;
- (uint64_t)StringAsEventType:(uint64_t)type;
- (uint64_t)addItems:(uint64_t)items;
- (uint64_t)clearItems;
- (uint64_t)configuration;
- (uint64_t)eventType;
- (uint64_t)hasEventType;
- (uint64_t)items;
- (uint64_t)itemsCount;
- (uint64_t)setEventType:(uint64_t)result;
- (uint64_t)setHasEventType:(uint64_t)result;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setConfiguration:(uint64_t)configuration;
- (void)setItems:(uint64_t)items;
- (void)writeTo:(id)to;
@end

@implementation ATXPBFaceGalleryEvent

+ (uint64_t)itemsType
{
  objc_opt_self();

  return objc_opt_class();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBFaceGalleryEvent;
  v4 = [(ATXPBFaceGalleryEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBFaceGalleryEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    eventType = self->_eventType;
    if (eventType >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v5 = off_1E80C3A48[eventType];
    }

    [dictionary setObject:v5 forKey:@"eventType"];
  }

  configuration = self->_configuration;
  if (configuration)
  {
    dictionaryRepresentation = [(ATXPBFaceGalleryConfiguration *)configuration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"configuration"];
  }

  if ([(NSMutableArray *)self->_items count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_items, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_items;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    [dictionary setObject:v8 forKey:@"items"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_configuration)
  {
    PBDataWriterWriteSubmessage();
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
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_eventType;
    *(v5 + 32) |= 1u;
  }

  v7 = [(ATXPBFaceGalleryConfiguration *)self->_configuration copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_items;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) copyWithZone:{zone, v16}];
        [(ATXPBFaceGalleryEvent *)v6 addItems:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_eventType != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  configuration = self->_configuration;
  if (configuration | *(equalCopy + 1) && ![(ATXPBFaceGalleryConfiguration *)configuration isEqual:?])
  {
    goto LABEL_11;
  }

  items = self->_items;
  if (items | *(equalCopy + 3))
  {
    v7 = [(NSMutableArray *)items isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_eventType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ATXPBFaceGalleryConfiguration *)self->_configuration hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_items hash];
}

- (uint64_t)eventType
{
  if (result)
  {
    if (*(result + 32))
    {
      return *(result + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)setEventType:(uint64_t)result
{
  if (result)
  {
    *(result + 32) |= 1u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setHasEventType:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = *(result + 32) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasEventType
{
  if (result)
  {
    return *(result + 32) & 1;
  }

  return result;
}

- (__CFString)eventTypeAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 4)
  {
    string = off_1E80C3A48[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsEventType:(uint64_t)type
{
  v3 = a2;
  v4 = v3;
  if (type)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Unknown"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"GalleryDidAppear"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"GalleryDidDisappear"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"GalleryItemsDidAppear"])
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasConfiguration
{
  if (result)
  {
    return *(result + 8) != 0;
  }

  return result;
}

- (uint64_t)clearItems
{
  if (result)
  {
    return [*(result + 24) removeAllObjects];
  }

  return result;
}

- (uint64_t)addItems:(uint64_t)items
{
  v3 = a2;
  v4 = v3;
  if (items)
  {
    v5 = *(items + 24);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(items + 24);
      *(items + 24) = v6;

      v5 = *(items + 24);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)itemsCount
{
  if (result)
  {
    return [*(result + 24) count];
  }

  return result;
}

- (id)itemsAtIndex:(id *)index
{
  if (index)
  {
    index = [index[3] objectAtIndex:a2];
    v2 = vars8;
  }

  return index;
}

- (void)copyTo:(uint64_t)to
{
  v8 = a2;
  if (to)
  {
    if (*(to + 32))
    {
      *(v8 + 4) = *(to + 16);
      *(v8 + 32) |= 1u;
    }

    v3 = *(to + 8);
    if (v3)
    {
      [(ATXPBFaceGalleryEvent *)v8 setConfiguration:v3];
    }

    if ([*(to + 24) count])
    {
      if (v8)
      {
        [*(v8 + 3) removeAllObjects];
      }

      v4 = [*(to + 24) count];
      if (v4)
      {
        v5 = v4;
        for (i = 0; i != v5; ++i)
        {
          v7 = [*(to + 24) objectAtIndex:i];
          [(ATXPBFaceGalleryEvent *)v8 addItems:v7];
        }
      }
    }
  }
}

- (void)setConfiguration:(uint64_t)configuration
{
  if (configuration)
  {
    OUTLINED_FUNCTION_2(configuration, a2, 8);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (from)
  {
    if (v3[8])
    {
      *(from + 16) = v3[4];
      *(from + 32) |= 1u;
    }

    v5 = *(from + 8);
    v6 = *(v4 + 1);
    if (v5)
    {
      if (v6)
      {
        [(ATXPBFaceGalleryConfiguration *)v5 mergeFrom:v6];
      }
    }

    else if (v6)
    {
      objc_storeStrong((from + 8), v6);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = *(v4 + 3);
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(ATXPBFaceGalleryEvent *)from addItems:?];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (uint64_t)configuration
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)items
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setItems:(uint64_t)items
{
  if (items)
  {
    OUTLINED_FUNCTION_2(items, a2, 24);
  }
}

@end