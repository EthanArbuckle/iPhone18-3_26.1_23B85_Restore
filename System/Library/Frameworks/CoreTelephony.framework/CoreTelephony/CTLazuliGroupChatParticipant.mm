@interface CTLazuliGroupChatParticipant
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliGroupChatParticipant:(id)participant;
- (CTLazuliGroupChatParticipant)initWithCoder:(id)coder;
- (CTLazuliGroupChatParticipant)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliGroupChatParticipant

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  member = [(CTLazuliGroupChatParticipant *)self member];
  [v3 appendFormat:@", member = %@", member];

  role = [(CTLazuliGroupChatParticipant *)self role];
  role2 = [(CTLazuliGroupChatParticipant *)self role];
  [v3 appendFormat:@", role = [%ld - %s]", role, print_CTLazuliGroupChatParticipantRoleType(&role2)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatParticipant:(id)participant
{
  participantCopy = participant;
  member = [(CTLazuliGroupChatParticipant *)self member];
  member2 = [participantCopy member];
  if (member != member2)
  {
    member3 = [(CTLazuliGroupChatParticipant *)self member];
    member4 = [participantCopy member];
    if (![member3 isEqualToString:member4])
    {
      v9 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  role = [(CTLazuliGroupChatParticipant *)self role];
  v9 = role == [participantCopy role];
  if (member != member2)
  {
    goto LABEL_5;
  }

LABEL_6:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatParticipant *)self isEqualToCTLazuliGroupChatParticipant:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliGroupChatParticipant allocWithZone:?];
  v6 = [(NSString *)self->_member copyWithZone:zone];
  [(CTLazuliGroupChatParticipant *)v5 setMember:v6];

  [(CTLazuliGroupChatParticipant *)v5 setRole:self->_role];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_member forKey:@"kMemberKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_role];
  [coderCopy encodeObject:v4 forKey:@"kRoleKey"];
}

- (CTLazuliGroupChatParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CTLazuliGroupChatParticipant;
  v5 = [(CTLazuliGroupChatParticipant *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMemberKey"];
    member = v5->_member;
    v5->_member = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRoleKey"];
    v5->_role = [v8 longValue];
  }

  return v5;
}

- (CTLazuliGroupChatParticipant)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliGroupChatParticipant;
  v4 = [(CTLazuliGroupChatParticipant *)&v9 init];
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
    member = v4->_member;
    v4->_member = v6;

    v4->_role = encode_CTLazuliGroupChatParticipantRoleType(reflection + 6);
  }

  return v4;
}

@end