@interface CKPackageSection
- (CKPackageSection)initWithIndex:(unint64_t)a3 signature:(id)a4 verificationKey:(id)a5;
- (id)CKPropertiesDescription;
- (unint64_t)paddedSize:(id *)a3;
- (unint64_t)size:(id *)a3;
@end

@implementation CKPackageSection

- (CKPackageSection)initWithIndex:(unint64_t)a3 signature:(id)a4 verificationKey:(id)a5
{
  v8 = a4;
  v9 = a5;
  v23.receiver = self;
  v23.super_class = CKPackageSection;
  v11 = [(CKPackageSection *)&v23 init];
  if (v11)
  {
    v12 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v10, a3);
    sectionID = v11->_sectionID;
    v11->_sectionID = v12;

    v16 = objc_msgSend_copy(v8, v14, v15);
    signature = v11->_signature;
    v11->_signature = v16;

    v20 = objc_msgSend_copy(v9, v18, v19);
    verificationKey = v11->_verificationKey;
    v11->_verificationKey = v20;
  }

  return v11;
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_sectionIndex(self, a2, v2);
  v8 = objc_msgSend_signature(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"sectionIndex=%llu, signature=%@", v5, v8);

  return v10;
}

- (unint64_t)size:(id *)a3
{
  package = self->_package;
  v4 = objc_msgSend_sectionIndex(self, a2, a3);

  return MEMORY[0x1EEE66B58](package, sel_sizeOfSectionAtIndex_error_, v4);
}

- (unint64_t)paddedSize:(id *)a3
{
  package = self->_package;
  v4 = objc_msgSend_sectionIndex(self, a2, a3);

  return MEMORY[0x1EEE66B58](package, sel_paddedSizeOfSectionAtIndex_error_, v4);
}

@end