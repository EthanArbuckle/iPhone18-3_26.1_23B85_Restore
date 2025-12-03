@interface ANST3DPoseEstimate
+ (id)new;
- (ANST3DPoseEstimate)init;
- (ANST3DPoseEstimate)initWithCoder:(id)coder;
- (ANST3DPoseEstimate)initWithYaw:(int64_t)yaw roll:(int64_t)roll refinedYaw:(int64_t)refinedYaw refinedRoll:(int64_t)refinedRoll refinedPitch:(int64_t)pitch;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANST3DPoseEstimate

- (ANST3DPoseEstimate)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANST3DPoseEstimate)initWithYaw:(int64_t)yaw roll:(int64_t)roll refinedYaw:(int64_t)refinedYaw refinedRoll:(int64_t)refinedRoll refinedPitch:(int64_t)pitch
{
  v13.receiver = self;
  v13.super_class = ANST3DPoseEstimate;
  result = [(ANST3DPoseEstimate *)&v13 init];
  result->_yaw = yaw;
  result->_roll = roll;
  result->_refinedYaw = refinedYaw;
  result->_refinedRoll = refinedRoll;
  result->_refinedPitch = pitch;
  return result;
}

- (ANST3DPoseEstimate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = ANST3DPoseEstimate;
  v5 = [(ANST3DPoseEstimate *)&v41 init];
  v6 = coderCopy;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector("yaw");
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v9, v7, v8);

  if (v10)
  {
    v5->_yaw = objc_msgSend_integerValue(v10, v11, v12);

    v13 = v6;
    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_roll);
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v13, v16, v14, v15);

    if (!v17)
    {
      goto LABEL_7;
    }

    v5->_roll = objc_msgSend_integerValue(v17, v18, v19);

    v20 = v13;
    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_refinedYaw);
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v20, v23, v21, v22);

    if (!v24)
    {
      goto LABEL_7;
    }

    v5->_refinedYaw = objc_msgSend_integerValue(v24, v25, v26);

    v27 = v20;
    v28 = objc_opt_class();
    v29 = NSStringFromSelector(sel_refinedRoll);
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(v27, v30, v28, v29);

    if (v31)
    {
      v5->_refinedRoll = objc_msgSend_integerValue(v31, v32, v33);

      v34 = v27;
      v35 = objc_opt_class();
      v36 = NSStringFromSelector(sel_refinedPitch);
      v10 = objc_msgSend_decodeObjectOfClass_forKey_(v34, v37, v35, v36);

      if (v10)
      {
        v5->_refinedPitch = objc_msgSend_integerValue(v10, v38, v39);

        v10 = v5;
      }
    }

    else
    {
LABEL_7:
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, self->_yaw);
  v7 = NSStringFromSelector("yaw");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v6, v7);

  roll = self->_roll;
  v10 = MEMORY[0x277CCABB0];
  v11 = coderCopy;
  v13 = objc_msgSend_numberWithInteger_(v10, v12, roll);
  v14 = NSStringFromSelector(sel_roll);
  objc_msgSend_encodeObject_forKey_(v11, v15, v13, v14);

  refinedYaw = self->_refinedYaw;
  v17 = MEMORY[0x277CCABB0];
  v18 = v11;
  v20 = objc_msgSend_numberWithInteger_(v17, v19, refinedYaw);
  v21 = NSStringFromSelector(sel_refinedYaw);
  objc_msgSend_encodeObject_forKey_(v18, v22, v20, v21);

  refinedRoll = self->_refinedRoll;
  v24 = MEMORY[0x277CCABB0];
  v25 = v18;
  v27 = objc_msgSend_numberWithInteger_(v24, v26, refinedRoll);
  v28 = NSStringFromSelector(sel_refinedRoll);
  objc_msgSend_encodeObject_forKey_(v25, v29, v27, v28);

  refinedPitch = self->_refinedPitch;
  v31 = MEMORY[0x277CCABB0];
  v36 = v25;
  v33 = objc_msgSend_numberWithInteger_(v31, v32, refinedPitch);
  v34 = NSStringFromSelector(sel_refinedPitch);
  objc_msgSend_encodeObject_forKey_(v36, v35, v33, v34);
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v3, v4, @"<ANST3DPoseEstimate %p> {\n", self);
  objc_msgSend_appendFormat_(v3, v5, @"    yaw          %ld\n", self->_yaw);
  objc_msgSend_appendFormat_(v3, v6, @"    roll         %ld\n", self->_roll);
  objc_msgSend_appendFormat_(v3, v7, @"    refinedYaw   %ld\n", self->_refinedYaw);
  objc_msgSend_appendFormat_(v3, v8, @"    refinedRoll  %ld\n", self->_refinedRoll);
  objc_msgSend_appendFormat_(v3, v9, @"    refinedPitch %ld\n", self->_refinedPitch);
  objc_msgSend_appendString_(v3, v10, @"}");
  v13 = objc_msgSend_copy(v3, v11, v12);

  return v13;
}

@end