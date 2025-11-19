@interface CTLazuliGroupChatParticipant
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliGroupChatParticipant:(id)a3;
- (CTLazuliGroupChatParticipant)initWithCoder:(id)a3;
- (CTLazuliGroupChatParticipant)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliGroupChatParticipant

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliGroupChatParticipant *)self member];
  [v3 appendFormat:@", member = %@", v4];

  v5 = [(CTLazuliGroupChatParticipant *)self role];
  v7 = [(CTLazuliGroupChatParticipant *)self role];
  [v3 appendFormat:@", role = [%ld - %s]", v5, print_CTLazuliGroupChatParticipantRoleType(&v7)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatParticipant:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliGroupChatParticipant *)self member];
  v8 = [v6 member];
  if (v7 != v8)
  {
    v3 = [(CTLazuliGroupChatParticipant *)self member];
    v4 = [v6 member];
    if (![v3 isEqualToString:v4])
    {
      v9 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v10 = [(CTLazuliGroupChatParticipant *)self role];
  v9 = v10 == [v6 role];
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_6:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatParticipant *)self isEqualToCTLazuliGroupChatParticipant:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliGroupChatParticipant allocWithZone:?];
  v6 = [(NSString *)self->_member copyWithZone:a3];
  [(CTLazuliGroupChatParticipant *)v5 setMember:v6];

  [(CTLazuliGroupChatParticipant *)v5 setRole:self->_role];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_member forKey:@"kMemberKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_role];
  [v5 encodeObject:v4 forKey:@"kRoleKey"];
}

- (CTLazuliGroupChatParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CTLazuliGroupChatParticipant;
  v5 = [(CTLazuliGroupChatParticipant *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMemberKey"];
    member = v5->_member;
    v5->_member = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRoleKey"];
    v5->_role = [v8 longValue];
  }

  return v5;
}

- (CTLazuliGroupChatParticipant)initWithReflection:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = CTLazuliGroupChatParticipant;
  v4 = [(CTLazuliGroupChatParticipant *)&v9 init];
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
    member = v4->_member;
    v4->_member = v6;

    v4->_role = encode_CTLazuliGroupChatParticipantRoleType(a3 + 6);
  }

  return v4;
}

@end