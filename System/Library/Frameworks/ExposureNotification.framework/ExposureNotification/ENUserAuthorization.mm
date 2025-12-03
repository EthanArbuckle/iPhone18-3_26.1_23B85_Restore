@interface ENUserAuthorization
- (ENUserAuthorization)initWithCoder:(id)coder;
- (ENUserAuthorization)initWithIdentifier:(id)identifier;
- (id)description;
- (int64_t)expirationStatus;
- (int64_t)userAuthorization;
- (void)encodeWithCoder:(id)coder;
- (void)expirationStatus;
- (void)setUserAuthorization:(int64_t)authorization;
- (void)setUserAuthorization:(int64_t)authorization withExpiration:(id)expiration;
- (void)userAuthorization;
@end

@implementation ENUserAuthorization

- (ENUserAuthorization)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = ENUserAuthorization;
  v5 = [(ENUserAuthorization *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ENUserAuthorization *)v5 setIdentifier:identifierCopy];
  }

  return v6;
}

- (id)description
{
  NSAppendPrintF_safe();
  v39 = 0;
  identifier = [(ENUserAuthorization *)self identifier];
  NSAppendPrintF_safe();
  v3 = v39;

  userAuthorization = [(ENUserAuthorization *)self userAuthorization];
  if (userAuthorization > 2)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_278A4BCC8[userAuthorization];
  }

  v30 = v5;
  NSAppendPrintF_safe();
  v6 = v3;

  expirationDate = [(ENUserAuthorization *)self expirationDate];
  NSAppendPrintF_safe();
  v7 = v6;

  expirationStatus = [(ENUserAuthorization *)self expirationStatus];
  if (expirationStatus > 2)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_278A4BCE0[expirationStatus];
  }

  v32 = v9;
  NSAppendPrintF_safe();
  v10 = v7;

  testDateToday = [(ENUserAuthorization *)self testDateToday];

  if (testDateToday)
  {
    testDateToday2 = [(ENUserAuthorization *)self testDateToday];
    NSAppendPrintF_safe();
    v12 = v10;

    v10 = v12;
  }

  symptomOnsetDate = [(ENUserAuthorization *)self symptomOnsetDate];

  if (symptomOnsetDate)
  {
    symptomOnsetDate2 = [(ENUserAuthorization *)self symptomOnsetDate];
    NSAppendPrintF_safe();
    v14 = v10;

    v10 = v14;
  }

  didUserTravel = [(ENUserAuthorization *)self didUserTravel];

  if (didUserTravel)
  {
    didUserTravel2 = [(ENUserAuthorization *)self didUserTravel];
    if ([didUserTravel2 BOOLValue])
    {
      v17 = "yes";
    }

    else
    {
      v17 = "no";
    }

    v35 = v17;
    NSAppendPrintF_safe();
    v18 = v10;

    v10 = v18;
  }

  isUserVaccinated = [(ENUserAuthorization *)self isUserVaccinated];

  if (isUserVaccinated)
  {
    isUserVaccinated2 = [(ENUserAuthorization *)self isUserVaccinated];
    if ([isUserVaccinated2 BOOLValue])
    {
      v21 = "yes";
    }

    else
    {
      v21 = "no";
    }

    v36 = v21;
    NSAppendPrintF_safe();
    v22 = v10;

    v10 = v22;
  }

  if ([(ENUserAuthorization *)self reportType])
  {
    reportType = [(ENUserAuthorization *)self reportType];
    if (reportType > 5)
    {
      v24 = "?";
    }

    else
    {
      v24 = off_278A4BCF8[reportType];
    }

    v37 = v24;
    NSAppendPrintF_safe();
    v25 = v10;

    v10 = v25;
  }

  verificationCode = [(ENUserAuthorization *)self verificationCode];

  if (verificationCode)
  {
    verificationCode2 = [(ENUserAuthorization *)self verificationCode];
    NSAppendPrintF_safe();
    v27 = v10;

    v10 = v27;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(ENUserAuthorization *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"UserAuthorizationKeyIdentifier"];

  [coderCopy encodeInteger:-[ENUserAuthorization userAuthorization](self forKey:{"userAuthorization"), @"UserAuthorizationKeyAuthorization"}];
  [(ENUserAuthorization *)self lastUpdatedTimestamp];
  [coderCopy encodeDouble:@"UserAuthorizationKeyAuthorizationTimestamp" forKey:?];
  expirationDate = [(ENUserAuthorization *)self expirationDate];
  [expirationDate timeIntervalSince1970];
  [coderCopy encodeDouble:@"UserAuthorizationKeyExpiration" forKey:?];

  testDateToday = [(ENUserAuthorization *)self testDateToday];
  if (testDateToday)
  {
    testDateToday2 = [(ENUserAuthorization *)self testDateToday];
    [coderCopy encodeObject:testDateToday2 forKey:@"UserAuthorizationKeyTestDateToday"];
  }

  symptomOnsetDate = [(ENUserAuthorization *)self symptomOnsetDate];
  if (symptomOnsetDate)
  {
    symptomOnsetDate2 = [(ENUserAuthorization *)self symptomOnsetDate];
    [coderCopy encodeObject:symptomOnsetDate2 forKey:@"PreArmSymptomOnsetDate"];
  }

  didUserTravel = [(ENUserAuthorization *)self didUserTravel];
  if (didUserTravel)
  {
    didUserTravel2 = [(ENUserAuthorization *)self didUserTravel];
    [coderCopy encodeObject:didUserTravel2 forKey:@"PreArmDidUserTravel"];
  }

  isUserVaccinated = [(ENUserAuthorization *)self isUserVaccinated];
  if (isUserVaccinated)
  {
    isUserVaccinated2 = [(ENUserAuthorization *)self isUserVaccinated];
    [coderCopy encodeObject:isUserVaccinated2 forKey:@"PreArmIsUserVaccinated"];
  }

  if ([(ENUserAuthorization *)self reportType])
  {
    [coderCopy encodeInt64:-[ENUserAuthorization reportType](self forKey:{"reportType"), @"PreArmReportType"}];
  }

  verificationCode = [(ENUserAuthorization *)self verificationCode];
  if (verificationCode)
  {
    verificationCode2 = [(ENUserAuthorization *)self verificationCode];
    [coderCopy encodeObject:verificationCode2 forKey:@"PreArmVerificationCode"];
  }
}

