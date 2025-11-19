@interface ANSTPixelBufferDescriptor
- (ANSTPixelBufferDescriptor)initWithCoder:(id)a3;
- (ANSTPixelBufferDescriptor)initWithName:(id)a3 error:(id *)a4;
- (ANSTPixelBufferDescriptor)initWithName:(id)a3 pixelBufferAttributes:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)validatePixelBuffer:(__CVBuffer *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (unint64_t)height;
- (unint64_t)width;
- (unsigned)pixelFormatType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANSTPixelBufferDescriptor

- (ANSTPixelBufferDescriptor)initWithName:(id)a3 error:(id *)a4
{
  v6 = a3;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v7, a2);
  __break(1u);
  return result;
}

- (ANSTPixelBufferDescriptor)initWithName:(id)a3 pixelBufferAttributes:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v26.receiver = self;
  v26.super_class = ANSTPixelBufferDescriptor;
  v10 = [(ANSTDescriptor *)&v26 initWithName:a3 error:a5];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = objc_msgSend_objectForKey_(v8, v9, *MEMORY[0x277CC4EC8]);
  if (v11)
  {
    v13 = v11;
    v14 = objc_msgSend_objectForKey_(v8, v12, *MEMORY[0x277CC4DD8]);
    if (v14)
    {
      v16 = v14;
      v17 = objc_msgSend_objectForKey_(v8, v15, *MEMORY[0x277CC4E30]);

      if (v17)
      {
        v19 = objc_msgSend_copy(v8, v12, v18);
        pixelBufferAttributes = v10->_pixelBufferAttributes;
        v10->_pixelBufferAttributes = v19;

LABEL_6:
        a5 = v10;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (a5)
  {
    v21 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA068];
    v28[0] = @"Pixel buffer attributes are missing mandatory keys, i.e. width, height, and pixel format type.";
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v28, &v27, 1);
    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v21, v23, @"ANSTErrorDomain", 9, v22);

    a5 = 0;
  }

LABEL_10:

  v24 = *MEMORY[0x277D85DE8];
  return a5;
}

- (BOOL)validatePixelBuffer:(__CVBuffer *)a3
{
  v5 = objc_msgSend_width(self, a2, a3);
  if (v5 != CVPixelBufferGetWidth(a3))
  {
    return 0;
  }

  v8 = objc_msgSend_height(self, v6, v7);
  if (v8 != CVPixelBufferGetHeight(a3))
  {
    return 0;
  }

  v11 = objc_msgSend_pixelFormatType(self, v9, v10);
  return v11 == CVPixelBufferGetPixelFormatType(a3);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ANSTPixelBufferDescriptor;
  if (![(ANSTDescriptor *)&v14 isEqual:v4])
  {
    goto LABEL_6;
  }

  if (v4 == self)
  {
    isEqualToDictionary = 1;
    goto LABEL_8;
  }

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = objc_msgSend_pixelBufferAttributes(self, v5, v6);
    v10 = objc_msgSend_pixelBufferAttributes(v4, v8, v9);
    isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v7, v11, v10);
  }

  else
  {
LABEL_6:
    isEqualToDictionary = 0;
  }

