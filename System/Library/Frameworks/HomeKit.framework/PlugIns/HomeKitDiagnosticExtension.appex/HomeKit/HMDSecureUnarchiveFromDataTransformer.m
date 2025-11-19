@interface HMDSecureUnarchiveFromDataTransformer
+ (BOOL)isEncodedNilValue:(id)a3;
+ (id)allowedTopLevelClasses;
- (id)transformedValue:(id)a3;
@end

@implementation HMDSecureUnarchiveFromDataTransformer

- (id)transformedValue:(id)a3
{
  v4 = a3;
  if ([HMDSecureUnarchiveFromDataTransformer isEncodedNilValue:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HMDSecureUnarchiveFromDataTransformer;
    v5 = [(HMDSecureUnarchiveFromDataTransformer *)&v7 transformedValue:v4];
  }

  return v5;
}

+ (BOOL)isEncodedNilValue:(id)a3
{
  v3 = a3;
  if (qword_10003B260 != -1)
  {
    dispatch_once(&qword_10003B260, &stru_100030B58);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [v3 length], v4 == qword_10003B250))
  {
    v5 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = [v5 count], v6 == objc_msgSend(qword_10003B258, "count")))
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 1;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100013774;
      v9[3] = &unk_100030B80;
      v9[4] = &v10;
      [v5 enumerateKeysAndObjectsUsingBlock:v9];
      v7 = *(v11 + 24);
      _Block_object_dispose(&v10, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

+ (id)allowedTopLevelClasses
{
  if (objc_opt_class() == a1)
  {
    if (qword_10003B240 != -1)
    {
      dispatch_once(&qword_10003B240, &stru_100030B38);
    }

    v3 = qword_10003B248;
  }

  else
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___HMDSecureUnarchiveFromDataTransformer;
    v3 = objc_msgSendSuper2(&v5, "allowedTopLevelClasses");
  }

  return v3;
}

@end