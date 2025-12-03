@interface AVDateRangeMetadataGroup
+ (id)_figMetadataArrayForMetadataItems:(id)items;
+ (id)_metadataItemsForFigMetadataArray:(id)array;
- (AVDateRangeMetadataGroup)init;
- (AVDateRangeMetadataGroup)initWithItems:(NSArray *)items startDate:(NSDate *)startDate endDate:(NSDate *)endDate;
- (AVDateRangeMetadataGroup)initWithPropertyList:(id)list;
- (BOOL)isEqual:(id)equal;
- (id)_initWithTaggedRangeMetadataDictionary:(id)dictionary items:(id)items;
- (id)_taggedRangeMetadataDictionary;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_extractPropertiesFromTaggedRangeMetadataDictionary:(id)dictionary;
- (void)dealloc;
@end

@implementation AVDateRangeMetadataGroup

- (AVDateRangeMetadataGroup)init
{
  array = [MEMORY[0x1E695DEC8] array];
  date = [MEMORY[0x1E695DF00] date];

  return [(AVDateRangeMetadataGroup *)self initWithItems:array startDate:date endDate:0];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [AVMutableDateRangeMetadataGroup allocWithZone:zone];
  _taggedRangeMetadataDictionary = [(AVDateRangeMetadataGroup *)self _taggedRangeMetadataDictionary];
  items = [(AVDateRangeMetadataGroup *)self items];

  return [(AVMutableDateRangeMetadataGroup *)v4 _initWithTaggedRangeMetadataDictionary:_taggedRangeMetadataDictionary items:items];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, startDate=%@, endDate=%@ classifyingLabel=%@ uniqueID=%@ items=%@>", NSStringFromClass(v4), self, -[AVDateRangeMetadataGroup startDate](self, "startDate"), -[AVDateRangeMetadataGroup endDate](self, "endDate"), -[AVDateRangeMetadataGroup classifyingLabel](self, "classifyingLabel"), -[AVDateRangeMetadataGroup uniqueID](self, "uniqueID"), -[AVDateRangeMetadataGroup items](self, "items")];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_19;
  }

  if (!equal || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v15) = 0;
    return v15;
  }

  startDate = [(AVDateRangeMetadataGroup *)self startDate];
  startDate2 = [equal startDate];
  endDate = [(AVDateRangeMetadataGroup *)self endDate];
  endDate2 = [equal endDate];
  items = [(AVDateRangeMetadataGroup *)self items];
  items2 = [equal items];
  classifyingLabel = [(AVDateRangeMetadataGroup *)self classifyingLabel];
  classifyingLabel2 = [equal classifyingLabel];
  uniqueID = [(AVDateRangeMetadataGroup *)self uniqueID];
  uniqueID2 = [equal uniqueID];
  cueingOptions = [(AVDateRangeMetadataGroup *)self cueingOptions];
  cueingOptions2 = [equal cueingOptions];
  if ((startDate == startDate2 || (v15 = -[NSDate isEqual:](startDate, "isEqual:", startDate2)) != 0) && (endDate == endDate2 || (v15 = -[NSDate isEqual:](endDate, "isEqual:", endDate2)) != 0) && (items == items2 || (v15 = -[NSArray isEqual:](items, "isEqual:", items2)) != 0) && (classifyingLabel == classifyingLabel2 || (v15 = [classifyingLabel isEqual:classifyingLabel2]) != 0) && (uniqueID == uniqueID2 || (v15 = objc_msgSend(uniqueID, "isEqual:")) != 0))
  {
    if (cueingOptions != cueingOptions2)
    {

      LOBYTE(v15) = [(NSString *)cueingOptions isEqual:cueingOptions2];
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

- (AVDateRangeMetadataGroup)initWithPropertyList:(id)list
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selfCopy = self;
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, "[propertyList isKindOfClass:[NSDictionary class]]"), 0}];
    objc_exception_throw(v13);
  }

  return [(AVDateRangeMetadataGroup *)self _initWithTaggedRangeMetadataDictionary:list items:0];
}

- (id)_initWithTaggedRangeMetadataDictionary:(id)dictionary items:(id)items
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
      if (items)
      {
        v6->_priv->metadataItems = [items copy];
      }

      [(AVDateRangeMetadataGroup *)v6 _extractPropertiesFromTaggedRangeMetadataDictionary:dictionary];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

