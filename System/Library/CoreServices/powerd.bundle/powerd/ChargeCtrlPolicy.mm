@interface ChargeCtrlPolicy
- (ChargeCtrlPolicy)initWithCoder:(id)a3;
- (ChargeCtrlPolicy)initWithSocLimit:(unint64_t)a3 andDrain:(BOOL)a4 andNoChargeToFull:(BOOL)a5 andIsEOC:(BOOL)a6 andReason:(id)a7 andOwner:(unint64_t)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ChargeCtrlPolicy

- (ChargeCtrlPolicy)initWithSocLimit:(unint64_t)a3 andDrain:(BOOL)a4 andNoChargeToFull:(BOOL)a5 andIsEOC:(BOOL)a6 andReason:(id)a7 andOwner:(unint64_t)a8
{
  v15 = a7;
  v22.receiver = self;
  v22.super_class = ChargeCtrlPolicy;
  v16 = [(ChargeCtrlPolicy *)&v22 init];
  v17 = v16;
  if (v16)
  {
    v16->_drain = a4;
    v16->_noChargeToFull = a5;
    v16->_isEOC = a6;
    objc_storeStrong(&v16->_reason, a7);
    v17->_socLimit = a3;
    v17->_owner = a8;
    v17->_terminated = 0;
    v18 = +[NSUUID UUID];
    token = v17->_token;
    v17->_token = v18;

    v20 = v17;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[ChargeCtrlPolicy terminated](self forKey:{"terminated"), @"terminated"}];
  [v4 encodeBool:-[ChargeCtrlPolicy drain](self forKey:{"drain"), @"drain"}];
  [v4 encodeBool:-[ChargeCtrlPolicy noChargeToFull](self forKey:{"noChargeToFull"), @"noChargeToFull"}];
  [v4 encodeBool:-[ChargeCtrlPolicy isEOC](self forKey:{"isEOC"), @"isEndOfCharge"}];
  [v4 encodeInt64:-[ChargeCtrlPolicy socLimit](self forKey:{"socLimit"), @"soclimit"}];
  [v4 encodeInt64:-[ChargeCtrlPolicy owner](self forKey:{"owner"), @"owner"}];
  v5 = [(ChargeCtrlPolicy *)self reason];
  [v4 encodeObject:v5 forKey:@"reason"];

  v6 = [(ChargeCtrlPolicy *)self token];
  [v4 encodeObject:v6 forKey:@"token"];
}

- (ChargeCtrlPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ChargeCtrlPolicy;
  v5 = [(ChargeCtrlPolicy *)&v12 init];
  if (v5)
  {
    v5->_terminated = [v4 decodeBoolForKey:@"terminated"];
    v5->_drain = [v4 decodeBoolForKey:@"drain"];
    v5->_noChargeToFull = [v4 decodeBoolForKey:@"noChargeToFull"];
    v5->_isEOC = [v4 decodeBoolForKey:@"isEndOfCharge"];
    v5->_socLimit = [v4 decodeInt64ForKey:@"soclimit"];
    v5->_owner = [v4 decodeInt64ForKey:@"owner"];
    v6 = [v4 decodeObjectForKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v6;

    v8 = [v4 decodeObjectForKey:@"token"];
    token = v5->_token;
    v5->_token = v8;

    v10 = v5;
  }

  return v5;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"{\n    Owner: %lu\n    SocLimit: %lu\n    Drain: %u\n    NoChargeToFull: %u\n    IsEndOfCharge: %u\n    Terminated: %u\n    Reason: %@\n}\n", self->_owner, self->_socLimit, self->_drain, self->_noChargeToFull, self->_isEOC, self->_terminated, self->_reason];

  return v2;
}

@end