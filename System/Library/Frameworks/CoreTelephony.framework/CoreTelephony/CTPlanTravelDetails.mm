@interface CTPlanTravelDetails
- (BOOL)isEqual:(id)a3;
- (CTPlanTravelDetails)init;
- (CTPlanTravelDetails)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTPlanTravelDetails

- (CTPlanTravelDetails)init
{
  v6.receiver = self;
  v6.super_class = CTPlanTravelDetails;
  v2 = [(CTPlanTravelDetails *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_isTraveleSIM = 0;
    v2->_isGlobalMVNO = 0;
    isDataOnly = v2->_isDataOnly;
    v2->_isDataOnly = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  if ([(CTPlanTravelDetails *)self isTraveleSIM])
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  [v3 appendFormat:@" isTraveleSIM=%s", v4];
  if ([(CTPlanTravelDetails *)self isUserTraveling])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  [v3 appendFormat:@" isUserTraveling=%s", v5];
  if ([(CTPlanTravelDetails *)self isGlobalMVNO])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  [v3 appendFormat:@" isGlobalMVNO=%s", v6];
  v7 = [(CTPlanTravelDetails *)self isDataOnly];

  if (v7)
  {
    v8 = [(CTPlanTravelDetails *)self isDataOnly];
    [v3 appendFormat:@" isDataOnly=%d", objc_msgSend(v8, "BOOLValue")];
  }

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTPlanTravelDetails *)self isTraveleSIM], v5 == [(CTPlanTravelDetails *)v4 isTraveleSIM]) && (v6 = [(CTPlanTravelDetails *)self isUserTraveling], v6 == [(CTPlanTravelDetails *)v4 isUserTraveling]) && (v7 = [(CTPlanTravelDetails *)self isGlobalMVNO], v7 == [(CTPlanTravelDetails *)v4 isGlobalMVNO]))
    {
      v10 = [(CTPlanTravelDetails *)self isDataOnly];
      v11 = [(CTPlanTravelDetails *)v4 isDataOnly];
      v8 = v10 == v11;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (CTPlanTravelDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTPlanTravelDetails;
  v5 = [(CTPlanTravelDetails *)&v9 init];
  if (v5)
  {
    v5->_isTraveleSIM = [v4 decodeBoolForKey:@"TraveleSIM"];
    v5->_isUserTraveling = [v4 decodeBoolForKey:@"UserTraveling"];
    v5->_isGlobalMVNO = [v4 decodeBoolForKey:@"GlobalMVNO"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataOnly"];
    isDataOnly = v5->_isDataOnly;
    v5->_isDataOnly = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeBool:self->_isTraveleSIM forKey:@"TraveleSIM"];
  [v5 encodeBool:self->_isUserTraveling forKey:@"UserTraveling"];
  [v5 encodeBool:self->_isGlobalMVNO forKey:@"GlobalMVNO"];
  isDataOnly = self->_isDataOnly;
  if (isDataOnly)
  {
    [v5 encodeObject:isDataOnly forKey:@"DataOnly"];
  }
}

@end