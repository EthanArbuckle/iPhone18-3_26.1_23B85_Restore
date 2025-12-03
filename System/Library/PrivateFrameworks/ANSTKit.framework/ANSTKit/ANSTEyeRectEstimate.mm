@interface ANSTEyeRectEstimate
+ (id)new;
- (ANSTEyeRectEstimate)init;
- (ANSTEyeRectEstimate)initWithCoder:(id)coder;
- (ANSTEyeRectEstimate)initWithEyeRectLeft:(CGRect)left eyeRectRight:(CGRect)right;
- (CGRect)eyeRectLeft;
- (CGRect)eyeRectRight;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANSTEyeRectEstimate

- (ANSTEyeRectEstimate)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTEyeRectEstimate)initWithEyeRectLeft:(CGRect)left eyeRectRight:(CGRect)right
{
  height = right.size.height;
  width = right.size.width;
  y = right.origin.y;
  x = right.origin.x;
  v8 = left.size.height;
  v9 = left.size.width;
  v10 = left.origin.y;
  v11 = left.origin.x;
  v13.receiver = self;
  v13.super_class = ANSTEyeRectEstimate;
  result = [(ANSTEyeRectEstimate *)&v13 init];
  result->_eyeRectLeft.origin.x = v11;
  result->_eyeRectLeft.origin.y = v10;
  result->_eyeRectLeft.size.width = v9;
  result->_eyeRectLeft.size.height = v8;
  result->_eyeRectRight.origin.x = x;
  result->_eyeRectRight.origin.y = y;
  result->_eyeRectRight.size.width = width;
  result->_eyeRectRight.size.height = height;
  return result;
}

- (ANSTEyeRectEstimate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ANSTEyeRectEstimate;
  v5 = [(ANSTEyeRectEstimate *)&v8 init];
  if (sub_22E5FDB44(coderCopy, &v5->_eyeRectLeft.origin.x, sel_eyeRectLeft) && sub_22E5FDB44(coderCopy, &v5->_eyeRectRight.origin.x, sel_eyeRectRight))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  x = self->_eyeRectLeft.origin.x;
  y = self->_eyeRectLeft.origin.y;
  width = self->_eyeRectLeft.size.width;
  height = self->_eyeRectLeft.size.height;
  coderCopy = coder;
  sub_22E5FDE8C(coderCopy, sel_eyeRectLeft, x, y, width, height);
  sub_22E5FDE8C(coderCopy, sel_eyeRectRight, self->_eyeRectRight.origin.x, self->_eyeRectRight.origin.y, self->_eyeRectRight.size.width, self->_eyeRectRight.size.height);
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v3, v4, @"<ANSTEyeRectEstimate %p> {\n", self);
  x = self->_eyeRectLeft.origin.x;
  y = self->_eyeRectLeft.origin.y;
  width = self->_eyeRectLeft.size.width;
  height = self->_eyeRectLeft.size.height;
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendString_(v9, v10, @"CGRect(");
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  MinX = CGRectGetMinX(v49);
  objc_msgSend_appendFormat_(v9, v12, @"x=%.*g, ", 17, *&MinX);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MinY = CGRectGetMinY(v50);
  objc_msgSend_appendFormat_(v9, v14, @"y=%.*g, ", 17, *&MinY);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v15 = CGRectGetWidth(v51);
  objc_msgSend_appendFormat_(v9, v16, @"w=%.*g, ", 17, *&v15);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v17 = CGRectGetHeight(v52);
  objc_msgSend_appendFormat_(v9, v18, @"h=%.*g", 17, *&v17);
  objc_msgSend_appendString_(v9, v19, @""));
  v22 = objc_msgSend_copy(v9, v20, v21);

  objc_msgSend_appendFormat_(v3, v23, @"    eyeRectLeft  %@\n", v22);
  v24 = self->_eyeRectRight.origin.x;
  v25 = self->_eyeRectRight.origin.y;
  v26 = self->_eyeRectRight.size.width;
  v27 = self->_eyeRectRight.size.height;
  v28 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendString_(v28, v29, @"CGRect(");
  v53.origin.x = v24;
  v53.origin.y = v25;
  v53.size.width = v26;
  v53.size.height = v27;
  v30 = CGRectGetMinX(v53);
  objc_msgSend_appendFormat_(v28, v31, @"x=%.*g, ", 17, *&v30);
  v54.origin.x = v24;
  v54.origin.y = v25;
  v54.size.width = v26;
  v54.size.height = v27;
  v32 = CGRectGetMinY(v54);
  objc_msgSend_appendFormat_(v28, v33, @"y=%.*g, ", 17, *&v32);
  v55.origin.x = v24;
  v55.origin.y = v25;
  v55.size.width = v26;
  v55.size.height = v27;
  v34 = CGRectGetWidth(v55);
  objc_msgSend_appendFormat_(v28, v35, @"w=%.*g, ", 17, *&v34);
  v56.origin.x = v24;
  v56.origin.y = v25;
  v56.size.width = v26;
  v56.size.height = v27;
  v36 = CGRectGetHeight(v56);
  objc_msgSend_appendFormat_(v28, v37, @"h=%.*g", 17, *&v36);
  objc_msgSend_appendString_(v28, v38, @""));
  v41 = objc_msgSend_copy(v28, v39, v40);

  objc_msgSend_appendFormat_(v3, v42, @"    eyeRectRight %@\n", v41);
  objc_msgSend_appendString_(v3, v43, @"}");
  v46 = objc_msgSend_copy(v3, v44, v45);

  return v46;
}

- (CGRect)eyeRectLeft
{
  x = self->_eyeRectLeft.origin.x;
  y = self->_eyeRectLeft.origin.y;
  width = self->_eyeRectLeft.size.width;
  height = self->_eyeRectLeft.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)eyeRectRight
{
  x = self->_eyeRectRight.origin.x;
  y = self->_eyeRectRight.origin.y;
  width = self->_eyeRectRight.size.width;
  height = self->_eyeRectRight.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end