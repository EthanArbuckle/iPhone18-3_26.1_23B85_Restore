@interface CTLazuliChatBotMenuL1
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotMenuL1:(id)l1;
- (CTLazuliChatBotMenuL1)initWithCoder:(id)coder;
- (CTLazuliChatBotMenuL1)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotMenuL1

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  displayText = [(CTLazuliChatBotMenuL1 *)self displayText];
  [v3 appendFormat:@", displayText = %@", displayText];

  list = [(CTLazuliChatBotMenuL1 *)self list];
  [v3 appendFormat:@", list = %@", list];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMenuL1:(id)l1
{
  l1Copy = l1;
  displayText = [(CTLazuliChatBotMenuL1 *)self displayText];
  displayText2 = [l1Copy displayText];
  if (displayText != displayText2)
  {
    displayText3 = [(CTLazuliChatBotMenuL1 *)self displayText];
    displayText4 = [l1Copy displayText];
    if (![displayText3 isEqualToString:displayText4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  list = [(CTLazuliChatBotMenuL1 *)self list];
  list2 = [l1Copy list];
  v12 = list2;
  if (list == list2)
  {

    v9 = 1;
  }

  else
  {
    list3 = [(CTLazuliChatBotMenuL1 *)self list];
    list4 = [l1Copy list];
    v9 = [list3 isEqualToArray:list4];
  }

  if (displayText != displayText2)
  {
    goto LABEL_8;
  }

LABEL_9:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMenuL1 *)self isEqualToCTLazuliChatBotMenuL1:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotMenuL1 allocWithZone:?];
  v6 = [(NSString *)self->_displayText copyWithZone:zone];
  [(CTLazuliChatBotMenuL1 *)v5 setDisplayText:v6];

  v7 = [(NSArray *)self->_list copyWithZone:zone];
  [(CTLazuliChatBotMenuL1 *)v5 setList:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_displayText forKey:@"kDisplayTextKey"];
  [coderCopy encodeObject:self->_list forKey:@"kListKey"];
}

- (CTLazuliChatBotMenuL1)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CTLazuliChatBotMenuL1;
  v5 = [(CTLazuliChatBotMenuL1 *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDisplayTextKey"];
    displayText = v5->_displayText;
    v5->_displayText = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kListKey"];
    list = v5->_list;
    v5->_list = v11;
  }

  return v5;
}

- (CTLazuliChatBotMenuL1)initWithReflection:(const void *)reflection
{
  v14.receiver = self;
  v14.super_class = CTLazuliChatBotMenuL1;
  v4 = [(CTLazuliChatBotMenuL1 *)&v14 init];
  if (v4)
  {
    if (*(reflection + 23) >= 0)
    {
      reflectionCopy = reflection;
    }

    else
    {
      reflectionCopy = *reflection;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:reflectionCopy];
    displayText = v4->_displayText;
    v4->_displayText = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = *(reflection + 3);
    for (i = *(reflection + 4); v9 != i; v9 += 248)
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