@interface AVDateRangeMetadataGroup
+ (id)_figMetadataArrayForMetadataItems:(id)a3;
+ (id)_metadataItemsForFigMetadataArray:(id)a3;
- (AVDateRangeMetadataGroup)init;
- (AVDateRangeMetadataGroup)initWithItems:(NSArray *)items startDate:(NSDate *)startDate endDate:(NSDate *)endDate;
- (AVDateRangeMetadataGroup)initWithPropertyList:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithTaggedRangeMetadataDictionary:(id)a3 items:(id)a4;
- (id)_taggedRangeMetadataDictionary;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_extractPropertiesFromTaggedRangeMetadataDictionary:(id)a3;
- (void)dealloc;
@end

@implementation AVDateRangeMetadataGroup

- (AVDateRangeMetadataGroup)init
{
  v3 = [MEMORY[0x1E695DEC8] array];
  v4 = [MEMORY[0x1E695DF00] date];

  return [(AVDateRangeMetadataGroup *)self initWithItems:v3 startDate:v4 endDate:0];
}

- (AVDateRangeMetadataGroup)initWithItems:(NSArray *)items startDate:(NSDate *)startDate endDate:(NSDate *)endDate
{
  v11.receiver = self;
  v11.super_class = AVDateRangeMetadataGroup;
  v8 = [(AVDateRangeMetadataGroup *)&v11 init];
  if (v8)
  {
    v9 = objc_alloc_init(AVDateRangeMetadataGroupInternal);
    v8->_priv = v9;
    if (v9)
    {
      CFRetain(v9);
      v8->_priv->metadataItems = [(NSArray *)items copy];
      v8->_priv->startDate = [(NSDate *)startDate copy];
      v8->_priv->endDate = [(NSDate *)endDate copy];
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {

    CFRelease(self->_priv);
    priv = self->_priv;
  }

  v4.receiver = self;
  v4.super_class = AVDateRangeMetadataGroup;
  [(AVDateRangeMetadataGroup *)&v4 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [AVMutableDateRangeMetadataGroup allocWithZone:a3];
  v5 = [(AVDateRangeMetadataGroup *)self _taggedRangeMetadataDictionary];
  v6 = [(AVDateRangeMetadataGroup *)self items];

  return [(AVMutableDateRangeMetadataGroup *)v4 _initWithTaggedRangeMetadataDictionary:v5 items:v6];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, startDate=%@, endDate=%@ classifyingLabel=%@ uniqueID=%@ items=%@>", NSStringFromClass(v4), self, -[AVDateRangeMetadataGroup startDate](self, "startDate"), -[AVDateRangeMetadataGroup endDate](self, "endDate"), -[AVDateRangeMetadataGroup classifyingLabel](self, "classifyingLabel"), -[AVDateRangeMetadataGroup uniqueID](self, "uniqueID"), -[AVDateRangeMetadataGroup items](self, "items")];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_19;
  }

  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v15) = 0;
    return v15;
  }

  v5 = [(AVDateRangeMetadataGroup *)self startDate];
  v6 = [a3 startDate];
  v7 = [(AVDateRangeMetadataGroup *)self endDate];
  v8 = [a3 endDate];
  v9 = [(AVDateRangeMetadataGroup *)self items];
  v10 = [a3 items];
  v11 = [(AVDateRangeMetadataGroup *)self classifyingLabel];
  v12 = [a3 classifyingLabel];
  v18 = [(AVDateRangeMetadataGroup *)self uniqueID];
  v17 = [a3 uniqueID];
  v13 = [(AVDateRangeMetadataGroup *)self cueingOptions];
  v14 = [a3 cueingOptions];
  if ((v5 == v6 || (v15 = -[NSDate isEqual:](v5, "isEqual:", v6)) != 0) && (v7 == v8 || (v15 = -[NSDate isEqual:](v7, "isEqual:", v8)) != 0) && (v9 == v10 || (v15 = -[NSArray isEqual:](v9, "isEqual:", v10)) != 0) && (v11 == v12 || (v15 = [v11 isEqual:v12]) != 0) && (v18 == v17 || (v15 = objc_msgSend(v18, "isEqual:")) != 0))
  {
    if (v13 != v14)
    {

      LOBYTE(v15) = [(NSString *)v13 isEqual:v14];
      return v15;
    }

LABEL_19:
    LOBYTE(v15) = 1;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)[(AVDateRangeMetadataGroup *)self startDate] hash];
  v4 = [(NSDate *)[(AVDateRangeMetadataGroup *)self endDate] hash]^ v3;
  v5 = [(NSArray *)[(AVDateRangeMetadataGroup *)self items] hash];
  v6 = v4 ^ v5 ^ [-[AVDateRangeMetadataGroup classifyingLabel](self "classifyingLabel")];
  return v6 ^ [-[AVDateRangeMetadataGroup uniqueID](self "uniqueID")];
}

- (AVDateRangeMetadataGroup)initWithPropertyList:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = self;
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, "[propertyList isKindOfClass:[NSDictionary class]]"), 0}];
    objc_exception_throw(v13);
  }

  return [(AVDateRangeMetadataGroup *)self _initWithTaggedRangeMetadataDictionary:a3 items:0];
}

- (id)_initWithTaggedRangeMetadataDictionary:(id)a3 items:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVDateRangeMetadataGroup;
  v6 = [(AVDateRangeMetadataGroup *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVDateRangeMetadataGroupInternal);
    v6->_priv = v7;
    if (v7)
    {
      CFRetain(v7);
      if (a4)
      {
        v6->_priv->metadataItems = [a4 copy];
      }

      [(AVDateRangeMetadataGroup *)v6 _extractPropertiesFromTaggedRangeMetadataDictionary:a3];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

+ (id)_figMetadataArrayForMetadataItems:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(a3);
          }

          [v4 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "_figMetadataDictionary")}];
        }

        while (v6 != v8);
        v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return [v4 copy];
}

