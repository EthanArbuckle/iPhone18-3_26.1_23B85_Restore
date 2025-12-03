@interface NTKParmesanImageEditorItem
+ (id)_newLocalIdentifier;
- (NTKParmesanImageEditorItem)initWithImage:(id)image layout:(id)layout;
- (id)description;
@end

@implementation NTKParmesanImageEditorItem

+ (id)_newLocalIdentifier
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_UUID(MEMORY[0x277CCAD78], a2, v2, v3);
  v9 = objc_msgSend_UUIDString(v5, v6, v7, v8);
  v12 = objc_msgSend_stringWithFormat_(v4, v10, @"TransientImage-%@", v11, v9);

  return v12;
}

- (NTKParmesanImageEditorItem)initWithImage:(id)image layout:(id)layout
{
  imageCopy = image;
  layoutCopy = layout;
  v17.receiver = self;
  v17.super_class = NTKParmesanImageEditorItem;
  v9 = [(NTKParmesanImageEditorItem *)&v17 init];
  if (v9)
  {
    v10 = objc_opt_class();
    v14 = objc_msgSend__newLocalIdentifier(v10, v11, v12, v13);
    identifier = v9->_identifier;
    v9->_identifier = v14;

    objc_storeStrong(&v9->_image, image);
    objc_storeStrong(&v9->_layout, layout);
    v9->_canRevert = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@:%p> image = %@, layout = %@, canRevert = %d", v7, v5, self, self->_image, self->_layout, self->_canRevert);

  return v8;
}

@end