@interface ATXPBFaceGalleryConfiguration
+ (uint64_t)sectionsType;
- (BOOL)isEqual:(id)equal;
- (__CFString)sourceAsString:(__CFString *)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sectionsAtIndex:(id *)index;
- (uint64_t)StringAsSource:(uint64_t)source;
- (uint64_t)addSections:(uint64_t)sections;
- (uint64_t)clearSections;
- (uint64_t)hasSource;
- (uint64_t)sections;
- (uint64_t)sectionsCount;
- (uint64_t)setHasSource:(uint64_t)result;
- (uint64_t)setSource:(uint64_t)result;
- (uint64_t)source;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setSections:(uint64_t)sections;
- (void)writeTo:(id)to;
@end

@implementation ATXPBFaceGalleryConfiguration

+ (uint64_t)sectionsType
{
  objc_opt_self();

  return objc_opt_class();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBFaceGalleryConfiguration;
  v4 = [(ATXPBFaceGalleryConfiguration *)&v8 description];
  dictionaryRepresentation = [(ATXPBFaceGalleryConfiguration *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_sections count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_sections, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_sections;
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

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"sections"];
  }

  if (*&self->_has)
  {
    source = self->_source;
    if (source)
    {
      if (source == 1)
      {
        v12 = @"Proactive";
      }

      else
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_source];
      }
    }

    else
    {
      v12 = @"Unknown";
    }

    [dictionary setObject:v12 forKey:@"source"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sections;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_sections;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [(ATXPBFaceGalleryConfiguration *)v5 addSections:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 16) = self->_source;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  sections = self->_sections;
  if (sections | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)sections isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_source == *(equalCopy + 4))
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
  v3 = [(NSMutableArray *)self->_sections hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_source;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (uint64_t)clearSections
{
  if (result)
  {
    return [*(result + 8) removeAllObjects];
  }

  return result;
}

- (uint64_t)addSections:(uint64_t)sections
{
  v3 = a2;
  v4 = v3;
  if (sections)
  {
    v5 = *(sections + 8);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(sections + 8);
      *(sections + 8) = v6;

      v5 = *(sections + 8);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)sectionsCount
{
  if (result)
  {
    return [*(result + 8) count];
  }

  return result;
}

- (id)sectionsAtIndex:(id *)index
{
  if (index)
  {
    index = [index[1] objectAtIndex:a2];
    v2 = vars8;
  }

  return index;
}

- (uint64_t)source
{
  if (result)
  {
    if (*(result + 20))
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

- (uint64_t)setSource:(uint64_t)result
{
  if (result)
  {
    *(result + 20) |= 1u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setHasSource:(uint64_t)result
{
  if (result)
  {
    *(result + 20) = *(result + 20) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasSource
{
  if (result)
  {
    return *(result + 20) & 1;
  }

  return result;
}

- (__CFString)sourceAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_11:

    return string;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      string = @"Proactive";

      return string;
    }

    string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];
    goto LABEL_11;
  }

  string = @"Unknown";

  return string;
}

- (uint64_t)StringAsSource:(uint64_t)source
{
  v3 = a2;
  v4 = v3;
  if (source)
  {
    if ([v3 isEqualToString:@"Unknown"])
    {
      source = 0;
    }

    else
    {
      source = [v4 isEqualToString:@"Proactive"];
    }
  }

  return source;
}

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (to)
  {
    v8 = v3;
    if ([*(to + 8) count])
    {
      if (v8)
      {
        [v8[1] removeAllObjects];
      }

      v4 = [*(to + 8) count];
      if (v4)
      {
        v5 = v4;
        for (i = 0; i != v5; ++i)
        {
          v7 = [*(to + 8) objectAtIndex:i];
          [(ATXPBFaceGalleryConfiguration *)v8 addSections:v7];
        }
      }
    }

    v3 = v8;
    if (*(to + 20))
    {
      *(v8 + 4) = *(to + 16);
      *(v8 + 20) |= 1u;
    }
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (from)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v3[1];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

          [(ATXPBFaceGalleryConfiguration *)from addSections:?];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    if (*(v4 + 20))
    {
      *(from + 16) = *(v4 + 4);
      *(from + 20) |= 1u;
    }
  }
}

- (uint64_t)sections
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (void)setSections:(uint64_t)sections
{
  if (sections)
  {
    objc_storeStrong((sections + 8), a2);
  }
}

@end