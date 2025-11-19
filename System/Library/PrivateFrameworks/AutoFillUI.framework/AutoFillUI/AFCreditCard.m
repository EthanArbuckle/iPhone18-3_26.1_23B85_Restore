@interface AFCreditCard
- (AFCreditCard)initWithName:(id)a3 number:(id)a4 expiration:(id)a5 securityCode:(id)a6 type:(id)a7 icon:(CGImage *)a8 nickname:(id)a9 suffix:(id)a10;
- (id)description;
@end

@implementation AFCreditCard

- (AFCreditCard)initWithName:(id)a3 number:(id)a4 expiration:(id)a5 securityCode:(id)a6 type:(id)a7 icon:(CGImage *)a8 nickname:(id)a9 suffix:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  v39.receiver = self;
  v39.super_class = AFCreditCard;
  v23 = [(AFCreditCard *)&v39 init];
  if (v23)
  {
    v24 = [v16 copy];
    name = v23->_name;
    v23->_name = v24;

    v26 = [v17 copy];
    number = v23->_number;
    v23->_number = v26;

    v28 = [v19 copy];
    securityCode = v23->_securityCode;
    v23->_securityCode = v28;

    v30 = [v18 copy];
    expiration = v23->_expiration;
    v23->_expiration = v30;

    v32 = [v20 copy];
    type = v23->_type;
    v23->_type = v32;

    v23->_image = a8;
    v34 = [v21 copy];
    nickname = v23->_nickname;
    v23->_nickname = v34;

    v36 = [v22 copy];
    suffix = v23->_suffix;
    v23->_suffix = v36;
  }

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AFCreditCard *)self name];
  v5 = [(AFCreditCard *)self number];
  v6 = [(AFCreditCard *)self expiration];
  v7 = [(AFCreditCard *)self securityCode];
  v8 = [(AFCreditCard *)self type];
  v9 = [(AFCreditCard *)self nickname];
  v10 = [(AFCreditCard *)self suffix];
  v11 = [v3 stringWithFormat:@"<CreditCard: %p, name: %@, number: %@, expiration: %@, securityCode: %@, type: %@, nickname: %@, suffix: %@>", self, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end