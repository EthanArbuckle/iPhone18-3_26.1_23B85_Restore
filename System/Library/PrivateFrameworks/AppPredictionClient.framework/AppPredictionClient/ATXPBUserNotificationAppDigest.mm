@interface ATXPBUserNotificationAppDigest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
- (unint64_t)hash;
- (void)addAppMarqueeGroups:(id)groups;
- (void)addNonAppMarqueeGroups:(id)groups;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBUserNotificationAppDigest

- (void)addAppMarqueeGroups:(id)groups
{
  groupsCopy = groups;
  appMarqueeGroups = self->_appMarqueeGroups;
  v8 = groupsCopy;
  if (!appMarqueeGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_appMarqueeGroups;
    self->_appMarqueeGroups = v6;

    groupsCopy = v8;
    appMarqueeGroups = self->_appMarqueeGroups;
  }

  [(NSMutableArray *)appMarqueeGroups addObject:groupsCopy];
}

- (void)addNonAppMarqueeGroups:(id)groups
{
  groupsCopy = groups;
  nonAppMarqueeGroups = self->_nonAppMarqueeGroups;
  v8 = groupsCopy;
  if (!nonAppMarqueeGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nonAppMarqueeGroups;
    self->_nonAppMarqueeGroups = v6;

    groupsCopy = v8;
    nonAppMarqueeGroups = self->_nonAppMarqueeGroups;
  }

  [(NSMutableArray *)nonAppMarqueeGroups addObject:groupsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBUserNotificationAppDigest;
  v4 = [(ATXPBUserNotificationAppDigest *)&v8 description];
  dictionaryRepresentation = [(ATXPBUserNotificationAppDigest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  if ([(NSMutableArray *)self->_appMarqueeGroups count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_appMarqueeGroups, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_appMarqueeGroups;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"appMarqueeGroups"];
  }

  if ([(NSMutableArray *)self->_nonAppMarqueeGroups count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_nonAppMarqueeGroups, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->_nonAppMarqueeGroups;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"nonAppMarqueeGroups"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_appMarqueeGroups;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_nonAppMarqueeGroups;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
  }

  if ([(ATXPBUserNotificationAppDigest *)self appMarqueeGroupsCount])
  {
    [toCopy clearAppMarqueeGroups];
    appMarqueeGroupsCount = [(ATXPBUserNotificationAppDigest *)self appMarqueeGroupsCount];
    if (appMarqueeGroupsCount)
    {
      v5 = appMarqueeGroupsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBUserNotificationAppDigest *)self appMarqueeGroupsAtIndex:i];
        [toCopy addAppMarqueeGroups:v7];
      }
    }
  }

  if ([(ATXPBUserNotificationAppDigest *)self nonAppMarqueeGroupsCount])
  {
    [toCopy clearNonAppMarqueeGroups];
    nonAppMarqueeGroupsCount = [(ATXPBUserNotificationAppDigest *)self nonAppMarqueeGroupsCount];
    if (nonAppMarqueeGroupsCount)
    {
      v9 = nonAppMarqueeGroupsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ATXPBUserNotificationAppDigest *)self nonAppMarqueeGroupsAtIndex:j];
        [toCopy addNonAppMarqueeGroups:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_appMarqueeGroups;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addAppMarqueeGroups:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_nonAppMarqueeGroups;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{zone, v21}];
        [v5 addNonAppMarqueeGroups:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((bundleId = self->_bundleId, !(bundleId | equalCopy[2])) || -[NSString isEqual:](bundleId, "isEqual:")) && ((appMarqueeGroups = self->_appMarqueeGroups, !(appMarqueeGroups | equalCopy[1])) || -[NSMutableArray isEqual:](appMarqueeGroups, "isEqual:")))
  {
    nonAppMarqueeGroups = self->_nonAppMarqueeGroups;
    if (nonAppMarqueeGroups | equalCopy[3])
    {
      v8 = [(NSMutableArray *)nonAppMarqueeGroups isEqual:?];
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
  v3 = [(NSString *)self->_bundleId hash];
  v4 = [(NSMutableArray *)self->_appMarqueeGroups hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_nonAppMarqueeGroups hash];
}

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(ATXPBUserNotificationAppDigest *)self setBundleId:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ATXPBUserNotificationAppDigest *)self addAppMarqueeGroups:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 3);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ATXPBUserNotificationAppDigest *)self addNonAppMarqueeGroups:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (id)initFromJSON:(id)n
{
  v33 = *MEMORY[0x1E69E9840];
  nCopy = n;
  v5 = [(ATXPBUserNotificationAppDigest *)self init];
  if (v5)
  {
    v6 = nCopy;
    v7 = [v6 objectForKeyedSubscript:@"bundleId"];
    v8 = [ATXJSONHelper unwrapObject:v7];
    bundleId = v5->_bundleId;
    v5->_bundleId = v8;

    v10 = [v6 objectForKeyedSubscript:@"appMarqueeGroups"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        v14 = 0;
        do
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[ATXPBUserNotificationDigestNotificationGroup alloc] initFromJSON:*(*(&v27 + 1) + 8 * v14)];
          [(ATXPBUserNotificationAppDigest *)v5 addAppMarqueeGroups:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }

    v16 = [v6 objectForKeyedSubscript:@"nonAppMarqueeGroups"];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[ATXPBUserNotificationDigestNotificationGroup alloc] initFromJSON:*(*(&v23 + 1) + 8 * v20)];
          [(ATXPBUserNotificationAppDigest *)v5 addNonAppMarqueeGroups:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"bundleId";
  v3 = [ATXJSONHelper wrapObject:self->_bundleId];
  v11[0] = v3;
  v10[1] = @"appMarqueeGroups";
  v4 = [(NSMutableArray *)self->_appMarqueeGroups _pas_mappedArrayWithTransform:&__block_literal_global_89];
  v5 = [ATXJSONHelper wrapObject:v4];
  v11[1] = v5;
  v10[2] = @"nonAppMarqueeGroups";
  v6 = [(NSMutableArray *)self->_nonAppMarqueeGroups _pas_mappedArrayWithTransform:&__block_literal_global_22_0];
  v7 = [ATXJSONHelper wrapObject:v6];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

@end