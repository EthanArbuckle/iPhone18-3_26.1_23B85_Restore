@interface CTFeatureSetting
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDictionary:(id)dictionary;
- (BOOL)isEqualToFeatureSetting:(_BOOL8)result;
- (CTFeatureSetting)initWithDictionary:(id)dictionary;
- (uint64_t)selector;
- (uint64_t)tag;
- (uint64_t)type;
- (uint64_t)value;
- (unint64_t)hash;
- (void)dealloc;
- (void)initWithNormalizedDictionary:(void *)dictionary;
- (void)initWithType:(uint64_t)type selector:(uint64_t)selector tag:(NSNumber *)tag value:;
@end

@implementation CTFeatureSetting

- (unint64_t)hash
{
  if (self)
  {
    v3 = [(NSDictionary *)self->_dictionary objectForKey:@"CTFeatureTypeIdentifier"];
    if (v3)
    {
      unsignedShortValue = [v3 unsignedShortValue];
      return ([-[NSDictionary objectForKey:](self->_dictionary objectForKey:{@"CTFeatureSelectorIdentifier", "unsignedShortValue"}] | (unsignedShortValue << 16));
    }

    v6 = [-[NSDictionary objectForKey:](self->_dictionary objectForKey:{@"CTFeatureOpenTypeTag", "hash"}];
    v7 = [(NSDictionary *)self->_dictionary objectForKey:@"CTFeatureOpenTypeValue"];
  }

  else
  {
    v6 = [0 hash];
    v7 = 0;
  }

  return v6 + [v7 unsignedIntValue];
}

- (uint64_t)selector
{
  if (result)
  {
    return [*(result + 8) objectForKey:@"CTFeatureSelectorIdentifier"];
  }

  return result;
}

- (uint64_t)type
{
  if (result)
  {
    return [*(result + 8) objectForKey:@"CTFeatureTypeIdentifier"];
  }

  return result;
}

- (uint64_t)tag
{
  if (result)
  {
    return [*(result + 8) objectForKey:@"CTFeatureOpenTypeTag"];
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CTFeatureSetting;
  [(CTFeatureSetting *)&v3 dealloc];
}

- (void)initWithNormalizedDictionary:(void *)dictionary
{
  if (!dictionary)
  {
    return 0;
  }

  v5.receiver = dictionary;
  v5.super_class = CTFeatureSetting;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[1] = a2;
  }

  return v3;
}

- (CTFeatureSetting)initWithDictionary:(id)dictionary
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [(CTFeatureSetting *)self initWithNormalizedDictionary:dictionary];
  }

  v9 = -21846;
  if (GetSettingValue<__CFNumber const*,unsigned short>([dictionary objectForKey:@"CTFeatureTypeIdentifier"], &v9) && v9)
  {
    if (GetSettingValue<__CFNumber const*,unsigned short>([dictionary objectForKey:@"CTFeatureSelectorIdentifier"], 0))
    {
      return [(CTFeatureSetting *)self initWithNormalizedDictionary:dictionary];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [(CTFeatureSetting *)self initWithNormalizedDictionary:dictionary];
    }
  }

  else
  {
    [dictionary objectForKey:@"CTFeatureOpenTypeTag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [dictionary objectForKey:@"CTFeatureOpenTypeValue"];
      v7 = ValidatedValue(v6);
      if (v7)
      {
        v8 = v7;
        if (v7 != v6)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionary];
          [dictionary setObject:v8 forKey:@"CTFeatureOpenTypeValue"];
        }

        return [(CTFeatureSetting *)self initWithNormalizedDictionary:dictionary];
      }
    }
  }

  return 0;
}

- (void)initWithType:(uint64_t)type selector:(uint64_t)selector tag:(NSNumber *)tag value:
{
  if (self)
  {
    v9 = ValidatedValue(tag);
    if (v9)
    {
      v10 = v9;
      if (a2)
      {
        v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{a2, @"CTFeatureTypeIdentifier", type, @"CTFeatureSelectorIdentifier", selector, @"CTFeatureOpenTypeTag", v9, @"CTFeatureOpenTypeValue", 0}];
        v12 = [self initWithDictionary:v11];
LABEL_7:
        v13 = v12;

        return v13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{selector, @"CTFeatureOpenTypeTag", v10, @"CTFeatureOpenTypeValue", 0}];
        v12 = [(CTFeatureSetting *)self initWithNormalizedDictionary:v11];
        goto LABEL_7;
      }
    }
  }

  return 0;
}

- (uint64_t)value
{
  if (result)
  {
    return [*(result + 8) objectForKey:@"CTFeatureOpenTypeValue"];
  }

  return result;
}

- (BOOL)isEqualToDictionary:(id)dictionary
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [(CTFeatureSetting *)self isEqualToFeatureSetting:dictionary];
  }

  else
  {
    dictionary = self->_dictionary;

    return [(NSDictionary *)dictionary isEqualToDictionary:dictionary];
  }
}

- (BOOL)isEqualToFeatureSetting:(_BOOL8)result
{
  if (result)
  {
    v3 = result;
    v4 = [*(result + 8) objectForKey:@"CTFeatureTypeIdentifier"];
    result = 1;
    if (!a2 || (v5 = v4) == 0 || (v6 = [*(a2 + 8) objectForKey:@"CTFeatureTypeIdentifier"], v5 != v6) && (!v6 || !CFEqual(v5, v6)) || (v7 = objc_msgSend(*(v3 + 8), "objectForKey:", @"CTFeatureSelectorIdentifier"), v8 = objc_msgSend(*(a2 + 8), "objectForKey:", @"CTFeatureSelectorIdentifier"), v7 != v8) && (v7 ? (v9 = v8 == 0) : (v9 = 1), v9 || !CFEqual(v7, v8)))
    {
      v10 = [*(v3 + 8) objectForKey:@"CTFeatureOpenTypeTag"];
      if (!a2)
      {
        return 0;
      }

      v11 = v10;
      if (!v10)
      {
        return 0;
      }

      v12 = [*(a2 + 8) objectForKey:@"CTFeatureOpenTypeTag"];
      if (v11 != v12 && (!v12 || !CFEqual(v11, v12)))
      {
        return 0;
      }

      v13 = [*(v3 + 8) objectForKey:@"CTFeatureOpenTypeValue"];
      v14 = [*(a2 + 8) objectForKey:@"CTFeatureOpenTypeValue"];
      if (v13 != v14)
      {
        v15 = !v13 || v14 == 0;
        if (v15 || !CFEqual(v13, v14))
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [(CTFeatureSetting *)self isEqualToFeatureSetting:equal];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dictionary = self->_dictionary;

      return [(NSDictionary *)dictionary isEqualToDictionary:equal];
    }

    else
    {
      return 0;
    }
  }
}

@end