@interface CTEmergencyMode
+ (id)convertFromEmergencyMode:(const EmergencyMode *)mode;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTEmergencyMode:(id)mode;
- (CTEmergencyMode)initWithCoder:(id)coder;
- (CTEmergencyMode)initWithEnabled:(BOOL)enabled type:(int64_t)type isEmergencyText:(BOOL)text;
- (CTEmergencyMode)initWithEnabled:(BOOL)enabled type:(int64_t)type isEmergencyText:(BOOL)text isEmergencySetup:(BOOL)setup;
- (CTEmergencyMode)initWithEnabled:(BOOL)enabled type:(int64_t)type isEmergencyText:(BOOL)text isEmergencySetup:(BOOL)setup isStewieActive:(BOOL)active;
- (CTEmergencyMode)initWithEnabled:(BOOL)enabled type:(int64_t)type isEmergencyText:(BOOL)text isEmergencySetup:(BOOL)setup isStewieActive:(BOOL)active state:(int64_t)state;
- (CTEmergencyMode)initWithEnabled:(BOOL)enabled type:(int64_t)type isEmergencyText:(BOOL)text isEmergencySetup:(BOOL)setup state:(int64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTEmergencyMode

- (CTEmergencyMode)initWithEnabled:(BOOL)enabled type:(int64_t)type isEmergencyText:(BOOL)text isEmergencySetup:(BOOL)setup isStewieActive:(BOOL)active state:(int64_t)state
{
  v15.receiver = self;
  v15.super_class = CTEmergencyMode;
  result = [(CTEmergencyMode *)&v15 init];
  if (result)
  {
    result->_enabled = enabled;
    result->_isEmergencyText = text;
    result->_isEmergencySetup = setup;
    result->_isStewieActive = active;
    result->_type = type;
    result->_state = state;
  }

  return result;
}

- (CTEmergencyMode)initWithEnabled:(BOOL)enabled type:(int64_t)type isEmergencyText:(BOOL)text isEmergencySetup:(BOOL)setup state:(int64_t)state
{
  v13.receiver = self;
  v13.super_class = CTEmergencyMode;
  result = [(CTEmergencyMode *)&v13 init];
  if (result)
  {
    result->_enabled = enabled;
    result->_isEmergencyText = text;
    result->_isEmergencySetup = setup;
    result->_isStewieActive = 0;
    result->_type = type;
    result->_state = state;
  }

  return result;
}

- (CTEmergencyMode)initWithEnabled:(BOOL)enabled type:(int64_t)type isEmergencyText:(BOOL)text isEmergencySetup:(BOOL)setup isStewieActive:(BOOL)active
{
  v13.receiver = self;
  v13.super_class = CTEmergencyMode;
  result = [(CTEmergencyMode *)&v13 init];
  if (result)
  {
    result->_enabled = enabled;
    result->_isEmergencyText = text;
    result->_isEmergencySetup = setup;
    result->_isStewieActive = active;
    result->_type = type;
    result->_state = 5;
  }

  return result;
}

- (CTEmergencyMode)initWithEnabled:(BOOL)enabled type:(int64_t)type isEmergencyText:(BOOL)text isEmergencySetup:(BOOL)setup
{
  v11.receiver = self;
  v11.super_class = CTEmergencyMode;
  result = [(CTEmergencyMode *)&v11 init];
  if (result)
  {
    result->_enabled = enabled;
    result->_isEmergencyText = text;
    result->_isEmergencySetup = setup;
    result->_isStewieActive = 0;
    result->_type = type;
    result->_state = 5;
  }

  return result;
}

- (CTEmergencyMode)initWithEnabled:(BOOL)enabled type:(int64_t)type isEmergencyText:(BOOL)text
{
  v9.receiver = self;
  v9.super_class = CTEmergencyMode;
  result = [(CTEmergencyMode *)&v9 init];
  if (result)
  {
    result->_enabled = enabled;
    result->_isEmergencyText = text;
    *&result->_isEmergencySetup = 1;
    result->_type = type;
    result->_state = 5;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  enabled = [(CTEmergencyMode *)self enabled];
  v5 = "disabled";
  if (enabled)
  {
    v5 = "enabled";
  }

  [v3 appendFormat:@" %s", v5];
  if ([(CTEmergencyMode *)self isEmergencyText])
  {
    v6 = "true";
  }

  else
  {
    v6 = "false";
  }

  [v3 appendFormat:@" isEmergencyText=%s", v6];
  if ([(CTEmergencyMode *)self isEmergencySetup])
  {
    v7 = "true";
  }

  else
  {
    v7 = "false";
  }

  [v3 appendFormat:@" isEmergencySetup=%s", v7];
  if (_os_feature_enabled_impl())
  {
    if ([(CTEmergencyMode *)self isStewieActive])
    {
      v8 = "true";
    }

    else
    {
      v8 = "false";
    }

    [v3 appendFormat:@" isStewieActive=%s", v8];
  }

  type = [(CTEmergencyMode *)self type];
  if ((type - 1) > 4)
  {
    v10 = "CTEmergencyModeUnknown";
  }

  else
  {
    v10 = off_1E6A48320[type - 1];
  }

  [v3 appendFormat:@" type=%s", v10];
  state = [(CTEmergencyMode *)self state];
  if ((state - 1) > 4)
  {
    v12 = "CTEmergencyModeStateInCall";
  }

  else
  {
    v12 = off_1E6A48348[state - 1];
  }

  [v3 appendFormat:@" state=%s", v12];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTEmergencyMode:(id)mode
{
  modeCopy = mode;
  if (modeCopy && (v5 = -[CTEmergencyMode enabled](self, "enabled"), v5 == [modeCopy enabled]) && (v6 = -[CTEmergencyMode type](self, "type"), v6 == objc_msgSend(modeCopy, "type")) && (v7 = -[CTEmergencyMode isEmergencyText](self, "isEmergencyText"), v7 == objc_msgSend(modeCopy, "isEmergencyText")) && (v8 = -[CTEmergencyMode isEmergencySetup](self, "isEmergencySetup"), v8 == objc_msgSend(modeCopy, "isEmergencySetup")) && (v9 = -[CTEmergencyMode isStewieActive](self, "isStewieActive"), v9 == objc_msgSend(modeCopy, "isStewieActive")))
  {
    state = [(CTEmergencyMode *)self state];
    v10 = state == [modeCopy state];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTEmergencyMode *)self isEqualToCTEmergencyMode:equalCopy];
  }

  return v5;
}

+ (id)convertFromEmergencyMode:(const EmergencyMode *)mode
{
  v4 = [self alloc];
  v5 = (mode->var0 - 1);
  if (v5 < 5)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  var2 = mode->var2;
  v8 = (var2 - 1);
  if (v8 < 5)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 initWithEnabled:var2 != 5 type:v6 isEmergencyText:var2 == 3 isEmergencySetup:mode->var3 == 1 isStewieActive:mode->var4 state:v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  enabled = [(CTEmergencyMode *)self enabled];
  type = [(CTEmergencyMode *)self type];
  isEmergencyText = [(CTEmergencyMode *)self isEmergencyText];
  isEmergencySetup = [(CTEmergencyMode *)self isEmergencySetup];
  isStewieActive = [(CTEmergencyMode *)self isStewieActive];
  state = [(CTEmergencyMode *)self state];

  return [v4 initWithEnabled:enabled type:type isEmergencyText:isEmergencyText isEmergencySetup:isEmergencySetup isStewieActive:isStewieActive state:state];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_enabled forKey:@"enabled"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeBool:self->_isEmergencyText forKey:@"isEmergencyText"];
  [coderCopy encodeBool:self->_isEmergencySetup forKey:@"isEmergencySetup"];
  [coderCopy encodeBool:self->_isStewieActive forKey:@"isStewieActiveKey"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
}

- (CTEmergencyMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[CTEmergencyMode initWithEnabled:type:isEmergencyText:isEmergencySetup:isStewieActive:state:](self, "initWithEnabled:type:isEmergencyText:isEmergencySetup:isStewieActive:state:", [coderCopy decodeBoolForKey:@"enabled"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"type"), objc_msgSend(coderCopy, "decodeBoolForKey:", @"isEmergencyText"), objc_msgSend(coderCopy, "decodeBoolForKey:", @"isEmergencySetup"), objc_msgSend(coderCopy, "decodeBoolForKey:", @"isStewieActiveKey"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"state"));

  return v5;
}

@end