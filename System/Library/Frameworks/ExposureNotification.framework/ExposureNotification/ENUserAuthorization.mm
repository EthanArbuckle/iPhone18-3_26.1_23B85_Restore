@interface ENUserAuthorization
- (ENUserAuthorization)initWithCoder:(id)a3;
- (ENUserAuthorization)initWithIdentifier:(id)a3;
- (id)description;
- (int64_t)expirationStatus;
- (int64_t)userAuthorization;
- (void)encodeWithCoder:(id)a3;
- (void)expirationStatus;
- (void)setUserAuthorization:(int64_t)a3;
- (void)setUserAuthorization:(int64_t)a3 withExpiration:(id)a4;
- (void)userAuthorization;
@end

@implementation ENUserAuthorization

- (ENUserAuthorization)initWithIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ENUserAuthorization;
  v5 = [(ENUserAuthorization *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ENUserAuthorization *)v5 setIdentifier:v4];
  }

  return v6;
}

- (id)description
{
  NSAppendPrintF_safe();
  v39 = 0;
  v29 = [(ENUserAuthorization *)self identifier];
  NSAppendPrintF_safe();
  v3 = v39;

  v4 = [(ENUserAuthorization *)self userAuthorization];
  if (v4 > 2)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_278A4BCC8[v4];
  }

  v30 = v5;
  NSAppendPrintF_safe();
  v6 = v3;

  v31 = [(ENUserAuthorization *)self expirationDate];
  NSAppendPrintF_safe();
  v7 = v6;

  v8 = [(ENUserAuthorization *)self expirationStatus];
  if (v8 > 2)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_278A4BCE0[v8];
  }

  v32 = v9;
  NSAppendPrintF_safe();
  v10 = v7;

  v11 = [(ENUserAuthorization *)self testDateToday];

  if (v11)
  {
    v33 = [(ENUserAuthorization *)self testDateToday];
    NSAppendPrintF_safe();
    v12 = v10;

    v10 = v12;
  }

  v13 = [(ENUserAuthorization *)self symptomOnsetDate];

  if (v13)
  {
    v34 = [(ENUserAuthorization *)self symptomOnsetDate];
    NSAppendPrintF_safe();
    v14 = v10;

    v10 = v14;
  }

  v15 = [(ENUserAuthorization *)self didUserTravel];

  if (v15)
  {
    v16 = [(ENUserAuthorization *)self didUserTravel];
    if ([v16 BOOLValue])
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

  v19 = [(ENUserAuthorization *)self isUserVaccinated];

  if (v19)
  {
    v20 = [(ENUserAuthorization *)self isUserVaccinated];
    if ([v20 BOOLValue])
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
    v23 = [(ENUserAuthorization *)self reportType];
    if (v23 > 5)
    {
      v24 = "?";
    }

    else
    {
      v24 = off_278A4BCF8[v23];
    }

    v37 = v24;
    NSAppendPrintF_safe();
    v25 = v10;

    v10 = v25;
  }

  v26 = [(ENUserAuthorization *)self verificationCode];

  if (v26)
  {
    v38 = [(ENUserAuthorization *)self verificationCode];
    NSAppendPrintF_safe();
    v27 = v10;

    v10 = v27;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v4 = [(ENUserAuthorization *)self identifier];
  [v16 encodeObject:v4 forKey:@"UserAuthorizationKeyIdentifier"];

  [v16 encodeInteger:-[ENUserAuthorization userAuthorization](self forKey:{"userAuthorization"), @"UserAuthorizationKeyAuthorization"}];
  [(ENUserAuthorization *)self lastUpdatedTimestamp];
  [v16 encodeDouble:@"UserAuthorizationKeyAuthorizationTimestamp" forKey:?];
  v5 = [(ENUserAuthorization *)self expirationDate];
  [v5 timeIntervalSince1970];
  [v16 encodeDouble:@"UserAuthorizationKeyExpiration" forKey:?];

  v6 = [(ENUserAuthorization *)self testDateToday];
  if (v6)
  {
    v7 = [(ENUserAuthorization *)self testDateToday];
    [v16 encodeObject:v7 forKey:@"UserAuthorizationKeyTestDateToday"];
  }

  v8 = [(ENUserAuthorization *)self symptomOnsetDate];
  if (v8)
  {
    v9 = [(ENUserAuthorization *)self symptomOnsetDate];
    [v16 encodeObject:v9 forKey:@"PreArmSymptomOnsetDate"];
  }

  v10 = [(ENUserAuthorization *)self didUserTravel];
  if (v10)
  {
    v11 = [(ENUserAuthorization *)self didUserTravel];
    [v16 encodeObject:v11 forKey:@"PreArmDidUserTravel"];
  }

  v12 = [(ENUserAuthorization *)self isUserVaccinated];
  if (v12)
  {
    v13 = [(ENUserAuthorization *)self isUserVaccinated];
    [v16 encodeObject:v13 forKey:@"PreArmIsUserVaccinated"];
  }

  if ([(ENUserAuthorization *)self reportType])
  {
    [v16 encodeInt64:-[ENUserAuthorization reportType](self forKey:{"reportType"), @"PreArmReportType"}];
  }

  v14 = [(ENUserAuthorization *)self verificationCode];
  if (v14)
  {
    v15 = [(ENUserAuthorization *)self verificationCode];
    [v16 encodeObject:v15 forKey:@"PreArmVerificationCode"];
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

- (void)setUserAuthorization:(int64_t)a3
{
  self->_authorization = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSince1970];
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

- (void)setUserAuthorization:(int64_t)a3 withExpiration:(id)a4
{
  v6 = a4;
  [(ENUserAuthorization *)self setUserAuthorization:a3];
  [(ENUserAuthorization *)self setExpirationDate:v6];
}

- (ENUserAuthorization)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ENUserAuthorization;
  v5 = [(ENUserAuthorization *)&v24 init];
  if (!v5)
  {
LABEL_18:
    v7 = v5;
    goto LABEL_19;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserAuthorizationKeyIdentifier"];
  [(ENUserAuthorization *)v5 setIdentifier:v6];

  v7 = [(ENUserAuthorization *)v5 identifier];

  if (v7)
  {
    [v4 decodeDoubleForKey:@"UserAuthorizationKeyExpiration"];
    if (v8 != 0.0)
    {
      v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
      expirationDate = v5->_expirationDate;
      v5->_expirationDate = v9;
    }

    if ([v4 containsValueForKey:@"UserAuthorizationKeyTestDateToday"])
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserAuthorizationKeyTestDateToday"];
      testDateToday = v5->_testDateToday;
      v5->_testDateToday = v11;
    }

    [v4 decodeDoubleForKey:@"UserAuthorizationKeyAuthorizationTimestamp"];
    v5->_lastUpdatedTimestamp = v13;
    -[ENUserAuthorization setUserAuthorization:](v5, "setUserAuthorization:", [v4 decodeIntegerForKey:@"UserAuthorizationKeyAuthorization"]);
    if ([v4 containsValueForKey:@"PreArmSymptomOnsetDate"])
    {
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreArmSymptomOnsetDate"];
      symptomOnsetDate = v5->_symptomOnsetDate;
      v5->_symptomOnsetDate = v14;
    }

    if ([v4 containsValueForKey:@"PreArmDidUserTravel"])
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreArmDidUserTravel"];
      didUserTravel = v5->_didUserTravel;
      v5->_didUserTravel = v16;
    }

    if ([v4 containsValueForKey:@"PreArmIsUserVaccinated"])
    {
      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreArmIsUserVaccinated"];
      isUserVaccinated = v5->_isUserVaccinated;
      v5->_isUserVaccinated = v18;
    }

    if ([v4 containsValueForKey:@"PreArmReportType"])
    {
      v20 = [v4 decodeInt64ForKey:@"PreArmReportType"];
      if (v20 <= 5)
      {
        v5->_reportType = v20;
      }
    }

    if ([v4 containsValueForKey:@"PreArmVerificationCode"])
    {
      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreArmVerificationCode"];
      verificationCode = v5->_verificationCode;
      v5->_verificationCode = v21;
    }

    goto LABEL_18;
  }

LABEL_19:

  return v7;
}

- (void)userAuthorization
{
  v1 = [a1 identifier];
  LogPrintF_safe();
}

- (void)expirationStatus
{
  v5 = [a1 testDateToday];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] date];
  }

  v8 = v7;

  [v8 timeIntervalSince1970];
  if (v9 <= a1[5])
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