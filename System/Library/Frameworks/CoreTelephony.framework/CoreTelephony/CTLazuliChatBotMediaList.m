@interface CTLazuliChatBotMediaList
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotMediaList:(id)a3;
- (CTLazuliChatBotMediaList)initWithCoder:(id)a3;
- (CTLazuliChatBotMediaList)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliChatBotMediaList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotMediaList *)self entry];
  [v3 appendFormat:@", entry = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMediaList:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotMediaList *)self entry];
  v6 = [v4 entry];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliChatBotMediaList *)self entry];
    v8 = [v4 entry];
    v9 = [v7 isEqualToCTLazuliChatBotMediaEntryList:v8];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMediaList *)self isEqualToCTLazuliChatBotMediaList:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotMediaList allocWithZone:?];
  v6 = [(CTLazuliChatBotMediaEntryList *)self->_entry copyWithZone:a3];
  [(CTLazuliChatBotMediaList *)v5 setEntry:v6];

  return v5;
}

- (CTLazuliChatBotMediaList)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotMediaList;
  v5 = [(CTLazuliChatBotMediaList *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kEntryKey"];
    entry = v5->_entry;
    v5->_entry = v6;
  }

  return v5;
}

- (CTLazuliChatBotMediaList)initWithReflection:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = CTLazuliChatBotMediaList;
  v4 = [(CTLazuliChatBotMediaList *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotMediaEntryList alloc] initWithReflection:a3];
    entry = v4->_entry;
    v4->_entry = v5;
  }

  return v4;
}

@end