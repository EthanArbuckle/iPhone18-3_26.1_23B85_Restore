@interface CTLazuliGroupChatParticipantList
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliGroupChatParticipantList:(id)list;
- (CTLazuliGroupChatParticipantList)initWithCoder:(id)coder;
- (CTLazuliGroupChatParticipantList)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliGroupChatParticipantList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  list = [(CTLazuliGroupChatParticipantList *)self list];
  [v3 appendFormat:@", list = %@", list];

  memberList = [(CTLazuliGroupChatParticipantList *)self memberList];
  [v3 appendFormat:@", memberList = %@", memberList];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatParticipantList:(id)list
{
  listCopy = list;
  list = [(CTLazuliGroupChatParticipantList *)self list];
  list2 = [listCopy list];
  if (list != list2)
  {
    list3 = [(CTLazuliGroupChatParticipantList *)self list];
    list4 = [listCopy list];
    if (![list3 isEqualToArray:list4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  memberList = [(CTLazuliGroupChatParticipantList *)self memberList];
  memberList2 = [listCopy memberList];
  v12 = memberList2;
  if (memberList == memberList2)
  {

    v9 = 1;
  }

  else
  {
    memberList3 = [(CTLazuliGroupChatParticipantList *)self memberList];
    memberList4 = [listCopy memberList];
    v9 = [memberList3 isEqualToArray:memberList4];
  }

  if (list != list2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatParticipantList *)self isEqualToCTLazuliGroupChatParticipantList:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliGroupChatParticipantList allocWithZone:?];
  v6 = [(NSArray *)self->_list copyWithZone:zone];
  [(CTLazuliGroupChatParticipantList *)v5 setList:v6];

  v7 = [(NSArray *)self->_memberList copyWithZone:zone];
  [(CTLazuliGroupChatParticipantList *)v5 setMemberList:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_list forKey:@"kListKey"];
  [coderCopy encodeObject:self->_memberList forKey:@"kMemberListKey"];
}

- (CTLazuliGroupChatParticipantList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CTLazuliGroupChatParticipantList;
  v5 = [(CTLazuliGroupChatParticipantList *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kListKey"];
    list = v5->_list;
    v5->_list = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kMemberListKey"];
    memberList = v5->_memberList;
    v5->_memberList = v14;
  }

  return v5;
}

- (CTLazuliGroupChatParticipantList)initWithReflection:(const void *)reflection
{
  v17.receiver = self;
  v17.super_class = CTLazuliGroupChatParticipantList;
  v4 = [(CTLazuliGroupChatParticipantList *)&v17 init];
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
        [v5 addObject:v10];

        v6 += 3;
      }

      while (v6 != v7);
    }

    objc_storeStrong(&v4->_list, v5);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = *(reflection + 3);
    for (i = *(reflection + 4); v12 != i; v12 += 32)
    {
      v14 = [[CTLazuliGroupChatParticipant alloc] initWithReflection:v12];
      [(NSArray *)v11 addObject:v14];
    }

    memberList = v4->_memberList;
    v4->_memberList = v11;
  }

  return v4;
}

@end