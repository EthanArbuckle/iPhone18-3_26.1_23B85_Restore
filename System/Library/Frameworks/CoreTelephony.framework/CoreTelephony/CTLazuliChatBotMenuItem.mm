@interface CTLazuliChatBotMenuItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotMenuItem:(id)a3;
- (CTLazuliChatBotMenuItem)initWithCoder:(id)a3;
- (CTLazuliChatBotMenuItem)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliChatBotMenuItem

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotMenuItem *)self list];
  [v3 appendFormat:@", list = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotMenuItem *)self list];
  v6 = [v4 list];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliChatBotMenuItem *)self list];
    v8 = [v4 list];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMenuItem *)self isEqualToCTLazuliChatBotMenuItem:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotMenuItem allocWithZone:?];
  v6 = [(NSArray *)self->_list copyWithZone:a3];
  [(CTLazuliChatBotMenuItem *)v5 setList:v6];

  return v5;
}

- (CTLazuliChatBotMenuItem)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CTLazuliChatBotMenuItem;
  v5 = [(CTLazuliChatBotMenuItem *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kListKey"];
    list = v5->_list;
    v5->_list = v9;
  }

  return v5;
}

- (CTLazuliChatBotMenuItem)initWithReflection:(const void *)a3
{
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotMenuItem;
  v4 = [(CTLazuliChatBotMenuItem *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *a3;
    v7 = *(a3 + 1);
    if (*a3 != v7)
    {
      do
      {
        v8 = [[CTLazuliChatBotMenuL0Content alloc] initWithReflection:v6];
        [(NSArray *)v5 addObject:v8];

        v6 += 248;
      }

      while (v6 != v7);
    }

    list = v4->_list;
    v4->_list = v5;
  }

  return v4;
}

@end