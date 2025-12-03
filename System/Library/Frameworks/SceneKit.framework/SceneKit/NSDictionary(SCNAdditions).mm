@interface NSDictionary(SCNAdditions)
- (float)SCNVector3Value;
- (float)SCNVector4Value;
- (uint64_t)SCNMatrix4Value;
@end

@implementation NSDictionary(SCNAdditions)

- (float)SCNVector3Value
{
  [objc_msgSend(self valueForKey:{@"x", "floatValue"}];
  v3 = v2;
  [objc_msgSend(self valueForKey:{@"y", "floatValue"}];
  [objc_msgSend(self valueForKey:{@"z", "floatValue"}];
  return v3;
}

- (float)SCNVector4Value
{
  [objc_msgSend(self valueForKey:{@"x", "floatValue"}];
  v3 = v2;
  [objc_msgSend(self valueForKey:{@"y", "floatValue"}];
  [objc_msgSend(self valueForKey:{@"z", "floatValue"}];
  [objc_msgSend(self valueForKey:{@"w", "floatValue"}];
  return v3;
}

- (uint64_t)SCNMatrix4Value
{
  [objc_msgSend(self valueForKey:{@"m11", "floatValue"}];
  *a2 = v4;
  [objc_msgSend(self valueForKey:{@"m12", "floatValue"}];
  a2[1] = v5;
  [objc_msgSend(self valueForKey:{@"m13", "floatValue"}];
  a2[2] = v6;
  [objc_msgSend(self valueForKey:{@"m14", "floatValue"}];
  a2[3] = v7;
  [objc_msgSend(self valueForKey:{@"m21", "floatValue"}];
  a2[4] = v8;
  [objc_msgSend(self valueForKey:{@"m22", "floatValue"}];
  a2[5] = v9;
  [objc_msgSend(self valueForKey:{@"m23", "floatValue"}];
  a2[6] = v10;
  [objc_msgSend(self valueForKey:{@"m24", "floatValue"}];
  a2[7] = v11;
  [objc_msgSend(self valueForKey:{@"m31", "floatValue"}];
  a2[8] = v12;
  [objc_msgSend(self valueForKey:{@"m32", "floatValue"}];
  a2[9] = v13;
  [objc_msgSend(self valueForKey:{@"m33", "floatValue"}];
  a2[10] = v14;
  [objc_msgSend(self valueForKey:{@"m34", "floatValue"}];
  a2[11] = v15;
  [objc_msgSend(self valueForKey:{@"m41", "floatValue"}];
  a2[12] = v16;
  [objc_msgSend(self valueForKey:{@"m42", "floatValue"}];
  a2[13] = v17;
  [objc_msgSend(self valueForKey:{@"m43", "floatValue"}];
  a2[14] = v18;
  result = [objc_msgSend(self valueForKey:{@"m44", "floatValue"}];
  a2[15] = v20;
  return result;
}

@end