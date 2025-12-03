@interface CTLazuliGroupChatSubject
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliGroupChatSubject:(id)subject;
- (CTLazuliGroupChatSubject)initWithCoder:(id)coder;
- (CTLazuliGroupChatSubject)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliGroupChatSubject

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  displayString = [(CTLazuliGroupChatSubject *)self displayString];
  [v3 appendFormat:@", displayString = %@", displayString];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatSubject:(id)subject
{
  subjectCopy = subject;
  displayString = [(CTLazuliGroupChatSubject *)self displayString];
  displayString2 = [subjectCopy displayString];
  if (displayString == displayString2)
  {
    v9 = 1;
  }

  else
  {
    displayString3 = [(CTLazuliGroupChatSubject *)self displayString];
    displayString4 = [subjectCopy displayString];
    v9 = [displayString3 isEqualToString:displayString4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatSubject *)self isEqualToCTLazuliGroupChatSubject:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliGroupChatSubject allocWithZone:?];
  v6 = [(NSString *)self->_displayString copyWithZone:zone];
  [(CTLazuliGroupChatSubject *)v5 setDisplayString:v6];

  return v5;
}

- (CTLazuliGroupChatSubject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliGroupChatSubject;
  v5 = [(CTLazuliGroupChatSubject *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDisplayStringKey"];
    displayString = v5->_displayString;
    v5->_displayString = v6;
  }

  return v5;
}

- (CTLazuliGroupChatSubject)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliGroupChatSubject;
  v4 = [(CTLazuliGroupChatSubject *)&v9 init];
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
    displayString = v4->_displayString;
    v4->_displayString = v6;
  }

  return v4;
}

@end