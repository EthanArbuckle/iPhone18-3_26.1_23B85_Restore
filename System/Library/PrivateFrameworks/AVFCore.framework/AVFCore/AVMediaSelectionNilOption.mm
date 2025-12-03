@interface AVMediaSelectionNilOption
- (AVMediaSelectionNilOption)initWithGroup:(id)group;
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation AVMediaSelectionNilOption

- (AVMediaSelectionNilOption)initWithGroup:(id)group
{
  v11.receiver = self;
  v11.super_class = AVMediaSelectionNilOption;
  v4 = [(AVMediaSelectionOption *)&v11 initWithGroup:?];
  v5 = v4;
  if (v4)
  {
    if (group)
    {
      v4->_groupID = [group _groupID];
      v5->_groupMediaType = [objc_msgSend(group "_groupMediaType")];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v7 = dictionary;
      groupMediaType = v5->_groupMediaType;
      if (groupMediaType)
      {
        [dictionary setObject:groupMediaType forKey:*MEMORY[0x1E6973750]];
      }

      groupID = v5->_groupID;
      if (groupID)
      {
        [v7 setObject:groupID forKey:*MEMORY[0x1E6973740]];
      }

      v5->_dictionary = [v7 copy];
      v5->_weakReferenceToGroup = [group _weakReference];
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMediaSelectionNilOption;
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

  dictionary = self->_dictionary;
  dictionary = [equal dictionary];

  return [(NSDictionary *)dictionary isEqual:dictionary];
}

@end