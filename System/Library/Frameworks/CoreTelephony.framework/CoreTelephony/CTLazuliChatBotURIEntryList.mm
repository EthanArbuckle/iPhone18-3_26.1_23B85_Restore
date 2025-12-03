@interface CTLazuliChatBotURIEntryList
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotURIEntryList:(id)list;
- (CTLazuliChatBotURIEntryList)initWithCoder:(id)coder;
- (CTLazuliChatBotURIEntryList)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotURIEntryList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  list = [(CTLazuliChatBotURIEntryList *)self list];
  [v3 appendFormat:@", list = %@", list];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotURIEntryList:(id)list
{
  listCopy = list;
  list = [(CTLazuliChatBotURIEntryList *)self list];
  list2 = [listCopy list];
  if (list == list2)
  {
    v9 = 1;
  }

  else
  {
    list3 = [(CTLazuliChatBotURIEntryList *)self list];
    list4 = [listCopy list];
    v9 = [list3 isEqualToArray:list4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotURIEntryList *)self isEqualToCTLazuliChatBotURIEntryList:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotURIEntryList allocWithZone:?];
  v6 = [(NSArray *)self->_list copyWithZone:zone];
  [(CTLazuliChatBotURIEntryList *)v5 setList:v6];

  return v5;
}

- (CTLazuliChatBotURIEntryList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTLazuliChatBotURIEntryList;
  v5 = [(CTLazuliChatBotURIEntryList *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kListKey"];
    list = v5->_list;
    v5->_list = v9;
  }

  return v5;
}

- (CTLazuliChatBotURIEntryList)initWithReflection:(const void *)reflection
{
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotURIEntryList;
  v4 = [(CTLazuliChatBotURIEntryList *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *reflection;
    v7 = *(reflection + 1);
    if (*reflection != v7)
    {
      do
      {
        v8 = [[CTLazuliChatBotURIEntry alloc] initWithReflection:v6];
        [(NSArray *)v5 addObject:v8];

        v6 += 40;
      }

      while (v6 != v7);
    }

    list = v4->_list;
    v4->_list = v5;
  }

  return v4;
}

@end