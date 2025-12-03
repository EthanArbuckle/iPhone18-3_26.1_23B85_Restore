@interface SCNKeyedArchiver
+ (id)archivedDataWithRootObject:(id)object options:(id)options;
- (void)dealloc;
- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at;
@end

@implementation SCNKeyedArchiver

+ (id)archivedDataWithRootObject:(id)object options:(id)options
{
  v7 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength:0];
  v8 = objc_opt_new();
  v9 = [objc_allocWithZone(self) initForWritingWithMutableData:v7];
  [v9 setOptions:options];
  [v9 encodeObject:object forKey:*MEMORY[0x277CCA308]];
  [v9 finishEncoding];
  [v8 drain];
  return v7;
}

- (void)encodeValueOfObjCType:(const char *)type at:(const void *)at
{
  if (!strcmp(type, "{SCNVector3=fff}"))
  {
    *&v7 = *at;
    DWORD2(v7) = *(at + 2);
LABEL_7:
    v14[0] = v7;
    selfCopy2 = self;
    v9 = 16;
    goto LABEL_8;
  }

  if (!strcmp(type, "{SCNVector4=ffff}"))
  {
    v7 = *at;
    goto LABEL_7;
  }

  if (strcmp(type, "{SCNMatrix4=ffffffffffffffff}"))
  {
    v13.receiver = self;
    v13.super_class = SCNKeyedArchiver;
    [(SCNKeyedArchiver *)&v13 encodeValueOfObjCType:type at:at];
    return;
  }

  v10 = *(at + 1);
  v11 = *(at + 2);
  v12 = *(at + 3);
  v14[0] = *at;
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = v12;
  selfCopy2 = self;
  v9 = 64;
LABEL_8:
  [(SCNKeyedArchiver *)selfCopy2 encodeBytes:v14 length:v9];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNKeyedArchiver;
  [(SCNKeyedArchiver *)&v3 dealloc];
}

@end