- (int64_t)userAuthorization
{
  if ([(ENUserAuthorization *)self expirationStatus]== 1)
  {
    if (gLogCategory_ENUserAuthorization <= 30 && (gLogCategory_ENUserAuthorization != -1 || _LogCategory_Initialize()))
    {
      [(ENUserAuthorization *)self userAuthorization];
    }

    [(ENUserAuthorization *)self setUserAuthorization:2];
  }

  return self->_authorization;
}

- (void)setUserAuthorization:(int64_t)authorization
{
  self->_authorization = authorization;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  self->_lastUpdatedTimestamp = v4;
}

- (int64_t)expirationStatus
{
  result = [(ENUserAuthorization *)self expirationDate];
  if (result)
  {
    [(ENUserAuthorization *)self expirationStatus];
    return v4;
  }

  return result;
}

- (void)setUserAuthorization:(int64_t)authorization withExpiration:(id)expiration
{
  expirationCopy = expiration;
  [(ENUserAuthorization *)self setUserAuthorization:authorization];
  [(ENUserAuthorization *)self setExpirationDate:expirationCopy];
}

- (ENUserAuthorization)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = ENUserAuthorization;
  v5 = [(ENUserAuthorization *)&v24 init];
  if (!v5)
  {
LABEL_18:
    identifier = v5;
    goto LABEL_19;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserAuthorizationKeyIdentifier"];
  [(ENUserAuthorization *)v5 setIdentifier:v6];

  identifier = [(ENUserAuthorization *)v5 identifier];

  if (identifier)
  {
    [coderCopy decodeDoubleForKey:@"UserAuthorizationKeyExpiration"];
    if (v8 != 0.0)
    {
      v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
      expirationDate = v5->_expirationDate;
      v5->_expirationDate = v9;
    }

    if ([coderCopy containsValueForKey:@"UserAuthorizationKeyTestDateToday"])
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserAuthorizationKeyTestDateToday"];
      testDateToday = v5->_testDateToday;
      v5->_testDateToday = v11;
    }

    [coderCopy decodeDoubleForKey:@"UserAuthorizationKeyAuthorizationTimestamp"];
    v5->_lastUpdatedTimestamp = v13;
    -[ENUserAuthorization setUserAuthorization:](v5, "setUserAuthorization:", [coderCopy decodeIntegerForKey:@"UserAuthorizationKeyAuthorization"]);
    if ([coderCopy containsValueForKey:@"PreArmSymptomOnsetDate"])
    {
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreArmSymptomOnsetDate"];
      symptomOnsetDate = v5->_symptomOnsetDate;
      v5->_symptomOnsetDate = v14;
    }

    if ([coderCopy containsValueForKey:@"PreArmDidUserTravel"])
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreArmDidUserTravel"];
      didUserTravel = v5->_didUserTravel;
      v5->_didUserTravel = v16;
    }

    if ([coderCopy containsValueForKey:@"PreArmIsUserVaccinated"])
    {
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreArmIsUserVaccinated"];
      isUserVaccinated = v5->_isUserVaccinated;
      v5->_isUserVaccinated = v18;
    }

    if ([coderCopy containsValueForKey:@"PreArmReportType"])
    {
      v20 = [coderCopy decodeInt64ForKey:@"PreArmReportType"];
      if (v20 <= 5)
      {
        v5->_reportType = v20;
      }
    }

    if ([coderCopy containsValueForKey:@"PreArmVerificationCode"])
    {
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreArmVerificationCode"];
      verificationCode = v5->_verificationCode;
      v5->_verificationCode = v21;
    }

    goto LABEL_18;
  }

LABEL_19:

  return identifier;
}

- (void)userAuthorization
{
  identifier = [self identifier];
  LogPrintF_safe();
}

- (void)expirationStatus
{
  testDateToday = [self testDateToday];
  v6 = testDateToday;
  if (testDateToday)
  {
    date = testDateToday;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v8 = date;

  [v8 timeIntervalSince1970];
  if (v9 <= self[5])
  {
    v11 = 1;
  }

  else
  {
    v10 = [v8 compare:a2];
    v11 = 1;
    if (v10 != 1)
    {
      v11 = 2;
    }
  }

  *a3 = v11;
}

@end