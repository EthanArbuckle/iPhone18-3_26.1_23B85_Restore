@interface CKEncryptedLocation
- (CKEncryptedLocation)initWithLocation:(id)a3;
- (CLLocation)location;
@end

@implementation CKEncryptedLocation

- (CKEncryptedLocation)initWithLocation:(id)a3
{
  v4 = a3;
  v28 = 0;
  v5 = _CKCheckArgument("location", v4, 0, 0, 0, &v28);
  v6 = v28;
  if ((v5 & 1) == 0)
  {
    v16 = v6;
    v17 = [CKException alloc];
    v20 = objc_msgSend_code(v16, v18, v19);
    v23 = objc_msgSend_localizedDescription(v16, v21, v22);
    v25 = objc_msgSend_initWithCode_format_(v17, v24, v20, @"%@", v23);
    v26 = v25;

    objc_exception_throw(v25);
  }

  v7 = objc_opt_new();
  v9 = objc_msgSend_CKDPLocationCoordinateFromCLLocation_(MEMORY[0x1E6985C40], v8, v4);
  objc_msgSend_setLocationValue_(v7, v10, v9);

  v13 = objc_msgSend_data(v7, v11, v12);
  v27.receiver = self;
  v27.super_class = CKEncryptedLocation;
  v14 = [(CKEncryptedData *)&v27 initWithData:v13];

  return v14;
}

- (CLLocation)location
{
  v3 = objc_msgSend_data(self, a2, v2);
  if (v3)
  {
    v4 = [CKDPRecordFieldValueEncryptedValue alloc];
    v6 = objc_msgSend_initWithData_(v4, v5, v3);
    v7 = MEMORY[0x1E6985C40];
    v10 = objc_msgSend_locationValue(v6, v8, v9);
    v12 = objc_msgSend_CKLocationFromPLocationCoordinate_(v7, v11, v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end