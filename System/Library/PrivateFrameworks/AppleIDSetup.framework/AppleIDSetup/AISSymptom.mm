@interface AISSymptom
- (AISSymptom)initWithAltDSID:(id)d priority:(unsigned __int8)priority problemFlag:(unint64_t)flag errorInfo:(id)info;
@end

@implementation AISSymptom

- (AISSymptom)initWithAltDSID:(id)d priority:(unsigned __int8)priority problemFlag:(unint64_t)flag errorInfo:(id)info
{
  dCopy = d;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = AISSymptom;
  v12 = [(AISSymptom *)&v16 init];
  if (v12)
  {
    v13 = [dCopy copy];
    altDSID = v12->_altDSID;
    v12->_altDSID = v13;

    v12->_priority = priority;
    v12->_problemFlag = flag;
    objc_storeStrong(&v12->_errorInfo, info);
  }

  return v12;
}

@end