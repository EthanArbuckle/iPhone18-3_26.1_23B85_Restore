@interface CTEmergencyMode
+ (id)convertFromEmergencyMode:(const EmergencyMode *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTEmergencyMode:(id)a3;
- (CTEmergencyMode)initWithCoder:(id)a3;
- (CTEmergencyMode)initWithEnabled:(BOOL)a3 type:(int64_t)a4 isEmergencyText:(BOOL)a5;
- (CTEmergencyMode)initWithEnabled:(BOOL)a3 type:(int64_t)a4 isEmergencyText:(BOOL)a5 isEmergencySetup:(BOOL)a6;
- (CTEmergencyMode)initWithEnabled:(BOOL)a3 type:(int64_t)a4 isEmergencyText:(BOOL)a5 isEmergencySetup:(BOOL)a6 isStewieActive:(BOOL)a7;
- (CTEmergencyMode)initWithEnabled:(BOOL)a3 type:(int64_t)a4 isEmergencyText:(BOOL)a5 isEmergencySetup:(BOOL)a6 isStewieActive:(BOOL)a7 state:(int64_t)a8;
- (CTEmergencyMode)initWithEnabled:(BOOL)a3 type:(int64_t)a4 isEmergencyText:(BOOL)a5 isEmergencySetup:(BOOL)a6 state:(int64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTEmergencyMode

- (CTEmergencyMode)initWithEnabled:(BOOL)a3 type:(int64_t)a4 isEmergencyText:(BOOL)a5 isEmergencySetup:(BOOL)a6 isStewieActive:(BOOL)a7 state:(int64_t)a8
{
  v15.receiver = self;
  v15.super_class = CTEmergencyMode;
  result = [(CTEmergencyMode *)&v15 init];
  if (result)
  {
    result->_enabled = a3;
    result->_isEmergencyText = a5;
    result->_isEmergencySetup = a6;
    result->_isStewieActive = a7;
    result->_type = a4;
    result->_state = a8;
  }

  return result;
}

- (CTEmergencyMode)initWithEnabled:(BOOL)a3 type:(int64_t)a4 isEmergencyText:(BOOL)a5 isEmergencySetup:(BOOL)a6 state:(int64_t)a7
{
  v13.receiver = self;
  v13.super_class = CTEmergencyMode;
  result = [(CTEmergencyMode *)&v13 init];
  if (result)
  {
    result->_enabled = a3;
    result->_isEmergencyText = a5;
    result->_isEmergencySetup = a6;
    result->_isStewieActive = 0;
    result->_type = a4;
    result->_state = a7;
  }

  return result;
}

- (CTEmergencyMode)initWithEnabled:(BOOL)a3 type:(int64_t)a4 isEmergencyText:(BOOL)a5 isEmergencySetup:(BOOL)a6 isStewieActive:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = CTEmergencyMode;
  result = [(CTEmergencyMode *)&v13 init];
  if (result)
  {
    result->_enabled = a3;
    result->_isEmergencyText = a5;
    result->_isEmergencySetup = a6;
    result->_isStewieActive = a7;
    result->_type = a4;
    result->_state = 5;
  }

  return result;
}

- (CTEmergencyMode)initWithEnabled:(BOOL)a3 type:(int64_t)a4 isEmergencyText:(BOOL)a5 isEmergencySetup:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = CTEmergencyMode;
  result = [(CTEmergencyMode *)&v11 init];
  if (result)
  {
    result->_enabled = a3;
    result->_isEmergencyText = a5;
    result->_isEmergencySetup = a6;
    result->_isStewieActive = 0;
    result->_type = a4;
    result->_state = 5;
  }

  return result;
}

