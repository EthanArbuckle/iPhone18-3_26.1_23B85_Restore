@interface CRLShapeLibraryShape
+ (id)baseKeywordsForShapeFromDictionary:(id)dictionary keywordDelimiter:(id)delimiter;
+ (id)baseNameForShapeFromDictionary:(id)dictionary;
+ (id)localizedKeywordsForShapeFromDictionary:(id)dictionary keywordDelimiter:(id)delimiter;
+ (id)localizedNameForShapeFromDictionary:(id)dictionary;
+ (id)p_stringForKey:(id)key inBaseStringsTableWithName:(id)name;
- (BOOL)isEqual:(id)equal;
- (CRLShapeLibraryShape)initWithDictionary:(id)dictionary keywordDelimiter:(id)delimiter;
- (NSArray)categoryIDs;
- (NSArray)keywords;
- (NSNumber)shapeID;
- (NSString)description;
- (NSString)localizationKey;
- (NSString)name;
- (id)p_categoryMetadata;
- (id)pathSourceWithSize:(CGSize)size;
- (unint64_t)hash;
- (unint64_t)positionInCategoryWithID:(id)d;
@end

@implementation CRLShapeLibraryShape

+ (id)baseKeywordsForShapeFromDictionary:(id)dictionary keywordDelimiter:(id)delimiter
{
  delimiterCopy = delimiter;
  v7 = [self p_localizationKeyForShapeFromDictionary:dictionary];
  v8 = [self p_stringForKey:v7 inBaseStringsTableWithName:@"CRLShapeLibrarianKeywords"];
  v9 = [v8 componentsSeparatedByString:delimiterCopy];

  return v9;
}

+ (id)baseNameForShapeFromDictionary:(id)dictionary
{
  v4 = [self p_localizationKeyForShapeFromDictionary:dictionary];
  v5 = [self p_stringForKey:v4 inBaseStringsTableWithName:@"CRLShapeLibrarianShapeNames"];

  return v5;
}

+ (id)localizedKeywordsForShapeFromDictionary:(id)dictionary keywordDelimiter:(id)delimiter
{
  delimiterCopy = delimiter;
  v7 = [self p_localizationKeyForShapeFromDictionary:dictionary];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:v7 value:0 table:@"CRLShapeLibrarianKeywords"];

  v10 = [v9 componentsSeparatedByString:delimiterCopy];

  return v10;
}

+ (id)localizedNameForShapeFromDictionary:(id)dictionary
{
  v3 = [self p_localizationKeyForShapeFromDictionary:dictionary];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:v3 value:0 table:@"CRLShapeLibrarianShapeNames"];

  return v5;
}

+ (id)p_stringForKey:(id)key inBaseStringsTableWithName:(id)name
{
  keyCopy = key;
  nameCopy = name;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:keyCopy value:0 table:nameCopy localization:@"en"];

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

    v9 = keyCopy;
  }

  v13 = v9;

  return v9;
}

- (CRLShapeLibraryShape)initWithDictionary:(id)dictionary keywordDelimiter:(id)delimiter
{
  dictionaryCopy = dictionary;
  delimiterCopy = delimiter;
  v16.receiver = self;
  v16.super_class = CRLShapeLibraryShape;
  v8 = [(CRLShapeLibraryObject *)&v16 initWithDictionary:dictionaryCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keywordDelimiter, delimiter);
    v10 = [dictionaryCopy objectForKey:@"shapePath"];
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
  p_categoryMetadata = [(CRLShapeLibraryShape *)self p_categoryMetadata];
  allKeys = [p_categoryMetadata allKeys];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012FEDC;
  v10[3] = &unk_10183EE28;
  v11 = v3;
  v6 = v3;
  v7 = [allKeys crl_arrayByMappingObjectsUsingBlock:v10];
  v8 = [v7 sortedArrayUsingSelector:"compare:"];

  return v8;
}

- (NSString)localizationKey
{
  v3 = objc_opt_class();
  i_dictionary = [(CRLShapeLibraryObject *)self i_dictionary];
  v5 = [v3 p_localizationKeyForShapeFromDictionary:i_dictionary];

  return v5;
}

- (NSString)name
{
  v3 = objc_opt_class();
  i_dictionary = [(CRLShapeLibraryObject *)self i_dictionary];
  v5 = [v3 localizedNameForShapeFromDictionary:i_dictionary];

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(CRLShapeLibraryShape *)self name];
  v6 = [NSString stringWithFormat:@"<%@ %p name=%@>", v4, self, name];

  return v6;
}

- (NSNumber)shapeID
{
  v3 = objc_opt_class();
  i_dictionary = [(CRLShapeLibraryObject *)self i_dictionary];
  v5 = [v3 shapeIDForShapeFromDictionary:i_dictionary];

  return v5;
}

- (NSArray)keywords
{
  v3 = objc_opt_class();
  i_dictionary = [(CRLShapeLibraryObject *)self i_dictionary];
  p_keywordDelimiter = [(CRLShapeLibraryShape *)self p_keywordDelimiter];
  v6 = [v3 localizedKeywordsForShapeFromDictionary:i_dictionary keywordDelimiter:p_keywordDelimiter];

  return v6;
}

- (id)pathSourceWithSize:(CGSize)size
{
  v4 = [(CRLShapeLibraryShape *)self p_bezierPath:size.width];
  v5 = [CRLBezierPathSource pathSourceWithBezierPath:v4];

  localizationKey = [(CRLShapeLibraryShape *)self localizationKey];
  [v5 setLocalizationKey:localizationKey];

  return v5;
}

- (unint64_t)positionInCategoryWithID:(id)d
{
  dCopy = d;
  if (!dCopy)
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

  p_categoryMetadata = [(CRLShapeLibraryShape *)self p_categoryMetadata];
  stringValue = [dCopy stringValue];
  v10 = [p_categoryMetadata objectForKeyedSubscript:stringValue];
  v11 = [v10 objectForKeyedSubscript:@"position"];

  if (v11)
  {
    unsignedIntegerValue = [v11 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  shapeID = [(CRLShapeLibraryShape *)self shapeID];
  shapeID2 = [v6 shapeID];
  if (shapeID | shapeID2)
  {
    v9 = [shapeID isEqual:shapeID2];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)hash
{
  shapeID = [(CRLShapeLibraryShape *)self shapeID];
  v3 = [shapeID hash];

  return v3;
}

- (id)p_categoryMetadata
{
  i_dictionary = [(CRLShapeLibraryObject *)self i_dictionary];
  v3 = [i_dictionary objectForKeyedSubscript:@"categories"];

  return v3;
}

@end