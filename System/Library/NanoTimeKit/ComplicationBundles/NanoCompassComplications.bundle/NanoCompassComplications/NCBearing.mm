@interface NCBearing
+ (NCBearing)idealizedBearing;
+ (id)randomizedBearing;
- (NCBearing)initWithBearing:(double)bearing;
- (NCBearing)initWithHeading:(id)heading;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NCBearing

- (NCBearing)initWithBearing:(double)bearing
{
  v10.receiver = self;
  v10.super_class = NCBearing;
  v4 = [(NCBearing *)&v10 init];
    ;
  }

    ;
  }

  objc_msgSend_setBearing_(v4, v5, v6, v7, floor(bearing));
  return i;
}

- (NCBearing)initWithHeading:(id)heading
{
  objc_msgSend_heading(heading, a2, heading, v3);

  return objc_msgSend_initWithBearing_(self, v5, v6, v7);
}

+ (NCBearing)idealizedBearing
{
  if (qword_27E1C4B88 != -1)
  {
    sub_23BD658EC();
  }

  v3 = qword_27E1C4B80;

  return v3;
}

+ (id)randomizedBearing
{
  v2 = [NCBearing alloc];
  v3 = arc4random_uniform(0x168u);
  v7 = objc_msgSend_initWithBearing_(v2, v4, v5, v6, v3);

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCBearing alloc];
  objc_msgSend_bearing(self, v5, v6, v7);

  return objc_msgSend_initWithBearing_(v4, v8, v9, v10);
}

@end