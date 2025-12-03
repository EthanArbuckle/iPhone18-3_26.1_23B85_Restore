@interface AFCreditCard
- (AFCreditCard)initWithName:(id)name number:(id)number expiration:(id)expiration securityCode:(id)code type:(id)type icon:(CGImage *)icon nickname:(id)nickname suffix:(id)self0;
- (id)description;
@end

@implementation AFCreditCard

- (AFCreditCard)initWithName:(id)name number:(id)number expiration:(id)expiration securityCode:(id)code type:(id)type icon:(CGImage *)icon nickname:(id)nickname suffix:(id)self0
{
  nameCopy = name;
  numberCopy = number;
  expirationCopy = expiration;
  codeCopy = code;
  typeCopy = type;
  nicknameCopy = nickname;
  suffixCopy = suffix;
  v39.receiver = self;
  v39.super_class = AFCreditCard;
  v23 = [(AFCreditCard *)&v39 init];
  if (v23)
  {
    v24 = [nameCopy copy];
    name = v23->_name;
    v23->_name = v24;

    v26 = [numberCopy copy];
    number = v23->_number;
    v23->_number = v26;

    v28 = [codeCopy copy];
    securityCode = v23->_securityCode;
    v23->_securityCode = v28;

    v30 = [expirationCopy copy];
    expiration = v23->_expiration;
    v23->_expiration = v30;

    v32 = [typeCopy copy];
    type = v23->_type;
    v23->_type = v32;

    v23->_image = icon;
    v34 = [nicknameCopy copy];
    nickname = v23->_nickname;
    v23->_nickname = v34;

    v36 = [suffixCopy copy];
    suffix = v23->_suffix;
    v23->_suffix = v36;
  }

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(AFCreditCard *)self name];
  number = [(AFCreditCard *)self number];
  expiration = [(AFCreditCard *)self expiration];
  securityCode = [(AFCreditCard *)self securityCode];
  type = [(AFCreditCard *)self type];
  nickname = [(AFCreditCard *)self nickname];
  suffix = [(AFCreditCard *)self suffix];
  v11 = [v3 stringWithFormat:@"<CreditCard: %p, name: %@, number: %@, expiration: %@, securityCode: %@, type: %@, nickname: %@, suffix: %@>", self, name, number, expiration, securityCode, type, nickname, suffix];

  return v11;
}

@end