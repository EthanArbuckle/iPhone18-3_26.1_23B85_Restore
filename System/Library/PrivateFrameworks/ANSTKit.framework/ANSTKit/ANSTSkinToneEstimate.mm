@interface ANSTSkinToneEstimate
+ (id)new;
- (ANSTSkinToneEstimate)init;
- (ANSTSkinToneEstimate)initWithCoder:(id)coder;
- (ANSTSkinToneEstimate)initWithTypeIConfidence:(int64_t)confidence typeIIConfidence:(int64_t)iConfidence typeIIIConfidence:(int64_t)iIConfidence typeIVConfidence:(int64_t)vConfidence typeVConfidence:(int64_t)typeVConfidence typeVIConfidence:(int64_t)vIConfidence firmwareConfidence:(int64_t)firmwareConfidence;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANSTSkinToneEstimate

- (ANSTSkinToneEstimate)init
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

- (ANSTSkinToneEstimate)initWithTypeIConfidence:(int64_t)confidence typeIIConfidence:(int64_t)iConfidence typeIIIConfidence:(int64_t)iIConfidence typeIVConfidence:(int64_t)vConfidence typeVConfidence:(int64_t)typeVConfidence typeVIConfidence:(int64_t)vIConfidence firmwareConfidence:(int64_t)firmwareConfidence
{
  v16.receiver = self;
  v16.super_class = ANSTSkinToneEstimate;
  result = [(ANSTSkinToneEstimate *)&v16 init];
  result->_typeIConfidence = confidence;
  result->_typeIIConfidence = iConfidence;
  result->_typeIIIConfidence = iIConfidence;
  result->_typeIVConfidence = vConfidence;
  result->_typeVConfidence = typeVConfidence;
  result->_typeVIConfidence = vIConfidence;
  result->_firmwareConfidence = firmwareConfidence;
  return result;
}

- (ANSTSkinToneEstimate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = ANSTSkinToneEstimate;
  v5 = [(ANSTSkinToneEstimate *)&v49 init];
  v6 = coderCopy;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_typeIConfidence);
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v9, v7, v8);

  if (v10)
  {
    v5->_typeIConfidence = objc_msgSend_integerValue(v10, v11, v12);

    v13 = v6;
    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_typeIIConfidence);
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v13, v16, v14, v15);

    if (!v17)
    {
      goto LABEL_9;
    }

    v5->_typeIIConfidence = objc_msgSend_integerValue(v17, v18, v19);

    v20 = v13;
    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_typeIIIConfidence);
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v20, v23, v21, v22);

    if (!v24)
    {
      goto LABEL_9;
    }

    v5->_typeIIIConfidence = objc_msgSend_integerValue(v24, v25, v26);

    v27 = v20;
    v28 = objc_opt_class();
    v29 = NSStringFromSelector(sel_typeIVConfidence);
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(v27, v30, v28, v29);

    if (!v31)
    {
      goto LABEL_9;
    }

    v5->_typeIVConfidence = objc_msgSend_integerValue(v31, v32, v33);

    v34 = v27;
    v35 = objc_opt_class();
    v36 = NSStringFromSelector(sel_typeVConfidence);
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(v34, v37, v35, v36);

    if (!v38)
    {
      goto LABEL_9;
    }

    v5->_typeVConfidence = objc_msgSend_integerValue(v38, v39, v40);

    v41 = v34;
    v42 = objc_opt_class();
    v43 = NSStringFromSelector(sel_typeVIConfidence);
    v45 = objc_msgSend_decodeObjectOfClass_forKey_(v41, v44, v42, v43);

    if (!v45)
    {
      goto LABEL_9;
    }

    v5->_typeVIConfidence = objc_msgSend_integerValue(v45, v46, v47);

    if (sub_22E5FE920(v41, &v5->_firmwareConfidence, sel_firmwareConfidence))
    {
      v10 = v5;
    }

    else
    {
LABEL_9:
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, self->_typeIConfidence);
  v7 = NSStringFromSelector(sel_typeIConfidence);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v6, v7);

  typeIIConfidence = self->_typeIIConfidence;
  v10 = MEMORY[0x277CCABB0];
  v11 = coderCopy;
  v13 = objc_msgSend_numberWithInteger_(v10, v12, typeIIConfidence);
  v14 = NSStringFromSelector(sel_typeIIConfidence);
  objc_msgSend_encodeObject_forKey_(v11, v15, v13, v14);

  typeIIIConfidence = self->_typeIIIConfidence;
  v17 = MEMORY[0x277CCABB0];
  v18 = v11;
  v20 = objc_msgSend_numberWithInteger_(v17, v19, typeIIIConfidence);
  v21 = NSStringFromSelector(sel_typeIIIConfidence);
  objc_msgSend_encodeObject_forKey_(v18, v22, v20, v21);

  typeIVConfidence = self->_typeIVConfidence;
  v24 = MEMORY[0x277CCABB0];
  v25 = v18;
  v27 = objc_msgSend_numberWithInteger_(v24, v26, typeIVConfidence);
  v28 = NSStringFromSelector(sel_typeIVConfidence);
  objc_msgSend_encodeObject_forKey_(v25, v29, v27, v28);

  typeVConfidence = self->_typeVConfidence;
  v31 = MEMORY[0x277CCABB0];
  v32 = v25;
  v34 = objc_msgSend_numberWithInteger_(v31, v33, typeVConfidence);
  v35 = NSStringFromSelector(sel_typeVConfidence);
  objc_msgSend_encodeObject_forKey_(v32, v36, v34, v35);

  typeVIConfidence = self->_typeVIConfidence;
  v38 = MEMORY[0x277CCABB0];
  v39 = v32;
  v41 = objc_msgSend_numberWithInteger_(v38, v40, typeVIConfidence);
  v42 = NSStringFromSelector(sel_typeVIConfidence);
  objc_msgSend_encodeObject_forKey_(v39, v43, v41, v42);

  firmwareConfidence = self->_firmwareConfidence;
  v45 = MEMORY[0x277CCABB0];
  v50 = v39;
  v47 = objc_msgSend_numberWithInteger_(v45, v46, firmwareConfidence);
  v48 = NSStringFromSelector(sel_firmwareConfidence);
  objc_msgSend_encodeObject_forKey_(v50, v49, v47, v48);
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v3, v4, @"<ANSTSkinToneEstimate %p> {\n", self);
  objc_msgSend_appendFormat_(v3, v5, @"    typeIConf   %ld\n", self->_typeIConfidence);
  objc_msgSend_appendFormat_(v3, v6, @"    typeIIConf  %ld\n", self->_typeIIConfidence);
  objc_msgSend_appendFormat_(v3, v7, @"    typeIIIConf %ld\n", self->_typeIIIConfidence);
  objc_msgSend_appendFormat_(v3, v8, @"    typeIVConf  %ld\n", self->_typeIVConfidence);
  objc_msgSend_appendFormat_(v3, v9, @"    typeVConf   %ld\n", self->_typeVConfidence);
  objc_msgSend_appendFormat_(v3, v10, @"    typeVIConf  %ld\n", self->_typeVIConfidence);
  objc_msgSend_appendFormat_(v3, v11, @"    fwConf      %ld\n", self->_firmwareConfidence);
  objc_msgSend_appendString_(v3, v12, @"}");
  v15 = objc_msgSend_copy(v3, v13, v14);

  return v15;
}

@end