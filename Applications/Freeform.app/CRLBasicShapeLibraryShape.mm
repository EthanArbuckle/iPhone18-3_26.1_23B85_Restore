@interface CRLBasicShapeLibraryShape
+ (id)baseNameForShapeType:(int64_t)type;
+ (id)p_baseStringForKey:(id)key;
+ (id)p_nameForShapeType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (CRLBasicShapeLibraryShape)initWithShapeType:(int64_t)type position:(unint64_t)position;
- (NSArray)baseKeywords;
- (NSArray)keywords;
- (NSString)accessibilityName;
- (NSString)baseName;
- (NSString)description;
- (id)pathSourceWithSize:(CGSize)size;
- (unint64_t)hash;
@end

@implementation CRLBasicShapeLibraryShape

- (CRLBasicShapeLibraryShape)initWithShapeType:(int64_t)type position:(unint64_t)position
{
  v13.receiver = self;
  v13.super_class = CRLBasicShapeLibraryShape;
  v6 = [(CRLBasicShapeLibraryShape *)&v13 init];
  if (v6)
  {
    if (type == 21)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101387728();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101387750();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013877F0();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLBasicShapeLibraryShape initWithShapeType:position:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBasicShapeLibraryShape.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:32 isFatal:0 description:"Basic shapes do not know about the custom shape type."];
    }

    v6->_shapeType = type;
    v10 = [CRLBasicShapeLibraryShape p_nameForShapeType:type];
    name = v6->_name;
    v6->_name = v10;

    v6->_position = position;
  }

  return v6;
}

+ (id)baseNameForShapeType:(int64_t)type
{
  if (type > 0x14)
  {
    v3 = @"Shape";
  }

  else
  {
    v3 = off_10186A8D8[type];
  }

  v4 = objc_opt_class();

  return [v4 p_baseStringForKey:v3];
}

- (NSString)baseName
{
  v3 = objc_opt_class();
  shapeType = [(CRLBasicShapeLibraryShape *)self shapeType];

  return [v3 baseNameForShapeType:shapeType];
}

- (NSArray)baseKeywords
{
  v3 = [objc_opt_class() p_baseStringForKey:@"shape"];
  shapeType = [(CRLBasicShapeLibraryShape *)self shapeType];
  if (shapeType <= 0xE)
  {
    if (((1 << shapeType) & 0x44A0) != 0)
    {
      v10 = v3;
      v5 = [NSArray arrayWithObjects:&v10 count:1];
      goto LABEL_15;
    }

    if (shapeType == 6)
    {
      v6 = [objc_opt_class() p_baseStringForKey:@"equilateral triangle"];
      v11[0] = v6;
      v11[1] = v3;
      v7 = v11;
      goto LABEL_13;
    }

    if (shapeType == 13)
    {
      v6 = [objc_opt_class() p_baseStringForKey:@"polygon"];
      v14[0] = v6;
      v14[1] = v3;
      v7 = v14;
LABEL_13:
      v8 = 2;
      goto LABEL_14;
    }
  }

  if (shapeType == 3)
  {
    v6 = [objc_opt_class() p_baseStringForKey:@"rectangle"];
    v13[0] = v6;
    v13[1] = v3;
    v7 = v13;
    goto LABEL_13;
  }

  if (shapeType != 4)
  {
    v5 = &__NSArray0__struct;
    goto LABEL_15;
  }

  v6 = [objc_opt_class() p_baseStringForKey:@"square"];
  v12 = v6;
  v7 = &v12;
  v8 = 1;
LABEL_14:
  v5 = [NSArray arrayWithObjects:v7 count:v8];

LABEL_15:

  return v5;
}

- (NSArray)keywords
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"shape" value:0 table:0];

  shapeType = [(CRLBasicShapeLibraryShape *)self shapeType];
  if (shapeType <= 0xE)
  {
    if (((1 << shapeType) & 0x44A0) != 0)
    {
      v12 = v4;
      v6 = [NSArray arrayWithObjects:&v12 count:1];
      goto LABEL_15;
    }

    if (shapeType == 6)
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"equilateral triangle" value:0 table:0];
      v13[0] = v8;
      v13[1] = v4;
      v9 = v13;
      goto LABEL_13;
    }

    if (shapeType == 13)
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"polygon" value:0 table:0];
      v16[0] = v8;
      v16[1] = v4;
      v9 = v16;
LABEL_13:
      v10 = 2;
      goto LABEL_14;
    }
  }

  if (shapeType == 3)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"rectangle" value:0 table:0];
    v15[0] = v8;
    v15[1] = v4;
    v9 = v15;
    goto LABEL_13;
  }

  if (shapeType != 4)
  {
    v6 = &__NSArray0__struct;
    goto LABEL_15;
  }

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"square" value:0 table:0];
  v14 = v8;
  v9 = &v14;
  v10 = 1;
LABEL_14:
  v6 = [NSArray arrayWithObjects:v9 count:v10];

LABEL_15:

  return v6;
}

- (id)pathSourceWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  shapeType = [(CRLBasicShapeLibraryShape *)self shapeType];

  return [CRLPathSource pathSourceForShapeType:shapeType naturalSize:width, height];
}

- (NSString)accessibilityName
{
  name = [(CRLBasicShapeLibraryShape *)self name];
  if ([(CRLBasicShapeLibraryShape *)self shapeType]== 9)
  {
    v4 = @"Double arrow";
  }

  else if ([(CRLBasicShapeLibraryShape *)self shapeType]== 6)
  {
    v4 = @"Equilateral triangle";
  }

  else
  {
    if ([(CRLBasicShapeLibraryShape *)self shapeType]!= 7)
    {
      goto LABEL_8;
    }

    v4 = @"Right triangle";
  }

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:v4 value:0 table:0];

  name = v6;
LABEL_8:

  return name;
}

+ (id)p_baseStringForKey:(id)key
{
  keyCopy = key;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:keyCopy value:0 table:0 localization:@"en"];

  v6 = v5;
  if (!v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101387818();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138782C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013878DC();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBasicShapeLibraryShape p_baseStringForKey:]");
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBasicShapeLibraryShape.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:174 isFatal:0 description:"invalid nil value for '%{public}s'", "englishString"];

    v6 = keyCopy;
  }

  v10 = v6;

  return v6;
}

+ (id)p_nameForShapeType:(int64_t)type
{
  if (type > 0x14)
  {
    v3 = @"Shape";
  }

  else
  {
    v3 = off_10186A8D8[type];
  }

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:v3 value:0 table:0];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6)
  {
    shapeType = [(CRLBasicShapeLibraryShape *)self shapeType];
    v8 = shapeType == [v6 shapeType];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [NSNumber numberWithInteger:[(CRLBasicShapeLibraryShape *)self shapeType]];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(CRLBasicShapeLibraryShape *)self name];
  v6 = [NSString stringWithFormat:@"<%@ %p name=%@>", v4, self, name];

  return v6;
}

@end