@interface NSMetadataItem
- (NSArray)attributes;
- (NSDictionary)valuesForAttributes:(NSArray *)keys;
- (id)_init:(id)_init;
- (id)valueForAttribute:(NSString *)key;
- (id)valueForKey:(id)key;
- (void)dealloc;
@end

@implementation NSMetadataItem

- (id)_init:(id)_init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSMetadataItem;
  v4 = [(NSMetadataItem *)&v6 init];
  v4->_item = _init;
  v4->_reserved = objc_alloc_init(_NSMetadataItemPrivateIvars);
  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSMetadataItem;
  [(NSMetadataItem *)&v3 dealloc];
}

- (id)valueForKey:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  if (key)
  {
    if ([key isEqualToString:@"attributes"])
    {

      return [(NSMetadataItem *)self attributes];
    }

    else if ([@"kMDItemPath" isEqualToString:key] || (v6 = *(self->_reserved + 1), objc_msgSend(v6, "_isMDQuery")) && (objc_msgSend(objc_msgSend(v6, "_allAttributes"), "containsObject:", key) & 1) != 0 || -[NSArray containsObject:](-[NSMetadataItem attributes](self, "attributes"), "containsObject:", key))
    {

      return [(NSMetadataItem *)self valueForAttribute:key];
    }

    else
    {
      v7.receiver = self;
      v7.super_class = NSMetadataItem;
      return [(NSMetadataItem *)&v7 valueForKey:?];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSMetadataItem;
    return [(NSMetadataItem *)&v8 valueForKey:?];
  }
}

- (id)valueForAttribute:(NSString *)key
{
  v5 = *(self->_reserved + 1);
  if (![v5 _isMDQuery] || !objc_msgSend(objc_msgSend(v5, "_allAttributes"), "containsObject:", key) || (v6 = objc_msgSend(v5, "indexOfResult:", self), v6 == 0x7FFFFFFFFFFFFFFFLL) || (result = objc_msgSend(v5, "valueOfAttribute:forResultAtIndex:", key, v6)) == 0)
  {
    v8 = [objc_msgSend(self->_item attributeForName:{key), "copy"}];

    return v8;
  }

  return result;
}

- (NSDictionary)valuesForAttributes:(NSArray *)keys
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(self->_reserved + 1);
  if (![v5 _isMDQuery])
  {
    return [objc_msgSend(self->_item attributesForNames:{keys), "copy"}];
  }

  _allAttributes = [v5 _allAttributes];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(NSArray *)keys countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(keys);
      }

      if (![_allAttributes containsObject:*(*(&v25 + 1) + 8 * v10)])
      {
        return [objc_msgSend(self->_item attributesForNames:{keys), "copy"}];
      }

      if (v8 == ++v10)
      {
        v8 = [(NSArray *)keys countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  v11 = [v5 indexOfResult:self];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return [objc_msgSend(self->_item attributesForNames:{keys), "copy"}];
  }

  v12 = v11;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [(NSArray *)keys countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(keys);
        }

        -[NSDictionary setObject:forKey:](dictionary, "setObject:forKey:", [v5 valueOfAttribute:*(*(&v20 + 1) + 8 * i) forResultAtIndex:v12], *(*(&v20 + 1) + 8 * i));
      }

      v15 = [(NSArray *)keys countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v15);
  }

  if (!dictionary)
  {
    return [objc_msgSend(self->_item attributesForNames:{keys), "copy"}];
  }

  return dictionary;
}

- (NSArray)attributes
{
  result = [objc_msgSend(self->_item "attributeNames")];
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

@end