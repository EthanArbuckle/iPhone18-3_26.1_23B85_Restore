@interface CKNotificationID
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (CKNotificationID)initWithCoder:(id)coder;
- (CKNotificationID)initWithNotificationUUID:(id)d;
- (id)CKPropertiesDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKNotificationID

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (CKNotificationID)initWithNotificationUUID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CKNotificationID;
  v7 = [(CKNotificationID *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(dCopy, v5, v6);
    notificationUUID = v7->_notificationUUID;
    v7->_notificationUUID = v8;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToString = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_msgSend_notificationUUID(self, v5, v6);
      v12 = objc_msgSend_notificationUUID(equalCopy, v8, v9);
      if (v7 == v12)
      {
        isEqualToString = 1;
      }

      else
      {
        v13 = objc_msgSend_notificationUUID(self, v10, v11);
        v16 = objc_msgSend_notificationUUID(equalCopy, v14, v15);
        isEqualToString = objc_msgSend_isEqualToString_(v13, v17, v16);
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
  v3 = objc_msgSend_notificationUUID(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_notificationUUID(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"UUID=%@", v4);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_notificationUUID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"UUID");

  objc_autoreleasePoolPop(v4);
}

- (CKNotificationID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CKNotificationID;
  v5 = [(CKNotificationID *)&v12 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"UUID");
    notificationUUID = v5->_notificationUUID;
    v5->_notificationUUID = v9;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end