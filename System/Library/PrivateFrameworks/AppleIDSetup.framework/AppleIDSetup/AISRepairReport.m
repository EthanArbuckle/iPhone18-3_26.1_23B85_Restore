@interface AISRepairReport
- (AISRepairReport)initWithAltDSID:(id)a3 userProfileIdentifier:(id)a4 repairedSymptoms:(id)a5 symptomReport:(id)a6;
@end

@implementation AISRepairReport

- (AISRepairReport)initWithAltDSID:(id)a3 userProfileIdentifier:(id)a4 repairedSymptoms:(id)a5 symptomReport:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = AISRepairReport;
  v14 = [(AISRepairReport *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    altDSID = v14->_altDSID;
    v14->_altDSID = v15;

    v17 = [v11 copy];
    userProfileIdentifier = v14->_userProfileIdentifier;
    v14->_userProfileIdentifier = v17;

    objc_storeStrong(&v14->_repairedSymptoms, a5);
    objc_storeStrong(&v14->_symptomReport, a6);
  }

  return v14;
}

@end