@interface CKLocationSortDescriptor
- (CKLocationSortDescriptor)initWithCoder:(NSCoder *)aDecoder;
- (CKLocationSortDescriptor)initWithKey:(NSString *)key relativeLocation:(CLLocation *)relativeLocation;
- (CLLocation)relativeLocation;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compareObject:(id)object toObject:(id)toObject;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKLocationSortDescriptor

- (CKLocationSortDescriptor)initWithKey:(NSString *)key relativeLocation:(CLLocation *)relativeLocation
{
  v6 = relativeLocation;
  v13.receiver = self;
  v13.super_class = CKLocationSortDescriptor;
  v9 = [(CKLocationSortDescriptor *)&v13 initWithKey:key ascending:1 selector:0];
  if (v9)
  {
    v10 = objc_msgSend_copy(v6, v7, v8);
    v11 = v9->_relativeLocation;
    v9->_relativeLocation = v10;
  }

  return v9;
}

- (CKLocationSortDescriptor)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v12.receiver = self;
  v12.super_class = CKLocationSortDescriptor;
  v5 = [(CKLocationSortDescriptor *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"Location");
    relativeLocation = v5->_relativeLocation;
    v5->_relativeLocation = v9;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (CLLocation)relativeLocation
{
  v3 = objc_msgSend_copy(self->_relativeLocation, a2, v2);

  return v3;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_relativeLocation(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"relativeLocation=%@", v4);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = CKLocationSortDescriptor;
  [(CKLocationSortDescriptor *)&v10 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_relativeLocation(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"Location");

  objc_autoreleasePoolPop(v5);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CKLocationSortDescriptor alloc];
  v7 = objc_msgSend_key(self, v5, v6);
  v10 = objc_msgSend_relativeLocation(self, v8, v9);
  v12 = objc_msgSend_initWithKey_relativeLocation_(v4, v11, v7, v10);

  v15 = objc_msgSend_ascending(self, v13, v14);
  objc_msgSend__setAscending_(v12, v16, v15);
  return v12;
}

- (int64_t)compareObject:(id)object toObject:(id)toObject
{
  toObjectCopy = toObject;
  objectCopy = object;
  v10 = objc_msgSend_key(self, v8, v9);
  v12 = objc_msgSend_valueForKey_(objectCopy, v11, v10);

  v15 = objc_msgSend_key(self, v13, v14);
  v17 = objc_msgSend_valueForKey_(toObjectCopy, v16, v15);

  v20 = objc_msgSend_relativeLocation(self, v18, v19);
  objc_msgSend_distanceFromLocation_(v12, v21, v20);
  v23 = v22;

  v26 = objc_msgSend_relativeLocation(self, v24, v25);
  objc_msgSend_distanceFromLocation_(v17, v27, v26);
  v29 = v28;

  if (objc_msgSend_ascending(self, v30, v31))
  {
    v32 = v23 < v29;
  }

  else
  {
    v32 = v23 > v29;
  }

  return v32;
}

@end