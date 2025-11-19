@interface AVMediaSelectionKeyValueOption
- (AVMediaSelectionKeyValueOption)initWithAsset:(id)a3 group:(id)a4 dictionary:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)locale;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVMediaSelectionKeyValueOption

- (AVMediaSelectionKeyValueOption)initWithAsset:(id)a3 group:(id)a4 dictionary:(id)a5
{
  v10.receiver = self;
  v10.super_class = AVMediaSelectionKeyValueOption;
  v7 = [(AVMediaSelectionOption *)&v10 initWithGroup:a4];
  v8 = v7;
  if (v7)
  {
    if (a4 && a5)
    {
      v7->_groupID = [a4 _groupID];
      v8->_groupMediaType = [objc_msgSend(a4 "_groupMediaType")];
      v8->_optionMediaType = [objc_msgSend(a5 objectForKey:{*MEMORY[0x1E69737C8]), "copy"}];
      v8->_dictionary = [a5 copy];
      v8->_localizedMediaSelectionOptionDisplayNames = [objc_msgSend(a4 "_localizedMediaSelectionOptionDisplayNames")];
      v8->_weakReferenceToGroup = [a4 _weakReference];
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
  v3.receiver = self;
  v3.super_class = AVMediaSelectionKeyValueOption;
  [(AVMediaSelectionOption *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 _groupID];
  groupID = self->_groupID;
  if (groupID)
  {
    if (([groupID isEqual:v5] & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = [a3 _groupMediaType];
  groupMediaType = self->_groupMediaType;
  if (!groupMediaType)
  {
    if (!v8)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (([groupMediaType isEqual:v8] & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  dictionary = self->_dictionary;
  v11 = [a3 dictionary];

  return [(NSDictionary *)dictionary isEqual:v11];
}

- (unint64_t)hash
{
  v3 = [self->_groupID hash];
  v4 = [self->_groupMediaType hash] ^ v3;
  return v4 ^ [(NSDictionary *)self->_dictionary hash];
}

- (id)locale
{
  result = [(NSDictionary *)self->_dictionary objectForKey:*MEMORY[0x1E6973798]];
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:result];

    return v3;
  }

  return result;
}

@end