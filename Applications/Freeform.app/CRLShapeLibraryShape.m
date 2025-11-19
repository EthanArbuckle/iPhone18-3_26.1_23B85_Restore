@interface CRLShapeLibraryShape
+ (id)baseKeywordsForShapeFromDictionary:(id)a3 keywordDelimiter:(id)a4;
+ (id)baseNameForShapeFromDictionary:(id)a3;
+ (id)localizedKeywordsForShapeFromDictionary:(id)a3 keywordDelimiter:(id)a4;
+ (id)localizedNameForShapeFromDictionary:(id)a3;
+ (id)p_stringForKey:(id)a3 inBaseStringsTableWithName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CRLShapeLibraryShape)initWithDictionary:(id)a3 keywordDelimiter:(id)a4;
- (NSArray)categoryIDs;
- (NSArray)keywords;
- (NSNumber)shapeID;
- (NSString)description;
- (NSString)localizationKey;
- (NSString)name;
- (id)p_categoryMetadata;
- (id)pathSourceWithSize:(CGSize)a3;
- (unint64_t)hash;
- (unint64_t)positionInCategoryWithID:(id)a3;
@end

@implementation CRLShapeLibraryShape

+ (id)baseKeywordsForShapeFromDictionary:(id)a3 keywordDelimiter:(id)a4
{
  v6 = a4;
  v7 = [a1 p_localizationKeyForShapeFromDictionary:a3];
  v8 = [a1 p_stringForKey:v7 inBaseStringsTableWithName:@"CRLShapeLibrarianKeywords"];
  v9 = [v8 componentsSeparatedByString:v6];

  return v9;
}

+ (id)baseNameForShapeFromDictionary:(id)a3
{
  v4 = [a1 p_localizationKeyForShapeFromDictionary:a3];
  v5 = [a1 p_stringForKey:v4 inBaseStringsTableWithName:@"CRLShapeLibrarianShapeNames"];

  return v5;
}

+ (id)localizedKeywordsForShapeFromDictionary:(id)a3 keywordDelimiter:(id)a4
{
  v6 = a4;
  v7 = [a1 p_localizationKeyForShapeFromDictionary:a3];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:v7 value:0 table:@"CRLShapeLibrarianKeywords"];

  v10 = [v9 componentsSeparatedByString:v6];

  return v10;
}

+ (id)localizedNameForShapeFromDictionary:(id)a3
{
  v3 = [a1 p_localizationKeyForShapeFromDictionary:a3];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:v3 value:0 table:@"CRLShapeLibrarianShapeNames"];

  return v5;
}

+ (id)p_stringForKey:(id)a3 inBaseStringsTableWithName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:v5 value:0 table:v6 localization:@"en"];

  v9 = v8;
  if (!v8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131A7F8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131A80C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131A8BC();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v10);
    }

    v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLShapeLibraryShape p_stringForKey:inBaseStringsTableWithName:]");
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibraryShape.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:93 isFatal:0 description:"invalid nil value for '%{public}s'", "englishString"];

    v9 = v5;
  }

  v13 = v9;

  return v9;
}

- (CRLShapeLibraryShape)initWithDictionary:(id)a3 keywordDelimiter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CRLShapeLibraryShape;
  v8 = [(CRLShapeLibraryObject *)&v16 initWithDictionary:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keywordDelimiter, a4);
    v10 = [v6 objectForKey:@"shapePath"];
    v11 = [v10 copy];
    bezierPathString = v9->_bezierPathString;
    v9->_bezierPathString = v11;

    v13 = [[CRLBezierPath alloc] initWithCString:[(NSString *)v9->_bezierPathString UTF8String]];
    bezierPath = v9->_bezierPath;
    v9->_bezierPath = v13;

    v9->_rendersSlowly = [(CRLBezierPath *)v9->_bezierPath elementCount]> 1000;
    [(CRLShapeLibraryObject *)v9 i_removeObjectForKey:@"shapePath"];
  }

  return v9;
}

- (NSArray)categoryIDs
{
  v3 = objc_alloc_init(NSNumberFormatter);
  v4 = [(CRLShapeLibraryShape *)self p_categoryMetadata];
  v5 = [v4 allKeys];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012FEDC;
  v10[3] = &unk_10183EE28;
  v11 = v3;
  v6 = v3;
  v7 = [v5 crl_arrayByMappingObjectsUsingBlock:v10];
  v8 = [v7 sortedArrayUsingSelector:"compare:"];

  return v8;
}

- (NSString)localizationKey
{
  v3 = objc_opt_class();
  v4 = [(CRLShapeLibraryObject *)self i_dictionary];
  v5 = [v3 p_localizationKeyForShapeFromDictionary:v4];

  return v5;
}

- (NSString)name
{
  v3 = objc_opt_class();
  v4 = [(CRLShapeLibraryObject *)self i_dictionary];
  v5 = [v3 localizedNameForShapeFromDictionary:v4];

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLShapeLibraryShape *)self name];
  v6 = [NSString stringWithFormat:@"<%@ %p name=%@>", v4, self, v5];

  return v6;
}

- (NSNumber)shapeID
{
  v3 = objc_opt_class();
  v4 = [(CRLShapeLibraryObject *)self i_dictionary];
  v5 = [v3 shapeIDForShapeFromDictionary:v4];

  return v5;
}

- (NSArray)keywords
{
  v3 = objc_opt_class();
  v4 = [(CRLShapeLibraryObject *)self i_dictionary];
  v5 = [(CRLShapeLibraryShape *)self p_keywordDelimiter];
  v6 = [v3 localizedKeywordsForShapeFromDictionary:v4 keywordDelimiter:v5];

  return v6;
}

- (id)pathSourceWithSize:(CGSize)a3
{
  v4 = [(CRLShapeLibraryShape *)self p_bezierPath:a3.width];
  v5 = [CRLBezierPathSource pathSourceWithBezierPath:v4];

  v6 = [(CRLShapeLibraryShape *)self localizationKey];
  [v5 setLocalizationKey:v6];

  return v5;
}

- (unint64_t)positionInCategoryWithID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131A8E4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131A8F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131A998();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLShapeLibraryShape positionInCategoryWithID:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeLibraryShape.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:150 isFatal:0 description:"Must pass a categoryID when fetching a shape library shape's position."];
  }

  v8 = [(CRLShapeLibraryShape *)self p_categoryMetadata];
  v9 = [v4 stringValue];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 objectForKeyedSubscript:@"position"];

  if (v11)
  {
    v12 = [v11 unsignedIntegerValue];
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  v7 = [(CRLShapeLibraryShape *)self shapeID];
  v8 = [v6 shapeID];
  if (v7 | v8)
  {
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(CRLShapeLibraryShape *)self shapeID];
  v3 = [v2 hash];

  return v3;
}

- (id)p_categoryMetadata
{
  v2 = [(CRLShapeLibraryObject *)self i_dictionary];
  v3 = [v2 objectForKeyedSubscript:@"categories"];

  return v3;
}

@end