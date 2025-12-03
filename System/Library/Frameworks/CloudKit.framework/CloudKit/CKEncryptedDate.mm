@interface CKEncryptedDate
- (CKEncryptedDate)initWithDate:(id)date;
- (NSDate)date;
@end

@implementation CKEncryptedDate

- (NSDate)date
{
  v3 = objc_msgSend_data(self, a2, v2);
  if (v3)
  {
    v4 = [CKDPRecordFieldValueEncryptedValue alloc];
    v6 = objc_msgSend_initWithData_(v4, v5, v3);
    v7 = MEMORY[0x1E695DF00];
    v10 = objc_msgSend_dateValue(v6, v8, v9);
    objc_msgSend_time(v10, v11, v12);
    v15 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v7, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CKEncryptedDate)initWithDate:(id)date
{
  dateCopy = date;
  v36 = 0;
  v5 = _CKCheckArgument("date", dateCopy, 0, 0, 0, &v36);
  v6 = v36;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v25 = [CKException alloc];
    v28 = objc_msgSend_code(v7, v26, v27);
    v31 = objc_msgSend_localizedDescription(v7, v29, v30);
    v33 = objc_msgSend_initWithCode_format_(v25, v32, v28, @"%@", v31);
    v34 = v33;

    objc_exception_throw(v33);
  }

  v8 = objc_alloc_init(CKDPRecordFieldValueEncryptedValue);
  v9 = objc_alloc_init(CKDPDate);
  objc_msgSend_setDateValue_(v8, v10, v9);

  objc_msgSend_timeIntervalSinceReferenceDate(dateCopy, v11, v12);
  v14 = v13;
  v17 = objc_msgSend_dateValue(v8, v15, v16);
  objc_msgSend_setTime_(v17, v18, v19, v14);

  v22 = objc_msgSend_data(v8, v20, v21);
  v35.receiver = self;
  v35.super_class = CKEncryptedDate;
  v23 = [(CKEncryptedData *)&v35 initWithData:v22];

  return v23;
}

@end