@interface ANSTHand
+ (id)new;
- (ANSTHand)init;
- (ANSTHand)initWithAcObject:(id *)a3;
- (ANSTHand)initWithCoder:(id)a3;
- (ANSTHand)initWithObjectID:(unint64_t)a3 groupID:(unint64_t)a4 category:(id)a5 boundingBox:(CGRect)a6 confidence:(unint64_t)a7 distance:(float)a8;
- (ANSTHand)initWithObjectID:(unint64_t)a3 groupID:(unint64_t)a4 category:(id)a5 boundingBox:(CGRect)a6 confidence:(unint64_t)a7 distance:(float)a8 chirality:(int64_t)a9;
- (id)debugJSONDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANSTHand

- (ANSTHand)init
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

- (ANSTHand)initWithObjectID:(unint64_t)a3 groupID:(unint64_t)a4 category:(id)a5 boundingBox:(CGRect)a6 confidence:(unint64_t)a7 distance:(float)a8
{
  v10 = a5;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v11, a2);
  __break(1u);
  return result;
}

- (ANSTHand)initWithAcObject:(id *)a3
{
  var1 = a3->var1;
  var2 = a3->var2;
  if (var2 == 10)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (var2 == 11);
  }

  var0 = a3->var0;
  v9 = ANSTObjectCategoryFromAcDetCategory(var2);
  *&v10 = a3->var5;
  v12 = objc_msgSend_initWithObjectID_groupID_category_boundingBox_confidence_distance_chirality_(self, v11, var0, var1, v9, a3->var4, v7, a3->var3.var0, a3->var3.var1, a3->var3.var2, a3->var3.var3, v10);

  return v12;
}

- (ANSTHand)initWithObjectID:(unint64_t)a3 groupID:(unint64_t)a4 category:(id)a5 boundingBox:(CGRect)a6 confidence:(unint64_t)a7 distance:(float)a8 chirality:(int64_t)a9
{
  v11.receiver = self;
  v11.super_class = ANSTHand;
  result = [(ANSTObject *)&v11 initWithObjectID:a3 groupID:a4 category:a5 boundingBox:a7 confidence:a6.origin.x distance:a6.origin.y, a6.size.width, a6.size.height];
  result->_chirality = a9;
  return result;
}

- (ANSTHand)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ANSTHand;
  v5 = [(ANSTObject *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_chirality);
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(v6, v9, v7, v8);

    if (v10)
    {
      v5->_chirality = objc_msgSend_integerValue(v10, v11, v12);

      v10 = v5;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ANSTHand;
  [(ANSTObject *)&v12 encodeWithCoder:v4];
  chirality = self->_chirality;
  v6 = MEMORY[0x277CCABB0];
  v7 = v4;
  v9 = objc_msgSend_numberWithInteger_(v6, v8, chirality);
  v10 = NSStringFromSelector(sel_chirality);
  objc_msgSend_encodeObject_forKey_(v7, v11, v9, v10);
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v3, v4, @"<ANSTHand %p> {\n", self);
  v7 = objc_msgSend_objectID(self, v5, v6);
  objc_msgSend_appendFormat_(v3, v8, @"    objectID    %lu\n", v7);
  v11 = objc_msgSend_category(self, v9, v10);
  objc_msgSend_appendFormat_(v3, v12, @"    category    %@\n", v11);

  objc_msgSend_boundingBox(self, v13, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendString_(v23, v24, @"CGRect(");
  v53.origin.x = v16;
  v53.origin.y = v18;
  v53.size.width = v20;
  v53.size.height = v22;
  MinX = CGRectGetMinX(v53);
  objc_msgSend_appendFormat_(v23, v26, @"x=%.*g, ", 17, *&MinX);
  v54.origin.x = v16;
  v54.origin.y = v18;
  v54.size.width = v20;
  v54.size.height = v22;
  MinY = CGRectGetMinY(v54);
  objc_msgSend_appendFormat_(v23, v28, @"y=%.*g, ", 17, *&MinY);
  v55.origin.x = v16;
  v55.origin.y = v18;
  v55.size.width = v20;
  v55.size.height = v22;
  Width = CGRectGetWidth(v55);
  objc_msgSend_appendFormat_(v23, v30, @"w=%.*g, ", 17, *&Width);
  v56.origin.x = v16;
  v56.origin.y = v18;
  v56.size.width = v20;
  v56.size.height = v22;
  Height = CGRectGetHeight(v56);
  objc_msgSend_appendFormat_(v23, v32, @"h=%.*g", 17, *&Height);
  objc_msgSend_appendString_(v23, v33, @""));
  v36 = objc_msgSend_copy(v23, v34, v35);

  objc_msgSend_appendFormat_(v3, v37, @"    boundingBox %@\n", v36);
  v40 = objc_msgSend_confidence(self, v38, v39);
  objc_msgSend_appendFormat_(v3, v41, @"    confidence  %lu\n", v40);
  objc_msgSend_appendFormat_(v3, v42, @"    chirality   %ld\n", self->_chirality);
  objc_msgSend_distance(self, v43, v44);
  objc_msgSend_appendFormat_(v3, v46, @"    distance  %f\n", v45);
  objc_msgSend_appendString_(v3, v47, @"}");
  v50 = objc_msgSend_copy(v3, v48, v49);

  return v50;
}

- (id)debugJSONDictionary
{
  v15.receiver = self;
  v15.super_class = ANSTHand;
  v3 = [(ANSTObject *)&v15 debugJSONDictionary];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  chirality = self->_chirality;
  if (chirality > 2)
  {
    v8 = @"ERROR";
  }

  else
  {
    v8 = off_27884FCA0[chirality];
  }

  v9 = NSStringFromSelector(sel_chirality);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v10, v8, v9);

  v13 = objc_msgSend_copy(v6, v11, v12);

  return v13;
}

@end