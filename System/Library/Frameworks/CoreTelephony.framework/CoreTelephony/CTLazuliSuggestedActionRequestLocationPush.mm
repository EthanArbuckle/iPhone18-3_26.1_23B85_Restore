@interface CTLazuliSuggestedActionRequestLocationPush
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliSuggestedActionRequestLocationPush:(id)a3;
- (CTLazuliSuggestedActionRequestLocationPush)initWithCoder:(id)a3;
- (CTLazuliSuggestedActionRequestLocationPush)initWithReflection:(const SuggestedActionRequestLocationPush *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (BOOL)isEqualToCTLazuliSuggestedActionRequestLocationPush:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(CTLazuliSuggestedActionRequestLocationPush *)self sendPush];
  LOBYTE(self) = self ^ [v4 sendPush];

  return self ^ 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliSuggestedActionRequestLocationPush *)self isEqualToCTLazuliSuggestedActionRequestLocationPush:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CTLazuliSuggestedActionRequestLocationPush allocWithZone:a3];
  [(CTLazuliSuggestedActionRequestLocationPush *)v4 setSendPush:self->_sendPush];
  return v4;
}

- (CTLazuliSuggestedActionRequestLocationPush)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTLazuliSuggestedActionRequestLocationPush;
  v5 = [(CTLazuliSuggestedActionRequestLocationPush *)&v7 init];
  if (v5)
  {
    v5->_sendPush = [v4 decodeBoolForKey:@"kSendPushKey"];
  }

  return v5;
}

- (CTLazuliSuggestedActionRequestLocationPush)initWithReflection:(const SuggestedActionRequestLocationPush *)a3
{
  v5.receiver = self;
  v5.super_class = CTLazuliSuggestedActionRequestLocationPush;
  result = [(CTLazuliSuggestedActionRequestLocationPush *)&v5 init];
  if (result)
  {
    result->_sendPush = a3->var0;
  }

  return result;
}

@end