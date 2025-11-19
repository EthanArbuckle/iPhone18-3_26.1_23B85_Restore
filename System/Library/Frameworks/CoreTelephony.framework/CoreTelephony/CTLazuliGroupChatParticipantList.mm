@interface CTLazuliGroupChatParticipantList
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliGroupChatParticipantList:(id)a3;
- (CTLazuliGroupChatParticipantList)initWithCoder:(id)a3;
- (CTLazuliGroupChatParticipantList)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliGroupChatParticipantList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliGroupChatParticipantList *)self list];
  [v3 appendFormat:@", list = %@", v4];

  v5 = [(CTLazuliGroupChatParticipantList *)self memberList];
  [v3 appendFormat:@", memberList = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatParticipantList:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliGroupChatParticipantList *)self list];
  v8 = [v6 list];
  if (v7 != v8)
  {
    v3 = [(CTLazuliGroupChatParticipantList *)self list];
    v4 = [v6 list];
    if (![v3 isEqualToArray:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliGroupChatParticipantList *)self memberList];
  v11 = [v6 memberList];
  v12 = v11;
  if (v10 == v11)
  {

    v9 = 1;
  }

  else
  {
    v13 = [(CTLazuliGroupChatParticipantList *)self memberList];
    v14 = [v6 memberList];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatParticipantList *)self isEqualToCTLazuliGroupChatParticipantList:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliGroupChatParticipantList allocWithZone:?];
  v6 = [(NSArray *)self->_list copyWithZone:a3];
  [(CTLazuliGroupChatParticipantList *)v5 setList:v6];

  v7 = [(NSArray *)self->_memberList copyWithZone:a3];
  [(CTLazuliGroupChatParticipantList *)v5 setMemberList:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_list forKey:@"kListKey"];
  [v4 encodeObject:self->_memberList forKey:@"kMemberListKey"];
}

- (CTLazuliGroupChatParticipantList)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CTLazuliGroupChatParticipantList;
  v5 = [(CTLazuliGroupChatParticipantList *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kListKey"];
    list = v5->_list;
    v5->_list = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kMemberListKey"];
    memberList = v5->_memberList;
    v5->_memberList = v14;
  }

  return v5;
}

- (CTLazuliGroupChatParticipantList)initWithReflection:(const void *)a3
{
  v17.receiver = self;
  v17.super_class = CTLazuliGroupChatParticipantList;
  v4 = [(CTLazuliGroupChatParticipantList *)&v17 init];
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
        [v5 addObject:v10];

        v6 += 3;
      }

      while (v6 != v7);
    }

    objc_storeStrong(&v4->_list, v5);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = *(a3 + 3);
    for (i = *(a3 + 4); v12 != i; v12 += 32)
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