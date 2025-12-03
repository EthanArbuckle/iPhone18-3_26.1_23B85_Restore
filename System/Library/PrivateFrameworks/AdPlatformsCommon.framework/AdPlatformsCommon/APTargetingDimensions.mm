@interface APTargetingDimensions
- (APTargetingDimensions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APTargetingDimensions

- (APTargetingDimensions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = APTargetingDimensions;
  v5 = [(APTargetingDimensions *)&v37 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v14 = objc_msgSend_setWithObjects_(v6, v9, v7, v10, v11, v12, v13, v8, 0);
    v19 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v15, v14, @"inclusionCriteria", v16, v17, v18);
    inclusionCriteria = v5->_inclusionCriteria;
    v5->_inclusionCriteria = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v29 = objc_msgSend_setWithObjects_(v21, v24, v22, v25, v26, v27, v28, v23, 0);
    v34 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v30, v29, @"exclusionCriteria", v31, v32, v33);
    exclusionCriteria = v5->_exclusionCriteria;
    v5->_exclusionCriteria = v34;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  inclusionCriteria = self->_inclusionCriteria;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, inclusionCriteria, @"inclusionCriteria", v6, v7, v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_exclusionCriteria, @"exclusionCriteria", v10, v11, v12);
}

@end