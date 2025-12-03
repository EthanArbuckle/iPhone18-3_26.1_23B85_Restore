@interface ChargeCtrlPolicy
- (ChargeCtrlPolicy)initWithCoder:(id)coder;
- (ChargeCtrlPolicy)initWithSocLimit:(unint64_t)limit andDrain:(BOOL)drain andNoChargeToFull:(BOOL)full andIsEOC:(BOOL)c andReason:(id)reason andOwner:(unint64_t)owner;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ChargeCtrlPolicy

- (ChargeCtrlPolicy)initWithSocLimit:(unint64_t)limit andDrain:(BOOL)drain andNoChargeToFull:(BOOL)full andIsEOC:(BOOL)c andReason:(id)reason andOwner:(unint64_t)owner
{
  reasonCopy = reason;
  v22.receiver = self;
  v22.super_class = ChargeCtrlPolicy;
  v16 = [(ChargeCtrlPolicy *)&v22 init];
  v17 = v16;
  if (v16)
  {
    v16->_drain = drain;
    v16->_noChargeToFull = full;
    v16->_isEOC = c;
    objc_storeStrong(&v16->_reason, reason);
    v17->_socLimit = limit;
    v17->_owner = owner;
    v17->_terminated = 0;
    v18 = +[NSUUID UUID];
    token = v17->_token;
    v17->_token = v18;

    v20 = v17;
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[ChargeCtrlPolicy terminated](self forKey:{"terminated"), @"terminated"}];
  [coderCopy encodeBool:-[ChargeCtrlPolicy drain](self forKey:{"drain"), @"drain"}];
  [coderCopy encodeBool:-[ChargeCtrlPolicy noChargeToFull](self forKey:{"noChargeToFull"), @"noChargeToFull"}];
  [coderCopy encodeBool:-[ChargeCtrlPolicy isEOC](self forKey:{"isEOC"), @"isEndOfCharge"}];
  [coderCopy encodeInt64:-[ChargeCtrlPolicy socLimit](self forKey:{"socLimit"), @"soclimit"}];
  [coderCopy encodeInt64:-[ChargeCtrlPolicy owner](self forKey:{"owner"), @"owner"}];
  reason = [(ChargeCtrlPolicy *)self reason];
  [coderCopy encodeObject:reason forKey:@"reason"];

  token = [(ChargeCtrlPolicy *)self token];
  [coderCopy encodeObject:token forKey:@"token"];
}

- (ChargeCtrlPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ChargeCtrlPolicy;
  v5 = [(ChargeCtrlPolicy *)&v12 init];
  if (v5)
  {
    v5->_terminated = [coderCopy decodeBoolForKey:@"terminated"];
    v5->_drain = [coderCopy decodeBoolForKey:@"drain"];
    v5->_noChargeToFull = [coderCopy decodeBoolForKey:@"noChargeToFull"];
    v5->_isEOC = [coderCopy decodeBoolForKey:@"isEndOfCharge"];
    v5->_socLimit = [coderCopy decodeInt64ForKey:@"soclimit"];
    v5->_owner = [coderCopy decodeInt64ForKey:@"owner"];
    v6 = [coderCopy decodeObjectForKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v6;

    v8 = [coderCopy decodeObjectForKey:@"token"];
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