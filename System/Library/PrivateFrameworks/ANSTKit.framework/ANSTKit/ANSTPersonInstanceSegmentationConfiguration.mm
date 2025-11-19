@interface ANSTPersonInstanceSegmentationConfiguration
+ (ANSTPersonInstanceSegmentationConfiguration)new;
- (ANSTPersonInstanceSegmentationConfiguration)init;
- (ANSTPersonInstanceSegmentationConfiguration)initWithVersion:(unint64_t)a3;
- (ANSTPersonInstanceSegmentationConfiguration)initWithVersion:(unint64_t)a3 networkResolution:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ANSTPersonInstanceSegmentationConfiguration

- (ANSTPersonInstanceSegmentationConfiguration)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (ANSTPersonInstanceSegmentationConfiguration)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTPersonInstanceSegmentationConfiguration)initWithVersion:(unint64_t)a3
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTPersonInstanceSegmentationConfiguration)initWithVersion:(unint64_t)a3 networkResolution:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = ANSTPersonInstanceSegmentationConfiguration;
  result = [(ANSTConfiguration *)&v6 initWithVersion:a3];
  if (result)
  {
    result->_networkResolution = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v17 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v9 = objc_msgSend_version(self, v7, v8);
    if (v9 == objc_msgSend_version(v6, v10, v11))
    {
      v14 = objc_msgSend_networkResolution(self, v12, v13);
      v17 = v14 == objc_msgSend_networkResolution(v6, v15, v16);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  v4 = MEMORY[0x277CCABB0];
  v5 = objc_msgSend_version(self, a2, v2);
  v7 = objc_msgSend_numberWithUnsignedInteger_(v4, v6, v5);
  v10 = objc_msgSend_hash(v7, v8, v9);

  v11 = MEMORY[0x277CCABB0];
  v14 = objc_msgSend_networkResolution(self, v12, v13);
  v16 = objc_msgSend_numberWithInteger_(v11, v15, v14);
  v19 = objc_msgSend_hash(v16, v17, v18);

  return v19 ^ v10;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_appendFormat_(v3, v6, @"<%@ %p> {\n", v5, self);

  v9 = objc_msgSend_version(self, v7, v8);
  v11 = ANSTPersonInstanceSegmentationVersionToNSString(v9, v10);
  objc_msgSend_appendFormat_(v3, v12, @"  version %@\n", v11);

  v15 = objc_msgSend_networkResolution(self, v13, v14);
  v16 = ANSTPersonInstanceSegmentationResolutionToNSString(v15);
  objc_msgSend_appendFormat_(v3, v17, @"  resolution %@\n", v16);

  objc_msgSend_appendString_(v3, v18, @"}");
  v21 = objc_msgSend_copy(v3, v19, v20);

  return v21;
}

@end