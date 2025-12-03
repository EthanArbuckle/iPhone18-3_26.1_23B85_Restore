@interface AISSymptomReport
- (AISSymptomReport)initWithAltDSID:(id)d symptoms:(id)symptoms combinedProblemFlags:(unint64_t)flags;
@end

@implementation AISSymptomReport

- (AISSymptomReport)initWithAltDSID:(id)d symptoms:(id)symptoms combinedProblemFlags:(unint64_t)flags
{
  dCopy = d;
  symptomsCopy = symptoms;
  v14.receiver = self;
  v14.super_class = AISSymptomReport;
  v10 = [(AISSymptomReport *)&v14 init];
  if (v10)
  {
    v11 = [dCopy copy];
    altDSID = v10->_altDSID;
    v10->_altDSID = v11;

    objc_storeStrong(&v10->_symptoms, symptoms);
    v10->_combinedProblemFlags = flags;
  }

  return v10;
}

@end