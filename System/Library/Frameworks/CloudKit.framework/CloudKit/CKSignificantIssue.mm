@interface CKSignificantIssue
- (BOOL)isEqual:(id)equal;
- (CKSignificantIssue)initWithCoder:(id)coder;
- (CKSignificantIssue)initWithSourceCodeLocation:(id)location format:(id)format arguments:(char *)arguments;
- (CKSignificantIssue)initWithSourceCodeLocation:(id)location reason:(id)reason;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKSignificantIssue

- (CKSignificantIssue)initWithSourceCodeLocation:(id)location format:(id)format arguments:(char *)arguments
{
  v8 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  locationCopy = location;
  v11 = [v8 alloc];
  v13 = objc_msgSend_initWithFormat_arguments_(v11, v12, formatCopy, arguments);

  v15 = objc_msgSend_initWithSourceCodeLocation_reason_(self, v14, locationCopy, v13);
  return v15;
}

- (CKSignificantIssue)initWithSourceCodeLocation:(id)location reason:(id)reason
{
  locationCopy = location;
  reasonCopy = reason;
  if (!locationCopy)
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, a2, self, @"CKSignificantIssue.m", 125, @"Invalid parameter not satisfying: %@", @"sourceCodeLocation");
  }

  v35.receiver = self;
  v35.super_class = CKSignificantIssue;
  v13 = [(CKSignificantIssue *)&v35 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(locationCopy, v11, v12);
    sourceCodeLocation = v13->_sourceCodeLocation;
    v13->_sourceCodeLocation = v14;

    v18 = objc_msgSend_copy(reasonCopy, v16, v17);
    reason = v13->_reason;
    v13->_reason = v18;

    v22 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v20, v21);
    v25 = objc_msgSend_processName(v22, v23, v24);
    processName = v13->_processName;
    v13->_processName = v25;

    v29 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v27, v28);
    v13->_processIdentifier = objc_msgSend_processIdentifier(v29, v30, v31);
  }

  return v13;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_sourceCodeLocation(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_reason(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_sourceCodeLocation(self, v6, v7);
      v11 = objc_msgSend_sourceCodeLocation(v5, v9, v10);
      if (objc_msgSend_isEqual_(v8, v12, v11))
      {
        v15 = objc_msgSend_reason(self, v13, v14);
        v18 = objc_msgSend_reason(v5, v16, v17);
        v19 = CKObjectsAreBothNilOrEqual(v15, v18);
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v7 = objc_msgSend_sourceCodeLocation(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"sourceCodeLocation", v7, 0);

  v12 = objc_msgSend_reason(self, v9, v10);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v11, @"reason", v12, 1);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_sourceCodeLocation(self, v5, v6);
  v8 = NSStringFromSelector(sel_sourceCodeLocation);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v7, v8);

  v12 = objc_msgSend_reason(self, v10, v11);
  v13 = NSStringFromSelector(sel_reason);
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, v12, v13);

  v17 = objc_msgSend_processName(self, v15, v16);
  v18 = NSStringFromSelector(sel_processName);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v17, v18);

  v20 = MEMORY[0x1E696AD98];
  v23 = objc_msgSend_processIdentifier(self, v21, v22);
  v27 = objc_msgSend_numberWithInt_(v20, v24, v23);
  v25 = NSStringFromSelector(sel_processIdentifier);
  objc_msgSend_encodeObject_forKey_(coderCopy, v26, v27, v25);
}

- (CKSignificantIssue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_sourceCodeLocation);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v5, v6);

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_reason);
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v9, v10);

  v14 = objc_msgSend_initWithSourceCodeLocation_reason_(self, v13, v8, v12);
  if (v14)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_processName);
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v15, v16);
    processName = v14->_processName;
    v14->_processName = v18;

    v20 = objc_opt_class();
    v21 = NSStringFromSelector(sel_processIdentifier);
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v22, v20, v21);
    v14->_processIdentifier = objc_msgSend_intValue(v23, v24, v25);
  }

  return v14;
}

@end