- (CTEmergencyMode)initWithEnabled:(BOOL)a3 type:(int64_t)a4 isEmergencyText:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = CTEmergencyMode;
  result = [(CTEmergencyMode *)&v9 init];
  if (result)
  {
    result->_enabled = a3;
    result->_isEmergencyText = a5;
    *&result->_isEmergencySetup = 1;
    result->_type = a4;
    result->_state = 5;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTEmergencyMode *)self enabled];
  v5 = "disabled";
  if (v4)
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

  v9 = [(CTEmergencyMode *)self type];
  if ((v9 - 1) > 4)
  {
    v10 = "CTEmergencyModeUnknown";
  }

  else
  {
    v10 = off_1E6A48320[v9 - 1];
  }

  [v3 appendFormat:@" type=%s", v10];
  v11 = [(CTEmergencyMode *)self state];
  if ((v11 - 1) > 4)
  {
    v12 = "CTEmergencyModeStateInCall";
  }

  else
  {
    v12 = off_1E6A48348[v11 - 1];
  }

  [v3 appendFormat:@" state=%s", v12];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTEmergencyMode:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = -[CTEmergencyMode enabled](self, "enabled"), v5 == [v4 enabled]) && (v6 = -[CTEmergencyMode type](self, "type"), v6 == objc_msgSend(v4, "type")) && (v7 = -[CTEmergencyMode isEmergencyText](self, "isEmergencyText"), v7 == objc_msgSend(v4, "isEmergencyText")) && (v8 = -[CTEmergencyMode isEmergencySetup](self, "isEmergencySetup"), v8 == objc_msgSend(v4, "isEmergencySetup")) && (v9 = -[CTEmergencyMode isStewieActive](self, "isStewieActive"), v9 == objc_msgSend(v4, "isStewieActive")))
  {
    v12 = [(CTEmergencyMode *)self state];
    v10 = v12 == [v4 state];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTEmergencyMode *)self isEqualToCTEmergencyMode:v4];
  }

  return v5;
}

+ (id)convertFromEmergencyMode:(const EmergencyMode *)a3
{
  v4 = [a1 alloc];
  v5 = (a3->var0 - 1);
  if (v5 < 5)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  var2 = a3->var2;
  v8 = (var2 - 1);
  if (v8 < 5)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 initWithEnabled:var2 != 5 type:v6 isEmergencyText:var2 == 3 isEmergencySetup:a3->var3 == 1 isStewieActive:a3->var4 state:v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CTEmergencyMode *)self enabled];
  v6 = [(CTEmergencyMode *)self type];
  v7 = [(CTEmergencyMode *)self isEmergencyText];
  v8 = [(CTEmergencyMode *)self isEmergencySetup];
  v9 = [(CTEmergencyMode *)self isStewieActive];
  v10 = [(CTEmergencyMode *)self state];

  return [v4 initWithEnabled:v5 type:v6 isEmergencyText:v7 isEmergencySetup:v8 isStewieActive:v9 state:v10];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->_enabled forKey:@"enabled"];
  [v4 encodeInteger:self->_type forKey:@"type"];
  [v4 encodeBool:self->_isEmergencyText forKey:@"isEmergencyText"];
  [v4 encodeBool:self->_isEmergencySetup forKey:@"isEmergencySetup"];
  [v4 encodeBool:self->_isStewieActive forKey:@"isStewieActiveKey"];
  [v4 encodeInteger:self->_state forKey:@"state"];
}

- (CTEmergencyMode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[CTEmergencyMode initWithEnabled:type:isEmergencyText:isEmergencySetup:isStewieActive:state:](self, "initWithEnabled:type:isEmergencyText:isEmergencySetup:isStewieActive:state:", [v4 decodeBoolForKey:@"enabled"], objc_msgSend(v4, "decodeIntegerForKey:", @"type"), objc_msgSend(v4, "decodeBoolForKey:", @"isEmergencyText"), objc_msgSend(v4, "decodeBoolForKey:", @"isEmergencySetup"), objc_msgSend(v4, "decodeBoolForKey:", @"isStewieActiveKey"), objc_msgSend(v4, "decodeIntegerForKey:", @"state"));

  return v5;
}

@end