@interface AVMediaSelectionNilOption
- (AVMediaSelectionNilOption)initWithGroup:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)dealloc;
@end

@implementation AVMediaSelectionNilOption

- (AVMediaSelectionNilOption)initWithGroup:(id)a3
{
  v11.receiver = self;
  v11.super_class = AVMediaSelectionNilOption;
  v4 = [(AVMediaSelectionOption *)&v11 initWithGroup:?];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v4->_groupID = [a3 _groupID];
      v5->_groupMediaType = [objc_msgSend(a3 "_groupMediaType")];
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v7 = v6;
      groupMediaType = v5->_groupMediaType;
      if (groupMediaType)
      {
        [v6 setObject:groupMediaType forKey:*MEMORY[0x1E6973750]];
      }

      groupID = v5->_groupID;
      if (groupID)
      {
        [v7 setObject:groupID forKey:*MEMORY[0x1E6973740]];
      }

      v5->_dictionary = [v7 copy];
      v5->_weakReferenceToGroup = [a3 _weakReference];
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

  dictionary = self->_dictionary;
  v6 = [a3 dictionary];

  return [(NSDictionary *)dictionary isEqual:v6];
}

@end