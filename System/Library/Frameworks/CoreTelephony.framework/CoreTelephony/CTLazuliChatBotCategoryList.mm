@interface CTLazuliChatBotCategoryList
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotCategoryList:(id)list;
- (CTLazuliChatBotCategoryList)initWithCoder:(id)coder;
- (CTLazuliChatBotCategoryList)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotCategoryList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  categoryList = [(CTLazuliChatBotCategoryList *)self categoryList];
  [v3 appendFormat:@", categoryList = %@", categoryList];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCategoryList:(id)list
{
  listCopy = list;
  categoryList = [(CTLazuliChatBotCategoryList *)self categoryList];
  categoryList2 = [listCopy categoryList];
  if (categoryList == categoryList2)
  {
    v9 = 1;
  }

  else
  {
    categoryList3 = [(CTLazuliChatBotCategoryList *)self categoryList];
    categoryList4 = [listCopy categoryList];
    v9 = [categoryList3 isEqualToArray:categoryList4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCategoryList *)self isEqualToCTLazuliChatBotCategoryList:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotCategoryList allocWithZone:?];
  v6 = [(NSArray *)self->_categoryList copyWithZone:zone];
  [(CTLazuliChatBotCategoryList *)v5 setCategoryList:v6];

  return v5;
}

- (CTLazuliChatBotCategoryList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTLazuliChatBotCategoryList;
  v5 = [(CTLazuliChatBotCategoryList *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCategoryListKey"];
    categoryList = v5->_categoryList;
    v5->_categoryList = v9;
  }

  return v5;
}

- (CTLazuliChatBotCategoryList)initWithReflection:(const void *)reflection
{
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotCategoryList;
  v4 = [(CTLazuliChatBotCategoryList *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *reflection;
    v7 = *(reflection + 1);
    if (*reflection != v7)
    {
      do
      {
        v8 = objc_alloc(MEMORY[0x1E696AEC0]);
        v9 = v6;
        if (*(v6 + 23) < 0)
        {
          v9 = *v6;
        }

        v10 = [v8 initWithUTF8String:v9];
        [(NSArray *)v5 addObject:v10];

        v6 += 3;
      }

      while (v6 != v7);
    }

    categoryList = v4->_categoryList;
    v4->_categoryList = v5;
  }

  return v4;
}

@end