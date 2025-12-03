@interface ANSTActionDistribution
+ (id)new;
- (ANSTActionDistribution)init;
- (ANSTActionDistribution)initWithAcObject:(id *)object;
- (ANSTActionDistribution)initWithCoder:(id)coder;
- (ANSTActionDistribution)initWithObjectID:(unint64_t)d boundingBox:(CGRect)box confidence:(unint64_t)confidence distance:(float)distance distribution:(id)distribution;
- (ANSTActionDistribution)initWithObjectID:(unint64_t)d groupID:(unint64_t)iD category:(id)category boundingBox:(CGRect)box confidence:(unint64_t)confidence distance:(float)distance;
- (BOOL)isEqual:(id)equal;
- (NSString)mostLikelyActionType;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANSTActionDistribution

- (ANSTActionDistribution)init
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

- (ANSTActionDistribution)initWithObjectID:(unint64_t)d groupID:(unint64_t)iD category:(id)category boundingBox:(CGRect)box confidence:(unint64_t)confidence distance:(float)distance
{
  categoryCopy = category;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v11, a2);
  __break(1u);
  return result;
}

- (ANSTActionDistribution)initWithAcObject:(id *)object
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTActionDistribution)initWithObjectID:(unint64_t)d boundingBox:(CGRect)box confidence:(unint64_t)confidence distance:(float)distance distribution:(id)distribution
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  distributionCopy = distribution;
  v23.receiver = self;
  v23.super_class = ANSTActionDistribution;
  *&v16 = distance;
  v19 = [(ANSTObject *)&v23 initWithObjectID:d groupID:0 category:@"Action" boundingBox:confidence confidence:x distance:y, width, height, v16];
  if (v19)
  {
    v20 = objc_msgSend_copy(distributionCopy, v17, v18);
    distribution = v19->_distribution;
    v19->_distribution = v20;
  }

  return v19;
}

- (NSString)mostLikelyActionType
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->_distribution;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v21, v25, 16);
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v22;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKeyedSubscript_(self->_distribution, v6, v12, v21);
        objc_msgSend_floatValue(v13, v14, v15);
        v17 = v16;

        if (!v8 || v17 > v10)
        {
          v18 = v12;

          v10 = v17;
          v8 = v18;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v21, v25, 16);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_objectID(self, a2, v2);
  objc_msgSend_boundingBox(self, v6, v7);
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"[X %f, Y %f, W %f, H %f]", v9, v10, v11, v12);
  v16 = objc_msgSend_mostLikelyActionType(self, v14, v15);
  v18 = objc_msgSend_stringWithFormat_(v4, v17, @"ANSTAction<%lu, %@, mostLikelyActionType=%@>", v5, v13, v16);

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqualToDictionary = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v15.receiver = self, v15.super_class = ANSTActionDistribution, [(ANSTObject *)&v15 isEqual:equalCopy]))
    {
      v5 = equalCopy;
      v8 = objc_msgSend_distribution(self, v6, v7);
      v11 = objc_msgSend_distribution(v5, v9, v10);

      isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v8, v12, v11);
    }

    else
    {
      isEqualToDictionary = 0;
    }
  }

  return isEqualToDictionary;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = ANSTActionDistribution;
  return [(ANSTObject *)&v3 hash];
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = ANSTActionDistribution;
  coderCopy = coder;
  [(ANSTObject *)&v8 encodeWithCoder:coderCopy];
  distribution = self->_distribution;
  v6 = NSStringFromSelector(sel_distribution);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, distribution, v6, v8.receiver, v8.super_class);
}

- (ANSTActionDistribution)initWithCoder:(id)coder
{
  v28[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v9, v6, v7, v8, 0);
  v11 = NSStringFromSelector(sel_distribution);
  v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v10, v11);

  if (v13)
  {
    v26.receiver = self;
    v26.super_class = ANSTActionDistribution;
    v15 = [(ANSTObject *)&v26 initWithCoder:coderCopy];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_distribution, v13);
    }

    self = v16;
    selfCopy = self;
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA050];
    v27 = *MEMORY[0x277CCA068];
    v28[0] = @"distribution was not encoded.";
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v28, &v27, 1);
    v22 = objc_msgSend_errorWithDomain_code_userInfo_(v18, v21, v19, 4865, v20);
    objc_msgSend_failWithError_(coderCopy, v23, v22);

    selfCopy = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end