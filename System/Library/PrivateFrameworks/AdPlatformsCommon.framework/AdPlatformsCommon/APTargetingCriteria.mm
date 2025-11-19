@interface APTargetingCriteria
- (APTargetingCriteria)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APTargetingCriteria

- (APTargetingCriteria)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = APTargetingCriteria;
  v9 = [(APTargetingCriteria *)&v35 init];
  if (v9)
  {
    v12 = objc_msgSend_classForCoder(MEMORY[0x1E696AEC0], v5, v6, v7, v8, v10, v11);
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v13, v12, @"identifier", v14, v15, v16);
    identifier = v9->_identifier;
    v9->_identifier = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v27 = objc_msgSend_setWithObjects_(v19, v22, v20, v23, v24, v25, v26, v21, 0);
    v32 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v28, v27, @"values", v29, v30, v31);
    values = v9->_values;
    v9->_values = v32;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v13 = a3;
  objc_msgSend_encodeObject_forKey_(v13, v5, identifier, @"identifier", v6, v7, v8);
  objc_msgSend_encodeObject_forKey_(v13, v9, self->_values, @"values", v10, v11, v12);
}

@end