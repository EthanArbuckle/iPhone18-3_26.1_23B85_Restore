@interface HMPBMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addHapCategories:(uint64_t)categories;
- (uint64_t)addHapCharacteristics:(uint64_t)characteristics;
- (uint64_t)addHapServices:(uint64_t)services;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation HMPBMetadata

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_hapCharacteristics hash]^ v3;
  v5 = [(NSMutableArray *)self->_hapServices hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_hapCategories hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_version != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  hapCharacteristics = self->_hapCharacteristics;
  if (hapCharacteristics | *(equalCopy + 2) && ![(NSMutableArray *)hapCharacteristics isEqual:?])
  {
    goto LABEL_13;
  }

  hapServices = self->_hapServices;
  if (hapServices | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)hapServices isEqual:?])
    {
      goto LABEL_13;
    }
  }

  hapCategories = self->_hapCategories;
  if (hapCategories | *(equalCopy + 1))
  {
    v9 = [(NSMutableArray *)hapCategories isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_version;
    *(v5 + 36) |= 1u;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = self->_hapCharacteristics;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v35 + 1) + 8 * v11) copyWithZone:zone];
        [(HMPBMetadata *)v6 addHapCharacteristics:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v9);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = self->_hapServices;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      v17 = 0;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v31 + 1) + 8 * v17) copyWithZone:zone];
        [(HMPBMetadata *)v6 addHapServices:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v15);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = self->_hapCategories;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v27 + 1) + 8 * v23) copyWithZone:{zone, v27}];
        [(HMPBMetadata *)v6 addHapCategories:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v21);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)addHapCharacteristics:(uint64_t)characteristics
{
  v3 = a2;
  v4 = v3;
  if (characteristics)
  {
    v5 = *(characteristics + 16);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(characteristics + 16);
      *(characteristics + 16) = v6;

      v5 = *(characteristics + 16);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)addHapServices:(uint64_t)services
{
  v3 = a2;
  v4 = v3;
  if (services)
  {
    v5 = *(services + 24);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(services + 24);
      *(services + 24) = v6;

      v5 = *(services + 24);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)addHapCategories:(uint64_t)categories
{
  v3 = a2;
  v4 = v3;
  if (categories)
  {
    v5 = *(categories + 8);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(categories + 8);
      *(categories + 8) = v6;

      v5 = *(categories + 8);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)writeTo:(id)to
{
  v40 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_hapCharacteristics;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_hapServices;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_hapCategories;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)readFrom:(id)from
{
  fromCopy = from;
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v9 = [fromCopy position] + 1;
        if (v9 >= [fromCopy position] && (v10 = objc_msgSend(fromCopy, "position") + 1, v10 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v8 |= (v26 & 0x7F) << v6;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [fromCopy hasError] ? 0 : v8;
LABEL_15:
      if (([fromCopy hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 2)
      {
        if (v14 == 3)
        {
          v15 = objc_alloc_init(HMPBMetadataService);
          [(HMPBMetadata *)self addHapServices:v15];
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !HMPBMetadataServiceReadFrom(v15, fromCopy))
          {
LABEL_49:

LABEL_50:
            LOBYTE(v24) = 0;
            goto LABEL_48;
          }

          goto LABEL_41;
        }

        if (v14 == 4)
        {
          v15 = objc_alloc_init(HMPBMetadataCategory);
          [(HMPBMetadata *)self addHapCategories:v15];
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !HMPBMetadataCategoryReadFrom(v15, fromCopy))
          {
            goto LABEL_49;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v26 & 0x7F) << v16;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v12 = v17++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_45;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_45:
          self->_version = v22;
          goto LABEL_46;
        }

        if (v14 == 2)
        {
          v15 = objc_alloc_init(HMPBMetadataCharacteristic);
          [(HMPBMetadata *)self addHapCharacteristics:v15];
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !HMPBMetadataCharacteristicReadFrom(v15, fromCopy))
          {
            goto LABEL_49;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_46:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v24 = [fromCopy hasError] ^ 1;
LABEL_48:

  return v24;
}

- (id)dictionaryRepresentation
{
  v43 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_version];
    [dictionary setObject:v4 forKey:@"version"];
  }

  if ([(NSMutableArray *)self->_hapCharacteristics count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_hapCharacteristics, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = self->_hapCharacteristics;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v37;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"hapCharacteristics"];
  }

  if ([(NSMutableArray *)self->_hapServices count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_hapServices, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = self->_hapServices;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"hapServices"];
  }

  if ([(NSMutableArray *)self->_hapCategories count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_hapCategories, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = self->_hapCategories;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v28 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation3];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v22);
    }

    [dictionary setObject:v19 forKey:@"hapCategories"];
  }

  v26 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBMetadata;
  v4 = [(HMPBMetadata *)&v8 description];
  dictionaryRepresentation = [(HMPBMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end