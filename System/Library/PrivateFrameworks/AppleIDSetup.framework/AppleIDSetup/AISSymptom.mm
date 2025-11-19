@interface AISSymptom
- (AISSymptom)initWithAltDSID:(id)a3 priority:(unsigned __int8)a4 problemFlag:(unint64_t)a5 errorInfo:(id)a6;
@end

@implementation AISSymptom

- (AISSymptom)initWithAltDSID:(id)a3 priority:(unsigned __int8)a4 problemFlag:(unint64_t)a5 errorInfo:(id)a6
{
  v10 = a3;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = AISSymptom;
  v12 = [(AISSymptom *)&v16 init];
  if (v12)
  {
    v13 = [v10 copy];
    altDSID = v12->_altDSID;
    v12->_altDSID = v13;

    v12->_priority = a4;
    v12->_problemFlag = a5;
    objc_storeStrong(&v12->_errorInfo, a6);
  }

  return v12;
}

@end