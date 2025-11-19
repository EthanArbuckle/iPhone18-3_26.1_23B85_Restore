@interface ADRotatingIdentifiers
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addExperimentBuckets:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ADRotatingIdentifiers

- (void)addExperimentBuckets:(id)a3
{
  v4 = a3;
  experimentBuckets = self->_experimentBuckets;
  v8 = v4;
  if (!experimentBuckets)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_experimentBuckets;
    self->_experimentBuckets = v6;

    v4 = v8;
    experimentBuckets = self->_experimentBuckets;
  }

  [(NSMutableArray *)experimentBuckets addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADRotatingIdentifiers;
  v4 = [(ADRotatingIdentifiers *)&v8 description];
  v5 = [(ADRotatingIdentifiers *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_experimentBuckets count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_experimentBuckets, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_experimentBuckets;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"experimentBuckets"];
  }

  rotatedAnonymousId = self->_rotatedAnonymousId;
  if (rotatedAnonymousId)
  {
    [v3 setObject:rotatedAnonymousId forKey:@"rotatedAnonymousId"];
  }

  anonymousSessionId = self->_anonymousSessionId;
  if (anonymousSessionId)
  {
    [v3 setObject:anonymousSessionId forKey:@"anonymousSessionId"];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_experimentBuckets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_rotatedAnonymousId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_anonymousSessionId)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(ADRotatingIdentifiers *)self experimentBucketsCount])
  {
    [v9 clearExperimentBuckets];
    v4 = [(ADRotatingIdentifiers *)self experimentBucketsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ADRotatingIdentifiers *)self experimentBucketsAtIndex:i];
        [v9 addExperimentBuckets:v7];
      }
    }
  }

  if (self->_rotatedAnonymousId)
  {
    [v9 setRotatedAnonymousId:?];
  }

  v8 = v9;
  if (self->_anonymousSessionId)
  {
    [v9 setAnonymousSessionId:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_experimentBuckets;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * v10) copyWithZone:{a3, v18}];
        [v5 addExperimentBuckets:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_rotatedAnonymousId copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_anonymousSessionId copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((experimentBuckets = self->_experimentBuckets, !(experimentBuckets | v4[2])) || -[NSMutableArray isEqual:](experimentBuckets, "isEqual:")) && ((rotatedAnonymousId = self->_rotatedAnonymousId, !(rotatedAnonymousId | v4[3])) || -[NSString isEqual:](rotatedAnonymousId, "isEqual:")))
  {
    anonymousSessionId = self->_anonymousSessionId;
    if (anonymousSessionId | v4[1])
    {
      v8 = [(NSString *)anonymousSessionId isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_experimentBuckets hash];
  v4 = [(NSString *)self->_rotatedAnonymousId hash]^ v3;
  return v4 ^ [(NSString *)self->_anonymousSessionId hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4[2];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ADRotatingIdentifiers *)self addExperimentBuckets:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (v4[3])
  {
    [(ADRotatingIdentifiers *)self setRotatedAnonymousId:?];
  }

  if (v4[1])
  {
    [(ADRotatingIdentifiers *)self setAnonymousSessionId:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end