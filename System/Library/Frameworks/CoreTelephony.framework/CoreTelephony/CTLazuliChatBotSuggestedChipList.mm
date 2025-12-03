@interface CTLazuliChatBotSuggestedChipList
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotSuggestedChipList:(id)list;
- (CTLazuliChatBotSuggestedChipList)initWithCoder:(id)coder;
- (CTLazuliChatBotSuggestedChipList)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotSuggestedChipList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  list = [(CTLazuliChatBotSuggestedChipList *)self list];
  [v3 appendFormat:@", list = %@", list];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotSuggestedChipList:(id)list
{
  listCopy = list;
  list = [(CTLazuliChatBotSuggestedChipList *)self list];
  list2 = [listCopy list];
  if (list == list2)
  {
    v9 = 1;
  }

  else
  {
    list3 = [(CTLazuliChatBotSuggestedChipList *)self list];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotSuggestedChipList *)self isEqualToCTLazuliChatBotSuggestedChipList:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotSuggestedChipList allocWithZone:?];
  v6 = [(NSArray *)self->_list copyWithZone:zone];
  [(CTLazuliChatBotSuggestedChipList *)v5 setList:v6];

  return v5;
}

- (CTLazuliChatBotSuggestedChipList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTLazuliChatBotSuggestedChipList;
  v5 = [(CTLazuliChatBotSuggestedChipList *)&v12 init];
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

- (CTLazuliChatBotSuggestedChipList)initWithReflection:(const void *)reflection
{
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotSuggestedChipList;
  v4 = [(CTLazuliChatBotSuggestedChipList *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *reflection;
    v7 = *(reflection + 1);
    if (*reflection != v7)
    {
      do
      {
        v8 = [[CTLazuliChatBotSuggestedChip alloc] initWithReflection:v6];
        [(NSArray *)v5 addObject:v8];

        v6 += 232;
      }

      while (v6 != v7);
    }

    list = v4->_list;
    v4->_list = v5;
  }

  return v4;
}

@end