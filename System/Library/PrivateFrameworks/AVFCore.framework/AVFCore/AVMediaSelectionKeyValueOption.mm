@interface AVMediaSelectionKeyValueOption
- (AVMediaSelectionKeyValueOption)initWithAsset:(id)asset group:(id)group dictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)locale;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVMediaSelectionKeyValueOption

- (AVMediaSelectionKeyValueOption)initWithAsset:(id)asset group:(id)group dictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = AVMediaSelectionKeyValueOption;
  v7 = [(AVMediaSelectionOption *)&v10 initWithGroup:group];
  v8 = v7;
  if (v7)
  {
    if (group && dictionary)
    {
      v7->_groupID = [group _groupID];
      v8->_groupMediaType = [objc_msgSend(group "_groupMediaType")];
      v8->_optionMediaType = [objc_msgSend(dictionary objectForKey:{*MEMORY[0x1E69737C8]), "copy"}];
      v8->_dictionary = [dictionary copy];
      v8->_localizedMediaSelectionOptionDisplayNames = [objc_msgSend(group "_localizedMediaSelectionOptionDisplayNames")];
      v8->_weakReferenceToGroup = [group _weakReference];
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  _groupID = [equal _groupID];
  groupID = self->_groupID;
  if (groupID)
  {
    if (([groupID isEqual:_groupID] & 1) == 0)
    {
      return 0;
    }
  }

  else if (_groupID)
  {
    return 0;
  }

  _groupMediaType = [equal _groupMediaType];
  groupMediaType = self->_groupMediaType;
  if (!groupMediaType)
  {
    if (!_groupMediaType)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (([groupMediaType isEqual:_groupMediaType] & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  dictionary = self->_dictionary;
  dictionary = [equal dictionary];

  return [(NSDictionary *)dictionary isEqual:dictionary];
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