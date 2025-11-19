@interface AISSymptomReport
- (AISSymptomReport)initWithAltDSID:(id)a3 symptoms:(id)a4 combinedProblemFlags:(unint64_t)a5;
@end

@implementation AISSymptomReport

- (AISSymptomReport)initWithAltDSID:(id)a3 symptoms:(id)a4 combinedProblemFlags:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = AISSymptomReport;
  v10 = [(AISSymptomReport *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    altDSID = v10->_altDSID;
    v10->_altDSID = v11;

    objc_storeStrong(&v10->_symptoms, a4);
    v10->_combinedProblemFlags = a5;
  }

  return v10;
}

@end