@interface CKDiscretionaryOptions
- (CKDiscretionaryOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKDiscretionaryOptions

- (CKDiscretionaryOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = CKDiscretionaryOptions;
  v5 = [(CKDiscretionaryOptions *)&v22 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"sourceApplicationBundleId");
    applicationBundleIdentifierOverride = v5->_applicationBundleIdentifierOverride;
    v5->_applicationBundleIdentifierOverride = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"secondarySourceApplicationBundleId");
    secondarySourceApplicationBundleId = v5->_secondarySourceApplicationBundleId;
    v5->_secondarySourceApplicationBundleId = v13;

    objc_msgSend_decodeDoubleForKey_(coderCopy, v15, @"timeoutIntervalForResource");
    v5->_timeoutIntervalForResource = v16;
    v5->_allowsCellularAccess = objc_msgSend_decodeBoolForKey_(coderCopy, v17, @"allowsCellularAccess");
    v5->_allowsExpensiveNetworkAccess = objc_msgSend_decodeBoolForKey_(coderCopy, v18, @"allowsExpensiveNetworkAccess");
    v5->_discretionaryNetworkBehavior = objc_msgSend_decodeInt64ForKey_(coderCopy, v19, @"discretionaryNetworkBehavior");
    v5->_requiresNetworkAccess = objc_msgSend_decodeBoolForKey_(coderCopy, v20, @"requiresNetworkAccess");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_applicationBundleIdentifierOverride, @"sourceApplicationBundleId");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_secondarySourceApplicationBundleId, @"secondarySourceApplicationBundleId");
  objc_msgSend_encodeDouble_forKey_(coderCopy, v7, @"timeoutIntervalForResource", self->_timeoutIntervalForResource);
  objc_msgSend_encodeBool_forKey_(coderCopy, v8, self->_allowsCellularAccess, @"allowsCellularAccess");
  objc_msgSend_encodeBool_forKey_(coderCopy, v9, self->_allowsExpensiveNetworkAccess, @"allowsExpensiveNetworkAccess");
  objc_msgSend_encodeInt64_forKey_(coderCopy, v10, self->_discretionaryNetworkBehavior, @"discretionaryNetworkBehavior");
  objc_msgSend_encodeBool_forKey_(coderCopy, v11, self->_requiresNetworkAccess, @"requiresNetworkAccess");
  objc_autoreleasePoolPop(v4);
}

@end