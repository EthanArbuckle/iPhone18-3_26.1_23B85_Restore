@interface CTPlanTravelDetails
- (BOOL)isEqual:(id)equal;
- (CTPlanTravelDetails)init;
- (CTPlanTravelDetails)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  isDataOnly = [(CTPlanTravelDetails *)self isDataOnly];

  if (isDataOnly)
  {
    isDataOnly2 = [(CTPlanTravelDetails *)self isDataOnly];
    [v3 appendFormat:@" isDataOnly=%d", objc_msgSend(isDataOnly2, "BOOLValue")];
  }

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(CTPlanTravelDetails *)self isTraveleSIM], v5 == [(CTPlanTravelDetails *)equalCopy isTraveleSIM]) && (v6 = [(CTPlanTravelDetails *)self isUserTraveling], v6 == [(CTPlanTravelDetails *)equalCopy isUserTraveling]) && (v7 = [(CTPlanTravelDetails *)self isGlobalMVNO], v7 == [(CTPlanTravelDetails *)equalCopy isGlobalMVNO]))
    {
      isDataOnly = [(CTPlanTravelDetails *)self isDataOnly];
      isDataOnly2 = [(CTPlanTravelDetails *)equalCopy isDataOnly];
      v8 = isDataOnly == isDataOnly2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (CTPlanTravelDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTPlanTravelDetails;
  v5 = [(CTPlanTravelDetails *)&v9 init];
  if (v5)
  {
    v5->_isTraveleSIM = [coderCopy decodeBoolForKey:@"TraveleSIM"];
    v5->_isUserTraveling = [coderCopy decodeBoolForKey:@"UserTraveling"];
    v5->_isGlobalMVNO = [coderCopy decodeBoolForKey:@"GlobalMVNO"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataOnly"];
    isDataOnly = v5->_isDataOnly;
    v5->_isDataOnly = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_isTraveleSIM forKey:@"TraveleSIM"];
  [coderCopy encodeBool:self->_isUserTraveling forKey:@"UserTraveling"];
  [coderCopy encodeBool:self->_isGlobalMVNO forKey:@"GlobalMVNO"];
  isDataOnly = self->_isDataOnly;
  if (isDataOnly)
  {
    [coderCopy encodeObject:isDataOnly forKey:@"DataOnly"];
  }
}

@end