+ (id)_figMetadataArrayForMetadataItems:(id)items
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (items)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(items);
          }

          [array addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "_figMetadataDictionary")}];
        }

        while (v6 != v8);
        v6 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return [array copy];
}

+ (id)_metadataItemsForFigMetadataArray:(id)array
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (array)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [array countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(array);
          }

          [array addObject:{+[AVMetadataItem _metadataItemWithFigMetadataDictionary:](AVMetadataItem, "_metadataItemWithFigMetadataDictionary:", *(*(&v10 + 1) + 8 * v8++))}];
        }

        while (v6 != v8);
        v6 = [array countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return [array copy];
}

- (id)_taggedRangeMetadataDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(AVDateRangeMetadataGroup *)self startDate])
  {
    startDate = [(AVDateRangeMetadataGroup *)self startDate];
    [dictionary setObject:startDate forKey:*MEMORY[0x1E6972CE0]];
  }

  if ([(AVDateRangeMetadataGroup *)self endDate])
  {
    endDate = [(AVDateRangeMetadataGroup *)self endDate];
    [dictionary setObject:endDate forKey:*MEMORY[0x1E6972CC0]];
  }

  if ([(AVDateRangeMetadataGroup *)self items])
  {
    v6 = [AVDateRangeMetadataGroup _figMetadataArrayForMetadataItems:[(AVDateRangeMetadataGroup *)self items]];
    [dictionary setObject:v6 forKey:*MEMORY[0x1E6972CD0]];
  }

  if ([(AVDateRangeMetadataGroup *)self classifyingLabel])
  {
    classifyingLabel = [(AVDateRangeMetadataGroup *)self classifyingLabel];
    [dictionary setObject:classifyingLabel forKey:*MEMORY[0x1E6972CA0]];
  }

  if ([(AVDateRangeMetadataGroup *)self uniqueID])
  {
    uniqueID = [(AVDateRangeMetadataGroup *)self uniqueID];
    [dictionary setObject:uniqueID forKey:*MEMORY[0x1E6972CC8]];
  }

  if ([(AVDateRangeMetadataGroup *)self cueingOptions])
  {
    cueingOptions = [(AVDateRangeMetadataGroup *)self cueingOptions];
    [dictionary setObject:cueingOptions forKey:*MEMORY[0x1E6972CA8]];
  }

  if ([(AVDateRangeMetadataGroup *)self discoveryTimestamp])
  {
    discoveryTimestamp = [(AVDateRangeMetadataGroup *)self discoveryTimestamp];
    [dictionary setObject:discoveryTimestamp forKey:*MEMORY[0x1E6972CB0]];
  }

  if ([(AVDateRangeMetadataGroup *)self modificationTimestamp])
  {
    modificationTimestamp = [(AVDateRangeMetadataGroup *)self modificationTimestamp];
    [dictionary setObject:modificationTimestamp forKey:*MEMORY[0x1E6972CD8]];
  }

  if (self->_priv->extraFigProperties)
  {
    [dictionary addEntriesFromDictionary:?];
  }

  v12 = MEMORY[0x1E695DF20];

  return [v12 dictionaryWithDictionary:dictionary];
}

- (void)_extractPropertiesFromTaggedRangeMetadataDictionary:(id)dictionary
{
  if (!dictionary || self->_priv->extraFigProperties)
  {
    return;
  }

  v31 = *MEMORY[0x1E6972CE0];
  v5 = [dictionary objectForKey:?];
  v30 = *MEMORY[0x1E6972CC0];
  v23 = [dictionary objectForKey:?];
  v29 = *MEMORY[0x1E6972CB8];
  v6 = [dictionary objectForKey:?];
  v28 = *MEMORY[0x1E6972CD0];
  v7 = [dictionary objectForKey:?];
  v27 = *MEMORY[0x1E6972CA0];
  v8 = [dictionary objectForKey:?];
  v26 = *MEMORY[0x1E6972CC8];
  v9 = [dictionary objectForKey:?];
  v21 = [dictionary objectForKey:*MEMORY[0x1E6972CA8]];
  v25 = *MEMORY[0x1E6972CB0];
  v10 = [dictionary objectForKey:?];
  v24 = *MEMORY[0x1E6972CD8];
  v22 = [dictionary objectForKey:?];
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
  v18 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionary];
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