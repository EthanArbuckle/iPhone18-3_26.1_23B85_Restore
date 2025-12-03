@interface CTLazuliSuggestedActionRequestLocationPush
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliSuggestedActionRequestLocationPush:(id)push;
- (CTLazuliSuggestedActionRequestLocationPush)initWithCoder:(id)coder;
- (CTLazuliSuggestedActionRequestLocationPush)initWithReflection:(const SuggestedActionRequestLocationPush *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliSuggestedActionRequestLocationPush

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  [v3 appendFormat:@", sendPush = %d", -[CTLazuliSuggestedActionRequestLocationPush sendPush](self, "sendPush")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliSuggestedActionRequestLocationPush:(id)push
{
  pushCopy = push;
  LOBYTE(self) = [(CTLazuliSuggestedActionRequestLocationPush *)self sendPush];
  LOBYTE(self) = self ^ [pushCopy sendPush];

  return self ^ 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionRequestLocationPush *)self isEqualToCTLazuliSuggestedActionRequestLocationPush:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CTLazuliSuggestedActionRequestLocationPush allocWithZone:zone];
  [(CTLazuliSuggestedActionRequestLocationPush *)v4 setSendPush:self->_sendPush];
  return v4;
}

- (CTLazuliSuggestedActionRequestLocationPush)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTLazuliSuggestedActionRequestLocationPush;
  v5 = [(CTLazuliSuggestedActionRequestLocationPush *)&v7 init];
  if (v5)
  {
    v5->_sendPush = [coderCopy decodeBoolForKey:@"kSendPushKey"];
  }

  return v5;
}

- (CTLazuliSuggestedActionRequestLocationPush)initWithReflection:(const SuggestedActionRequestLocationPush *)reflection
{
  v5.receiver = self;
  v5.super_class = CTLazuliSuggestedActionRequestLocationPush;
  result = [(CTLazuliSuggestedActionRequestLocationPush *)&v5 init];
  if (result)
  {
    result->_sendPush = reflection->var0;
  }

  return result;
}

@end