@interface CTLazuliChatBotMenuL1
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotMenuL1:(id)a3;
- (CTLazuliChatBotMenuL1)initWithCoder:(id)a3;
- (CTLazuliChatBotMenuL1)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotMenuL1

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotMenuL1 *)self displayText];
  [v3 appendFormat:@", displayText = %@", v4];

  v5 = [(CTLazuliChatBotMenuL1 *)self list];
  [v3 appendFormat:@", list = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMenuL1:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotMenuL1 *)self displayText];
  v8 = [v6 displayText];
  if (v7 != v8)
  {
    v3 = [(CTLazuliChatBotMenuL1 *)self displayText];
    v4 = [v6 displayText];
    if (![v3 isEqualToString:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliChatBotMenuL1 *)self list];
  v11 = [v6 list];
  v12 = v11;
  if (v10 == v11)
  {

    v9 = 1;
  }

  else
  {
    v13 = [(CTLazuliChatBotMenuL1 *)self list];
    v14 = [v6 list];
    v9 = [v13 isEqualToArray:v14];
  }

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_9:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMenuL1 *)self isEqualToCTLazuliChatBotMenuL1:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotMenuL1 allocWithZone:?];
  v6 = [(NSString *)self->_displayText copyWithZone:a3];
  [(CTLazuliChatBotMenuL1 *)v5 setDisplayText:v6];

  v7 = [(NSArray *)self->_list copyWithZone:a3];
  [(CTLazuliChatBotMenuL1 *)v5 setList:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_displayText forKey:@"kDisplayTextKey"];
  [v4 encodeObject:self->_list forKey:@"kListKey"];
}

- (CTLazuliChatBotMenuL1)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CTLazuliChatBotMenuL1;
  v5 = [(CTLazuliChatBotMenuL1 *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDisplayTextKey"];
    displayText = v5->_displayText;
    v5->_displayText = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kListKey"];
    list = v5->_list;
    v5->_list = v11;
  }

  return v5;
}

- (CTLazuliChatBotMenuL1)initWithReflection:(const void *)a3
{
  v14.receiver = self;
  v14.super_class = CTLazuliChatBotMenuL1;
  v4 = [(CTLazuliChatBotMenuL1 *)&v14 init];
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = *a3;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    displayText = v4->_displayText;
    v4->_displayText = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = *(a3 + 3);
    for (i = *(a3 + 4); v9 != i; v9 += 248)
    {
      v11 = [[CTLazuliChatBotMenuL1Content alloc] initWithReflection:v9];
      [(NSArray *)v8 addObject:v11];
    }

    list = v4->_list;
    v4->_list = v8;
  }

  return v4;
}

@end