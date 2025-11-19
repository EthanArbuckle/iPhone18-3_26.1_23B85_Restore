@interface ANSTObject
+ (id)new;
- (ANSTObject)init;
- (ANSTObject)initWithAcObject:(id *)a3;
- (ANSTObject)initWithCoder:(id)a3;
- (ANSTObject)initWithObjectID:(unint64_t)a3 groupID:(unint64_t)a4 category:(id)a5 boundingBox:(CGRect)a6 confidence:(unint64_t)a7 distance:(float)a8;
- (BOOL)isEqual:(id)a3;
- (CGRect)boundingBox;
- (id)debugJSONDictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANSTObject

- (ANSTObject)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTObject)initWithAcObject:(id *)a3
{
  var0 = a3->var0;
  var1 = a3->var1;
  v7 = ANSTObjectCategoryFromAcDetCategory(a3->var2);
  *&v8 = a3->var5;
  v10 = objc_msgSend_initWithObjectID_groupID_category_boundingBox_confidence_distance_(self, v9, var0, var1, v7, a3->var4, a3->var3.var0, a3->var3.var1, a3->var3.var2, a3->var3.var3, v8);

  return v10;
}

- (ANSTObject)initWithObjectID:(unint64_t)a3 groupID:(unint64_t)a4 category:(id)a5 boundingBox:(CGRect)a6 confidence:(unint64_t)a7 distance:(float)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v23.receiver = self;
  v23.super_class = ANSTObject;
  v16 = a5;
  v17 = [(ANSTObject *)&v23 init];
  v17->_objectID = a3;
  v17->_groupID = a4;
  v20 = objc_msgSend_copy(v16, v18, v19, v23.receiver, v23.super_class);

  category = v17->_category;
  v17->_category = v20;

  v17->_boundingBox.origin.x = x;
  v17->_boundingBox.origin.y = y;
  v17->_boundingBox.size.width = width;
  v17->_boundingBox.size.height = height;
  v17->_confidence = a7;
  v17->_distance = a8;
  return v17;
}

- (ANSTObject)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = ANSTObject;
  v5 = [(ANSTObject *)&v42 init];
  v6 = v4;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_objectID);
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v9, v7, v8);

  if (v10)
  {
    v5->_objectID = objc_msgSend_unsignedIntegerValue(v10, v11, v12);

    v13 = v6;
    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_groupID);
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v13, v16, v14, v15);

    if (!v17)
    {
      goto LABEL_8;
    }

    v5->_groupID = objc_msgSend_unsignedIntegerValue(v17, v18, v19);

    v20 = v13;
    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_confidence);
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v20, v23, v21, v22);

    if (!v24)
    {
      goto LABEL_8;
    }

    v5->_confidence = objc_msgSend_unsignedIntegerValue(v24, v25, v26);

    v27 = v20;
    v28 = objc_opt_class();
    v29 = NSStringFromSelector(sel_distance);
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(v27, v30, v28, v29);

    if (!v31)
    {
      goto LABEL_8;
    }

    objc_msgSend_floatValue(v31, v32, v33);
    v5->_distance = v34;

    if (!sub_22E5FDB44(v27, &v5->_boundingBox.origin.x, sel_boundingBox))
    {
      goto LABEL_8;
    }

    v35 = v27;
    v36 = objc_opt_class();
    v37 = NSStringFromSelector(sel_category);
    v39 = objc_msgSend_decodeObjectOfClass_forKey_(v35, v38, v36, v37);

    category = v5->_category;
    v5->_category = v39;

    if (v5->_category)
    {
      v10 = v5;
    }

    else
    {
LABEL_8:
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v5, self->_objectID);
  v7 = NSStringFromSelector(sel_objectID);
  objc_msgSend_encodeObject_forKey_(v4, v8, v6, v7);

  groupID = self->_groupID;
  v10 = MEMORY[0x277CCABB0];
  v11 = v4;
  v13 = objc_msgSend_numberWithUnsignedInteger_(v10, v12, groupID);
  v14 = NSStringFromSelector(sel_groupID);
  objc_msgSend_encodeObject_forKey_(v11, v15, v13, v14);

  v16 = self->_category;
  v17 = v11;
  v18 = NSStringFromSelector(sel_category);
  objc_msgSend_encodeObject_forKey_(v17, v19, v16, v18);

  sub_22E5FDE8C(v17, sel_boundingBox, self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height);
  confidence = self->_confidence;
  v21 = MEMORY[0x277CCABB0];
  v22 = v17;
  v24 = objc_msgSend_numberWithUnsignedInteger_(v21, v23, confidence);
  v25 = NSStringFromSelector(sel_confidence);
  objc_msgSend_encodeObject_forKey_(v22, v26, v24, v25);

  distance = self->_distance;
  v28 = MEMORY[0x277CCABB0];
  v35 = v22;
  *&v29 = distance;
  v32 = objc_msgSend_numberWithFloat_(v28, v30, v31, v29);
  v33 = NSStringFromSelector(sel_distance);
  objc_msgSend_encodeObject_forKey_(v35, v34, v32, v33);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    isEqualToString = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (objc_msgSend_objectID(v5, v6, v7) == self->_objectID && objc_msgSend_groupID(v5, v8, v9) == self->_groupID && objc_msgSend_confidence(v5, v10, v11) == self->_confidence && (objc_msgSend_distance(v5, v12, v13), v16 == self->_distance) && (objc_msgSend_boundingBox(v5, v14, v15), CGRectEqualToRect(v23, self->_boundingBox)))
      {
        v19 = objc_msgSend_category(v5, v17, v18);
        isEqualToString = objc_msgSend_isEqualToString_(v19, v20, self->_category);
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  return isEqualToString;
}

