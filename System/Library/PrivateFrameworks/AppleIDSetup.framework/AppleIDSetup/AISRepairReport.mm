@interface AISRepairReport
- (AISRepairReport)initWithAltDSID:(id)d userProfileIdentifier:(id)identifier repairedSymptoms:(id)symptoms symptomReport:(id)report;
@end

@implementation AISRepairReport

- (AISRepairReport)initWithAltDSID:(id)d userProfileIdentifier:(id)identifier repairedSymptoms:(id)symptoms symptomReport:(id)report
{
  dCopy = d;
  identifierCopy = identifier;
  symptomsCopy = symptoms;
  reportCopy = report;
  v20.receiver = self;
  v20.super_class = AISRepairReport;
  v14 = [(AISRepairReport *)&v20 init];
  if (v14)
  {
    v15 = [dCopy copy];
    altDSID = v14->_altDSID;
    v14->_altDSID = v15;

    v17 = [identifierCopy copy];
    userProfileIdentifier = v14->_userProfileIdentifier;
    v14->_userProfileIdentifier = v17;

    objc_storeStrong(&v14->_repairedSymptoms, symptoms);
    objc_storeStrong(&v14->_symptomReport, report);
  }

  return v14;
}

@end