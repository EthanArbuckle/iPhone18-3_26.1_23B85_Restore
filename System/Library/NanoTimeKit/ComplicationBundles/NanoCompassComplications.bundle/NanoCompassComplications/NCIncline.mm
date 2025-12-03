@interface NCIncline
+ (NCIncline)idealizedIncline;
+ (id)newIncline:(id)incline;
+ (id)randomizedIncline;
- ($1AB5FA073B851C12C2339EC22442E995)gravity;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateHasSignificantChange:(id)change;
- (CGPoint)horizontalOffset;
- (NCIncline)initWithNCIncline:(id)incline;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setGravity:(id)gravity;
@end

@implementation NCIncline

- (id)description
{
  hasReading = self->_hasReading;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = v6;
  if (hasReading)
  {
    objc_msgSend_stringWithFormat_(v4, v7, @"<%@: %p>(vertical: %f, horizontal: %f, timestamp: %f)", v8, v6, self, *&self->_verticalTilt, *&self->_horizontalTilt, *&self->_timestamp);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v4, v7, @"<%@: %p>(no reading)", v8, v6, self);
  }
  v10 = ;

  return v10;
}

- (BOOL)updateHasSignificantChange:(id)change
{
  if (((change != 0) ^ self->_hasReading))
  {
    return 1;
  }

  objc_msgSend_gravity(change, a2, change, v3);
  x = self->_gravity.x;
  y = self->_gravity.y;
  z = self->_gravity.z;

  return sub_23BD36DF0(v7, v8, v9, x, y, z);
}

+ (id)newIncline:(id)incline
{
  inclineCopy = incline;
  v4 = objc_opt_new();
  v7 = v4;
  if (inclineCopy)
  {
    objc_msgSend_setHasReading_(v4, v5, 1, v6);
    objc_msgSend_gravity(inclineCopy, v8, v9, v10);
    objc_msgSend_setGravity_(v7, v11, v12, v13);
    objc_msgSend_timestamp(inclineCopy, v14, v15, v16);
    objc_msgSend_setTimestamp_(v7, v17, v18, v19);
  }

  return v7;
}

- (NCIncline)initWithNCIncline:(id)incline
{
  inclineCopy = incline;
  v49.receiver = self;
  v49.super_class = NCIncline;
  v8 = [(NCIncline *)&v49 init];
  if (v8)
  {
    objc_msgSend_gravity(inclineCopy, v5, v6, v7);
    objc_msgSend_setGravity_(v8, v9, v10, v11);
    v15 = objc_msgSend_orientation(inclineCopy, v12, v13, v14);
    objc_msgSend_setOrientation_(v8, v16, v15, v17);
    objc_msgSend_verticalTilt(inclineCopy, v18, v19, v20);
    objc_msgSend_setVerticalTilt_(v8, v21, v22, v23);
    objc_msgSend_horizontalOffset(inclineCopy, v24, v25, v26);
    objc_msgSend_setHorizontalOffset_(v8, v27, v28, v29);
    objc_msgSend_horizontalTilt(inclineCopy, v30, v31, v32);
    objc_msgSend_setHorizontalTilt_(v8, v33, v34, v35);
    objc_msgSend_timestamp(inclineCopy, v36, v37, v38);
    objc_msgSend_setTimestamp_(v8, v39, v40, v41);
    hasReading = objc_msgSend_hasReading(inclineCopy, v42, v43, v44);
    objc_msgSend_setHasReading_(v8, v46, hasReading, v47);
  }

  return v8;
}

- (void)setGravity:(id)gravity
{
  var1 = gravity.var1;
  var0 = gravity.var0;
  self->_gravity = gravity;
  v8 = acos(gravity.var2);
  v9 = v8 + -1.57079633;
  if (v8 + -1.57079633 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 <= 0.610865238)
  {
    v18 = atan2(var0, -var1);
    objc_msgSend_setOrientation_(self, v19, 0, v20);
    v24 = 1.57079633;
    if (v18 <= 1.57079633)
    {
      v24 = v18;
    }

    v25 = fmax(v24, -1.57079633) * 180.0 / 3.14159265;

    objc_msgSend_setVerticalTilt_(self, v21, v22, v23, v25);
  }

  else
  {
    objc_msgSend_setOrientation_(self, v6, 1, v7);
    objc_msgSend_setHorizontalOffset_(self, v10, v11, v12, -var0, var1);
    v16 = v8 + -3.14159265;
    if (v8 <= 1.57079633)
    {
      v16 = v8;
    }

    v17 = v16 * 180.0 / 3.14159265;

    objc_msgSend_setHorizontalTilt_(self, v13, v14, v15, v17);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_gravity(equalCopy, v5, v6, v7);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    objc_msgSend_gravity(self, v14, v15, v16);
    v20 = !sub_23BD36DF0(v9, v11, v13, v17, v18, v19);
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20;
}

+ (NCIncline)idealizedIncline
{
  if (qword_27E1C4F18 != -1)
  {
    sub_23BD65B30();
  }

  v3 = qword_27E1C4F10;

  return v3;
}

+ (id)randomizedIncline
{
  v2 = objc_opt_new();
  objc_msgSend_setHasReading_(v2, v3, 1, v4);
  if (arc4random())
  {
    objc_msgSend_setOrientation_(v2, v5, 0, v6);
    v14 = arc4random_uniform(0xB4u);
    objc_msgSend_setVerticalTilt_(v2, v15, v16, v17, (v14 - 90));
  }

  else
  {
    objc_msgSend_setOrientation_(v2, v5, 1, v6);
    v7 = arc4random_uniform(0x37u);
    objc_msgSend_setHorizontalTilt_(v2, v8, v9, v10, v7);
  }

  v18 = objc_msgSend_date(MEMORY[0x277CBEAA8], v11, v12, v13);
  objc_msgSend_timeIntervalSinceReferenceDate(v18, v19, v20, v21);
  objc_msgSend_setTimestamp_(v2, v22, v23, v24);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCIncline alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithNCIncline_, self, v5);
}

- ($1AB5FA073B851C12C2339EC22442E995)gravity
{
  x = self->_gravity.x;
  y = self->_gravity.y;
  z = self->_gravity.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- (CGPoint)horizontalOffset
{
  x = self->_horizontalOffset.x;
  y = self->_horizontalOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end