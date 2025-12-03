@interface CTLazuliChatBotMediaEntryList
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotMediaEntryList:(id)list;
- (CTLazuliChatBotMediaEntryList)initWithCoder:(id)coder;
- (CTLazuliChatBotMediaEntryList)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotMediaEntryList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  list = [(CTLazuliChatBotMediaEntryList *)self list];
  [v3 appendFormat:@", list = %@", list];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMediaEntryList:(id)list
{
  listCopy = list;
  list = [(CTLazuliChatBotMediaEntryList *)self list];
  list2 = [listCopy list];
  if (list == list2)
  {
    v9 = 1;
  }

  else
  {
    list3 = [(CTLazuliChatBotMediaEntryList *)self list];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMediaEntryList *)self isEqualToCTLazuliChatBotMediaEntryList:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotMediaEntryList allocWithZone:?];
  v6 = [(NSArray *)self->_list copyWithZone:zone];
  [(CTLazuliChatBotMediaEntryList *)v5 setList:v6];

  return v5;
}

- (CTLazuliChatBotMediaEntryList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTLazuliChatBotMediaEntryList;
  v5 = [(CTLazuliChatBotMediaEntryList *)&v12 init];
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

- (CTLazuliChatBotMediaEntryList)initWithReflection:(const void *)reflection
{
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotMediaEntryList;
  v4 = [(CTLazuliChatBotMediaEntryList *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *reflection;
    v7 = *(reflection + 1);
    if (*reflection != v7)
    {
      do
      {
        v8 = [[CTLazuliChatBotMediaEntry alloc] initWithReflection:v6];
        [(NSArray *)v5 addObject:v8];

        v6 += 80;
      }

      while (v6 != v7);
    }

    list = v4->_list;
    v4->_list = v5;
  }

  return v4;
}

@end