LABEL_8:

  return isEqualToDictionary;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = ANSTPixelBufferDescriptor;
  v3 = [(ANSTDescriptor *)&v11 hash];
  v6 = objc_msgSend_pixelBufferAttributes(self, v4, v5);
  v9 = objc_msgSend_hash(v6, v7, v8);

  return v9 ^ v3;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_name(self, a2, v2);
  v8 = objc_msgSend_width(self, v6, v7);
  v11 = objc_msgSend_height(self, v9, v10);
  v14 = (objc_msgSend_pixelFormatType(self, v12, v13) >> 24);
  v17 = ((objc_msgSend_pixelFormatType(self, v15, v16) << 8) >> 24);
  v20 = (objc_msgSend_pixelFormatType(self, v18, v19) >> 8);
  v23 = objc_msgSend_pixelFormatType(self, v21, v22);
  v25 = objc_msgSend_stringWithFormat_(v4, v24, @"%@ (%zu×%zu, %c%c%c%c)", v5, v8, v11, v14, v17, v20, v23);

  return v25;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_name(self, v6, v7);
  v11 = objc_msgSend_pixelBufferAttributes(self, v9, v10);
  v14 = objc_msgSend_debugDescription(v11, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v3, v15, @"<%@ %p> %@ pixelBufferAttributes %@", v5, self, v8, v14);

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_name(self, v8, v9);
  v13 = objc_msgSend_pixelBufferAttributes(self, v11, v12);
  v15 = objc_msgSend_initWithName_pixelBufferAttributes_error_(v7, v14, v10, v13, 0);

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v28[3] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = ANSTPixelBufferDescriptor;
  v4 = a3;
  [(ANSTDescriptor *)&v26 encodeWithCoder:v4];
  v5 = MEMORY[0x277CCAC58];
  v8 = objc_msgSend_pixelBufferAttributes(self, v6, v7);
  v25 = 0;
  v10 = objc_msgSend_dataWithPropertyList_format_options_error_(v5, v9, v8, 200, 0, &v25);
  v11 = v25;

  if (v10)
  {
    v14 = NSStringFromSelector(sel_pixelBufferAttributes);
    objc_msgSend_encodeObject_forKey_(v4, v15, v10, v14);
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA7E8];
    v27[0] = *MEMORY[0x277CCA068];
    v27[1] = v17;
    v18 = *MEMORY[0x277CCA050];
    v28[0] = @"Pixel buffer attributes cannot be encoded.";
    v28[1] = v11;
    v27[2] = @"ANSTDescriptorName";
    v14 = objc_msgSend_name(self, v12, v13);
    v28[2] = v14;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v28, v27, 3);
    v22 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v21, v18, 4866, v20);
    objc_msgSend_failWithError_(v4, v23, v22);

    v4 = v20;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (ANSTPixelBufferDescriptor)initWithCoder:(id)a3
{
  v45[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = ANSTPixelBufferDescriptor;
  v7 = [(ANSTDescriptor *)&v41 initWithCoder:v4];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = objc_msgSend_error(v4, v5, v6);

  if (!v8)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_pixelBufferAttributes);
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v10, v11);

    if (!v13)
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA050];
      v44[0] = *MEMORY[0x277CCA068];
      v44[1] = @"ANSTDescriptorName";
      v45[0] = @"Pixel buffer descriptor pixel buffer attributes were not encoded.";
      v25 = objc_msgSend_name(v7, v14, v15);
      v45[1] = v25;
      v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v45, v44, 2);
      v29 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v28, v24, 4865, v27);
      objc_msgSend_failWithError_(v4, v30, v29);

      goto LABEL_3;
    }

    v40 = 0;
    v16 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v14, v13, 0, 0, &v40);
    v17 = v40;
    pixelBufferAttributes = v7->_pixelBufferAttributes;
    v7->_pixelBufferAttributes = v16;

    if (!v7->_pixelBufferAttributes)
    {
      v31 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA7E8];
      v42[0] = *MEMORY[0x277CCA068];
      v42[1] = v32;
      v33 = *MEMORY[0x277CCA050];
      v43[0] = @"Pixel buffer attributes cannot be decoded.";
      v43[1] = v17;
      v42[2] = @"ANSTDescriptorName";
      v34 = objc_msgSend_name(v7, v19, v20);
      v43[2] = v34;
      v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v43, v42, 3);
      v38 = objc_msgSend_errorWithDomain_code_userInfo_(v31, v37, v33, 4864, v36);
      objc_msgSend_failWithError_(v4, v39, v38);

      goto LABEL_3;
    }

LABEL_7:
    v9 = v7;
    goto LABEL_8;
  }

LABEL_3:
  v9 = 0;
LABEL_8:

  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unint64_t)width
{
  v5 = objc_msgSend_pixelBufferAttributes(self, a2, v2);
  v7 = objc_msgSend_objectForKey_(v5, v6, *MEMORY[0x277CC4EC8]);

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_msgSend_unsignedIntegerValue(v7, v8, v9);

    return v10;
  }

  else
  {
    result = objc_msgSend_doesNotRecognizeSelector_(self, v8, a2);
    __break(1u);
  }

  return result;
}

- (unint64_t)height
{
  v5 = objc_msgSend_pixelBufferAttributes(self, a2, v2);
  v7 = objc_msgSend_objectForKey_(v5, v6, *MEMORY[0x277CC4DD8]);

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_msgSend_unsignedIntegerValue(v7, v8, v9);

    return v10;
  }

  else
  {
    result = objc_msgSend_doesNotRecognizeSelector_(self, v8, a2);
    __break(1u);
  }

  return result;
}

- (unsigned)pixelFormatType
{
  v5 = objc_msgSend_pixelBufferAttributes(self, a2, v2);
  v7 = objc_msgSend_objectForKey_(v5, v6, *MEMORY[0x277CC4E30]);

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_msgSend_unsignedIntegerValue(v7, v8, v9);

    return v10;
  }

  else
  {
    result = objc_msgSend_doesNotRecognizeSelector_(self, v8, a2);
    __break(1u);
  }

  return result;
}

@end