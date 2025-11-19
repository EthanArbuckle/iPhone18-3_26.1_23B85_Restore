@interface CKPackageItem
- (CKPackageItem)initWithDeviceID:(id)a3 fileID:(id)a4 generationID:(id)a5;
- (CKPackageItem)initWithFileURL:(id)a3;
- (id)description;
- (unint64_t)packageIndex;
- (void)setPackageIndex:(unint64_t)a3;
@end

@implementation CKPackageItem

- (CKPackageItem)initWithFileURL:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKPackageItem;
  v7 = [(CKPackageItem *)&v12 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    fileURL = v7->_fileURL;
    v7->_fileURL = v8;

    itemTypeHint = v7->_itemTypeHint;
    v7->_itemTypeHint = 0;
    v7->_itemID = -1;
  }

  return v7;
}

- (CKPackageItem)initWithDeviceID:(id)a3 fileID:(id)a4 generationID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v10, *MEMORY[0x1E695D940], @"Null deviceID");
    if (v9)
    {
      goto LABEL_3;
    }
  }

  objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v10, *MEMORY[0x1E695D940], @"Null fileID");
LABEL_3:
  v13 = objc_msgSend_intValue(v8, v10, v11);
  v16 = objc_msgSend_unsignedLongLongValue(v9, v14, v15);
  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"/.vol/%u/%llu", v13, v16);
  v20 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v19, v18, 0);
  v22 = objc_msgSend_initWithFileURL_(self, v21, v20);

  if (v22)
  {
    v25 = objc_msgSend_copy(v8, v23, v24);
    deviceID = v22->_deviceID;
    v22->_deviceID = v25;

    v29 = objc_msgSend_copy(v9, v27, v28);
    fileID = v22->_fileID;
    v22->_fileID = v29;

    v33 = objc_msgSend_copy(v12, v31, v32);
    generationID = v22->_generationID;
    v22->_generationID = v33;

    itemTypeHint = v22->_itemTypeHint;
    v22->_itemTypeHint = 0;
  }

  return v22;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = v3;
  if (self->_fileID && (deviceID = self->_deviceID) != 0)
  {
    objc_msgSend_appendFormat_(v3, v4, @"file: (fileID: %@, deviceID: %@), ", self->_fileID, deviceID);
  }

  else if (self->_fileURL)
  {
    objc_msgSend_appendFormat_(v3, v4, @"fileURL: %@, ", self->_fileURL);
  }

  else
  {
    objc_msgSend_appendFormat_(v3, v4, @"no file, ");
  }

  if (self->_generationID)
  {
    objc_msgSend_appendFormat_(v5, v7, @"generationID: %@, ", self->_generationID);
  }

  v9 = objc_msgSend_packageIndex(self, v7, v8);
  objc_msgSend_appendFormat_(v5, v10, @"packageIndex: %llu, sectionIndex: %@, size: %lld, paddedSize: %lld", v9, self->_sectionIndex, self->_size, self->_paddedSize);
  if (self->_itemID != -1)
  {
    objc_msgSend_appendFormat_(v5, v11, @", itemID: %llu", self->_itemID);
  }

  return v5;
}

- (void)setPackageIndex:(unint64_t)a3
{
  if (a3 == -1)
  {

    objc_msgSend_setPackageItemID_(self, a2, 0);
  }

  else
  {
    v5 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, a3);
    objc_msgSend_setPackageItemID_(self, v4, v5);
  }
}

- (unint64_t)packageIndex
{
  if (!self->_packageItemID)
  {
    return -1;
  }

  v3 = objc_msgSend_packageItemID(self, a2, v2);
  v6 = objc_msgSend_unsignedLongLongValue(v3, v4, v5);

  return v6;
}

@end