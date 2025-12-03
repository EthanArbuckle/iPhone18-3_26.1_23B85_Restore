@interface CTLazuliChatBotMediaList
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotMediaList:(id)list;
- (CTLazuliChatBotMediaList)initWithCoder:(id)coder;
- (CTLazuliChatBotMediaList)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotMediaList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  entry = [(CTLazuliChatBotMediaList *)self entry];
  [v3 appendFormat:@", entry = %@", entry];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMediaList:(id)list
{
  listCopy = list;
  entry = [(CTLazuliChatBotMediaList *)self entry];
  entry2 = [listCopy entry];
  if (entry == entry2)
  {
    v9 = 1;
  }

  else
  {
    entry3 = [(CTLazuliChatBotMediaList *)self entry];
    entry4 = [listCopy entry];
    v9 = [entry3 isEqualToCTLazuliChatBotMediaEntryList:entry4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMediaList *)self isEqualToCTLazuliChatBotMediaList:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotMediaList allocWithZone:?];
  v6 = [(CTLazuliChatBotMediaEntryList *)self->_entry copyWithZone:zone];
  [(CTLazuliChatBotMediaList *)v5 setEntry:v6];

  return v5;
}

- (CTLazuliChatBotMediaList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotMediaList;
  v5 = [(CTLazuliChatBotMediaList *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kEntryKey"];
    entry = v5->_entry;
    v5->_entry = v6;
  }

  return v5;
}

- (CTLazuliChatBotMediaList)initWithReflection:(const void *)reflection
{
  v8.receiver = self;
  v8.super_class = CTLazuliChatBotMediaList;
  v4 = [(CTLazuliChatBotMediaList *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotMediaEntryList alloc] initWithReflection:reflection];
    entry = v4->_entry;
    v4->_entry = v5;
  }

  return v4;
}

@end