- (unint64_t)hash
{
  v3 = self->_groupID - self->_objectID + 32 * self->_objectID;
  v4 = self->_boundingBox.origin.x - v3 + 32 * v3;
  v5 = self->_boundingBox.origin.y - v4 + 32 * v4;
  v6 = self->_boundingBox.size.height - (self->_boundingBox.size.width - v5 + 32 * v5) + 32 * (self->_boundingBox.size.width - v5 + 32 * v5);
  v7 = self->_confidence - v6 + 32 * v6;
  v8 = self->_distance - v7 + 32 * v7;
  return objc_msgSend_hash(self->_category, a2, v2) - v8 + 32 * v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v3, v4, @"<ANSTObject %p> {\n", self);
  objc_msgSend_appendFormat_(v3, v5, @"    objectID    %lu\n", self->_objectID);
  objc_msgSend_appendFormat_(v3, v6, @"    groupID     %lu\n", self->_groupID);
  objc_msgSend_appendFormat_(v3, v7, @"    category    %@\n", self->_category);
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendString_(v12, v13, @"CGRect(");
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MinX = CGRectGetMinX(v35);
  objc_msgSend_appendFormat_(v12, v15, @"x=%.*g, ", 17, *&MinX);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  MinY = CGRectGetMinY(v36);
  objc_msgSend_appendFormat_(v12, v17, @"y=%.*g, ", 17, *&MinY);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v18 = CGRectGetWidth(v37);
  objc_msgSend_appendFormat_(v12, v19, @"w=%.*g, ", 17, *&v18);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v20 = CGRectGetHeight(v38);
  objc_msgSend_appendFormat_(v12, v21, @"h=%.*g", 17, *&v20);
  objc_msgSend_appendString_(v12, v22, @""));
  v25 = objc_msgSend_copy(v12, v23, v24);

  objc_msgSend_appendFormat_(v3, v26, @"    boundingBox %@\n", v25);
  objc_msgSend_appendFormat_(v3, v27, @"    confidence  %lu\n", self->_confidence);
  objc_msgSend_appendFormat_(v3, v28, @"    distance  %f\n", self->_distance);
  objc_msgSend_appendString_(v3, v29, @"}");
  v32 = objc_msgSend_copy(v3, v30, v31);

  return v32;
}

- (id)debugJSONDictionary
{
  v3 = objc_opt_new();
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v4, self->_objectID);
  v6 = NSStringFromSelector(sel_objectID);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v5, v6);

  v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, self->_groupID);
  v10 = NSStringFromSelector(sel_groupID);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v11, v9, v10);

  category = self->_category;
  v13 = NSStringFromSelector(sel_category);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v14, category, v13);

  v18 = sub_22E5FE548(self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height, v15, v16, v17);
  v19 = NSStringFromSelector(sel_boundingBox);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v20, v18, v19);

  v22 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v21, self->_confidence);
  v23 = NSStringFromSelector(sel_confidence);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v24, v22, v23);

  *&v25 = self->_distance;
  v28 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v26, v27, v25);
  v29 = NSStringFromSelector(sel_distance);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v30, v28, v29);

  v33 = objc_msgSend_copy(v3, v31, v32);

  return v33;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end