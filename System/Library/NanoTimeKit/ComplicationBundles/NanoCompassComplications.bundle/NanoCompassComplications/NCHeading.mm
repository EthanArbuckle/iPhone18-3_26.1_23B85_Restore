@interface NCHeading
+ (NCHeading)idealizedHeading;
+ (id)newHeading:(id)heading;
+ (id)newHeadingForPPT:(double)t;
+ (id)randomizedHeading;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateHasSignificantChange:(id)change;
- (NCHeading)initWithNCHeading:(id)heading;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NCHeading

- (id)description
{
  hasReading = self->_hasReading;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = v6;
  if (hasReading)
  {
    objc_msgSend_stringWithFormat_(v4, v7, @"<%@: %p>(heading: %f, accuracy: %f, timestamp: %f)", v8, v6, self, *&self->_heading, *&self->_accuracy, *&self->_timestamp);
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
  changeCopy = change;
  v8 = changeCopy;
  if (((changeCopy != 0) ^ self->_hasReading))
  {
    goto LABEL_5;
  }

  objc_msgSend_heading(changeCopy, v5, v6, v7);
  v13 = v12 - self->_heading;
  if (v13 < 0.0)
  {
    v13 = -v13;
  }

  if (v13 > 0.1)
  {
LABEL_5:
    v14 = 1;
  }

  else
  {
    objc_msgSend_headingAccuracy(v8, v9, v10, v11);
    v16 = v15 - self->_accuracy;
    if (v16 < 0.0)
    {
      v16 = -v16;
    }

    v14 = v16 > 0.1;
  }

  return v14;
}

+ (id)newHeading:(id)heading
{
  headingCopy = heading;
  v4 = objc_opt_new();
  v7 = v4;
  if (headingCopy)
  {
    objc_msgSend_setHasReading_(v4, v5, 1, v6);
    objc_msgSend_heading(headingCopy, v8, v9, v10);
    if (v14 >= 360.0)
    {
      v14 = v14 + -360.0;
    }

    if (v14 < 0.0)
    {
      v14 = v14 + 360.0;
    }

    objc_msgSend_setHeading_(v7, v11, v12, v13, v14);
    objc_msgSend_headingAccuracy(headingCopy, v15, v16, v17);
    objc_msgSend_setAccuracy_(v7, v18, v19, v20);
    objc_msgSend_timestamp(headingCopy, v21, v22, v23);
    objc_msgSend_setTimestamp_(v7, v24, v25, v26);
  }

  return v7;
}

- (NCHeading)initWithNCHeading:(id)heading
{
  headingCopy = heading;
  v31.receiver = self;
  v31.super_class = NCHeading;
  v8 = [(NCHeading *)&v31 init];
  if (v8)
  {
    objc_msgSend_heading(headingCopy, v5, v6, v7);
    objc_msgSend_setHeading_(v8, v9, v10, v11);
    objc_msgSend_accuracy(headingCopy, v12, v13, v14);
    objc_msgSend_setAccuracy_(v8, v15, v16, v17);
    objc_msgSend_timestamp(headingCopy, v18, v19, v20);
    objc_msgSend_setTimestamp_(v8, v21, v22, v23);
    hasReading = objc_msgSend_hasReading(headingCopy, v24, v25, v26);
    objc_msgSend_setHasReading_(v8, v28, hasReading, v29);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  objc_msgSend_heading(equalCopy, v5, v6, v7);
  v9 = v8;
  objc_msgSend_heading(self, v10, v11, v12);
  v17 = v9 - v16;
  if (v17 < 0.0)
  {
    v17 = -v17;
  }

  if (v17 <= 0.1)
  {
    objc_msgSend_accuracy(equalCopy, v13, v14, v15);
    v20 = v19;
    objc_msgSend_accuracy(self, v21, v22, v23);
    v25 = v20 - v24;
    if (v25 < 0.0)
    {
      v25 = -v25;
    }

    v18 = v25 < 0.1;
  }

  else
  {
LABEL_5:
    v18 = 0;
  }

  return v18;
}

+ (NCHeading)idealizedHeading
{
  if (qword_27E1C5350 != -1)
  {
    sub_23BD676E0();
  }

  v3 = qword_27E1C5348;

  return v3;
}

+ (id)randomizedHeading
{
  v2 = objc_opt_new();
  objc_msgSend_setHasReading_(v2, v3, 1, v4);
  v5 = arc4random_uniform(0x168u);
  objc_msgSend_setHeading_(v2, v6, v7, v8, v5);
  v9 = arc4random_uniform(0xB4u);
  objc_msgSend_setAccuracy_(v2, v10, v11, v12, v9);

  return v2;
}

+ (id)newHeadingForPPT:(double)t
{
  v4 = objc_opt_new();
  objc_msgSend_setHasReading_(v4, v5, 1, v6);
  objc_msgSend_setHeading_(v4, v7, v8, v9, t);
  objc_msgSend_setAccuracy_(v4, v10, v11, v12, 10.0);
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCHeading alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithNCHeading_, self, v5);
}

@end