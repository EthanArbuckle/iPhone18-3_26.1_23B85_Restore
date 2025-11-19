@interface SCNKeyedArchiver
+ (id)archivedDataWithRootObject:(id)a3 options:(id)a4;
- (void)dealloc;
- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4;
@end

@implementation SCNKeyedArchiver

+ (id)archivedDataWithRootObject:(id)a3 options:(id)a4
{
  v7 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength:0];
  v8 = objc_opt_new();
  v9 = [objc_allocWithZone(a1) initForWritingWithMutableData:v7];
  [v9 setOptions:a4];
  [v9 encodeObject:a3 forKey:*MEMORY[0x277CCA308]];
  [v9 finishEncoding];
  [v8 drain];
  return v7;
}

- (void)encodeValueOfObjCType:(const char *)a3 at:(const void *)a4
{
  if (!strcmp(a3, "{SCNVector3=fff}"))
  {
    *&v7 = *a4;
    DWORD2(v7) = *(a4 + 2);
LABEL_7:
    v14[0] = v7;
    v8 = self;
    v9 = 16;
    goto LABEL_8;
  }

  if (!strcmp(a3, "{SCNVector4=ffff}"))
  {
    v7 = *a4;
    goto LABEL_7;
  }

  if (strcmp(a3, "{SCNMatrix4=ffffffffffffffff}"))
  {
    v13.receiver = self;
    v13.super_class = SCNKeyedArchiver;
    [(SCNKeyedArchiver *)&v13 encodeValueOfObjCType:a3 at:a4];
    return;
  }

  v10 = *(a4 + 1);
  v11 = *(a4 + 2);
  v12 = *(a4 + 3);
  v14[0] = *a4;
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = v12;
  v8 = self;
  v9 = 64;
LABEL_8:
  [(SCNKeyedArchiver *)v8 encodeBytes:v14 length:v9];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNKeyedArchiver;
  [(SCNKeyedArchiver *)&v3 dealloc];
}

@end