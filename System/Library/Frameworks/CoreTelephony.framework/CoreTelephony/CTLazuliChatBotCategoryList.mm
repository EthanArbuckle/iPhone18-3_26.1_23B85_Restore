@interface CTLazuliChatBotCategoryList
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotCategoryList:(id)a3;
- (CTLazuliChatBotCategoryList)initWithCoder:(id)a3;
- (CTLazuliChatBotCategoryList)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliChatBotCategoryList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotCategoryList *)self categoryList];
  [v3 appendFormat:@", categoryList = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotCategoryList:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotCategoryList *)self categoryList];
  v6 = [v4 categoryList];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliChatBotCategoryList *)self categoryList];
    v8 = [v4 categoryList];
    v9 = [v7 isEqualToArray:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotCategoryList *)self isEqualToCTLazuliChatBotCategoryList:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotCategoryList allocWithZone:?];
  v6 = [(NSArray *)self->_categoryList copyWithZone:a3];
  [(CTLazuliChatBotCategoryList *)v5 setCategoryList:v6];

  return v5;
}

- (CTLazuliChatBotCategoryList)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CTLazuliChatBotCategoryList;
  v5 = [(CTLazuliChatBotCategoryList *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kCategoryListKey"];
    categoryList = v5->_categoryList;
    v5->_categoryList = v9;
  }

  return v5;
}

- (CTLazuliChatBotCategoryList)initWithReflection:(const void *)a3
{
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotCategoryList;
  v4 = [(CTLazuliChatBotCategoryList *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *a3;
    v7 = *(a3 + 1);
    if (*a3 != v7)
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