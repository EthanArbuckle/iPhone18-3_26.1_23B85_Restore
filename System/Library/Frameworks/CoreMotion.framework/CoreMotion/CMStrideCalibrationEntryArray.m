@interface CMStrideCalibrationEntryArray
- (CMStrideCalibrationEntryArray)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
@end

@implementation CMStrideCalibrationEntryArray

- (CMStrideCalibrationEntryArray)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v7 = MEMORY[0x1E696ACD0];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v8, v11, v9, v10, 0);
    v15 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v7, v13, v12, a3, 0);

    return v15;
  }

  else
  {

    return 0;
  }
}

@end