+ (id)_metadataItemsForFigMetadataArray:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(a3);
          }

          [v4 addObject:{+[AVMetadataItem _metadataItemWithFigMetadataDictionary:](AVMetadataItem, "_metadataItemWithFigMetadataDictionary:", *(*(&v10 + 1) + 8 * v8++))}];
        }

        while (v6 != v8);
        v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return [v4 copy];
}

- (id)_taggedRangeMetadataDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(AVDateRangeMetadataGroup *)self startDate])
  {
    v4 = [(AVDateRangeMetadataGroup *)self startDate];
    [v3 setObject:v4 forKey:*MEMORY[0x1E6972CE0]];
  }

  if ([(AVDateRangeMetadataGroup *)self endDate])
  {
    v5 = [(AVDateRangeMetadataGroup *)self endDate];
    [v3 setObject:v5 forKey:*MEMORY[0x1E6972CC0]];
  }

  if ([(AVDateRangeMetadataGroup *)self items])
  {
    v6 = [AVDateRangeMetadataGroup _figMetadataArrayForMetadataItems:[(AVDateRangeMetadataGroup *)self items]];
    [v3 setObject:v6 forKey:*MEMORY[0x1E6972CD0]];
  }

  if ([(AVDateRangeMetadataGroup *)self classifyingLabel])
  {
    v7 = [(AVDateRangeMetadataGroup *)self classifyingLabel];
    [v3 setObject:v7 forKey:*MEMORY[0x1E6972CA0]];
  }

  if ([(AVDateRangeMetadataGroup *)self uniqueID])
  {
    v8 = [(AVDateRangeMetadataGroup *)self uniqueID];
    [v3 setObject:v8 forKey:*MEMORY[0x1E6972CC8]];
  }

  if ([(AVDateRangeMetadataGroup *)self cueingOptions])
  {
    v9 = [(AVDateRangeMetadataGroup *)self cueingOptions];
    [v3 setObject:v9 forKey:*MEMORY[0x1E6972CA8]];
  }

  if ([(AVDateRangeMetadataGroup *)self discoveryTimestamp])
  {
    v10 = [(AVDateRangeMetadataGroup *)self discoveryTimestamp];
    [v3 setObject:v10 forKey:*MEMORY[0x1E6972CB0]];
  }

  if ([(AVDateRangeMetadataGroup *)self modificationTimestamp])
  {
    v11 = [(AVDateRangeMetadataGroup *)self modificationTimestamp];
    [v3 setObject:v11 forKey:*MEMORY[0x1E6972CD8]];
  }

  if (self->_priv->extraFigProperties)
  {
    [v3 addEntriesFromDictionary:?];
  }

  v12 = MEMORY[0x1E695DF20];

  return [v12 dictionaryWithDictionary:v3];
}

- (void)_extractPropertiesFromTaggedRangeMetadataDictionary:(id)a3
{
  if (!a3 || self->_priv->extraFigProperties)
  {
    return;
  }

  v31 = *MEMORY[0x1E6972CE0];
  v5 = [a3 objectForKey:?];
  v30 = *MEMORY[0x1E6972CC0];
  v23 = [a3 objectForKey:?];
  v29 = *MEMORY[0x1E6972CB8];
  v6 = [a3 objectForKey:?];
  v28 = *MEMORY[0x1E6972CD0];
  v7 = [a3 objectForKey:?];
  v27 = *MEMORY[0x1E6972CA0];
  v8 = [a3 objectForKey:?];
  v26 = *MEMORY[0x1E6972CC8];
  v9 = [a3 objectForKey:?];
  v21 = [a3 objectForKey:*MEMORY[0x1E6972CA8]];
  v25 = *MEMORY[0x1E6972CB0];
  v10 = [a3 objectForKey:?];
  v24 = *MEMORY[0x1E6972CD8];
  v22 = [a3 objectForKey:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
    }
  }

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = v11;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  v13 = v10;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
    }
  }

  v14 = v21;
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
    }
  }

  if (v21)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
    }
  }

  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
    }
  }

  if (v22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v22;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  self->_priv->startDate = [v5 copy];
  if (v23)
  {
    v16 = [v23 copy];
LABEL_39:
    self->_priv->endDate = v16;
    goto LABEL_40;
  }

  startDate = self->_priv->startDate;
  if (startDate && v19)
  {
    [v19 doubleValue];
    v16 = [(NSDate *)startDate dateByAddingTimeInterval:?];
    goto LABEL_39;
  }

LABEL_40:
  if (!self->_priv->metadataItems)
  {
    self->_priv->metadataItems = [AVDateRangeMetadataGroup _metadataItemsForFigMetadataArray:v20];
  }

  self->_priv->classifyingLabel = [v8 copy];
  self->_priv->uniqueID = [v9 copy];
  self->_priv->cueingOptions = [v14 copy];
  self->_priv->discoveryTimestamp = [v13 copy];
  self->_priv->modificationTimestamp = [v15 copy];
  v18 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a3];
  [v18 removeObjectForKey:v31];
  [v18 removeObjectForKey:v30];
  [v18 removeObjectForKey:v29];
  [v18 removeObjectForKey:v28];
  [v18 removeObjectForKey:v27];
  [v18 removeObjectForKey:v26];
  [v18 removeObjectForKey:v25];
  [v18 removeObjectForKey:v24];
  self->_priv->extraFigProperties = [v18 copy];
}

@end