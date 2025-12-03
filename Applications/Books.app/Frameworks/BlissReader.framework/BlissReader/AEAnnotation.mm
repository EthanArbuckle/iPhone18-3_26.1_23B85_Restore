@interface AEAnnotation
- (NSDictionary)placeholderHistory;
- (NSString)annotationContentNodeID;
- (NSString)annotationStorageIDWithoutContentNodeID;
- (NSString)selectionPostContextText;
- (NSString)selectionPreContextText;
- (_NSRange)annotationStorageRange;
- (id)p_userDataDictionary;
- (id)p_userDataObjectForKey:(id)key;
- (unint64_t)absolutePhysicalPageIndex;
- (unint64_t)contentNodeRelativePageIndex;
- (void)p_setUserDataDictionary:(id)dictionary;
- (void)p_setUserDataObject:(id)object forKey:(id)key;
- (void)setAbsolutePhysicalPageIndex:(unint64_t)index;
- (void)setAnnotationStorageRange:(_NSRange)range;
- (void)setContentNodeRelativePageIndex:(unint64_t)index;
@end

@implementation AEAnnotation

- (unint64_t)absolutePhysicalPageIndex
{
  plAbsolutePhysicalLocation = [(AEAnnotation *)self plAbsolutePhysicalLocation];

  return [plAbsolutePhysicalLocation unsignedIntegerValue];
}

- (void)setAbsolutePhysicalPageIndex:(unint64_t)index
{
  v4 = [NSNumber numberWithUnsignedInteger:index];

  [(AEAnnotation *)self setPlAbsolutePhysicalLocation:v4];
}

- (void)setAnnotationStorageRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [NSNumber numberWithUnsignedInteger:location + length];
  [(AEAnnotation *)self setPlLocationRangeStart:v6];

  [(AEAnnotation *)self setPlLocationRangeEnd:v7];
}

- (_NSRange)annotationStorageRange
{
  v3 = [-[AEAnnotation plLocationRangeStart](self "plLocationRangeStart")];
  v4 = [-[AEAnnotation plLocationRangeEnd](self "plLocationRangeEnd")];
  if (v4 >= v3)
  {
    v5 = v4 - v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v3;
  result.length = v5;
  result.location = v6;
  return result;
}

- (NSString)annotationContentNodeID
{
  plStorageUUID = [(AEAnnotation *)self plStorageUUID];
  if ([plStorageUUID length] < 0x26)
  {
    return 0;
  }

  return [plStorageUUID substringWithRange:{0, 38}];
}

- (NSString)annotationStorageIDWithoutContentNodeID
{
  plStorageUUID = [(AEAnnotation *)self plStorageUUID];
  v4 = [plStorageUUID length];
  v5 = [plStorageUUID length];
  if (v4 < 0x28)
  {
    if (v5 != &stru_20.cmdsize + 2)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return 0;
    }

    return plStorageUUID;
  }

  else
  {

    return [plStorageUUID substringWithRange:{39, v5 - 39}];
  }
}

- (id)p_userDataDictionary
{
  plUserData = [(AEAnnotation *)self plUserData];
  if (!plUserData)
  {
    return 0;
  }

  v12 = 0;
  v3 = [[NSKeyedUnarchiver alloc] initForReadingFromData:plUserData error:&v12];
  if (v12)
  {
    v4 = THLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_29D518(&v12, v4);
    }

    return 0;
  }

  else
  {
    v7 = v3;
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v5 = [v7 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v8, v9, v10, objc_opt_class(), 0), @"dictionary"}];
    [v7 finishDecoding];
  }

  return v5;
}

- (void)p_setUserDataDictionary:(id)dictionary
{
  if (dictionary)
  {
    v7 = objc_alloc_init(NSMutableData);
    v5 = [[NSKeyedArchiver alloc] initForWritingWithMutableData:v7];
    [v5 encodeObject:dictionary forKey:@"dictionary"];
    [v5 finishEncoding];

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  [(AEAnnotation *)self setPlUserData:v6];
}

- (id)p_userDataObjectForKey:(id)key
{
  if (key)
  {
    p_userDataDictionary = [(AEAnnotation *)self p_userDataDictionary];

    return [p_userDataDictionary objectForKey:key];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }
}

- (void)p_setUserDataObject:(id)object forKey:(id)key
{
  if (key)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 addEntriesFromDictionary:{-[AEAnnotation p_userDataDictionary](self, "p_userDataDictionary")}];
    if (object)
    {
      [v7 setObject:object forKey:key];
    }

    else
    {
      [v7 removeObjectForKey:key];
    }

    [(AEAnnotation *)self p_setUserDataDictionary:v7];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }
}

- (NSDictionary)placeholderHistory
{
  objc_opt_class();
  [(AEAnnotation *)self p_userDataObjectForKey:@"pgHistory"];

  return TSUDynamicCast();
}

- (NSString)selectionPreContextText
{
  objc_opt_class();
  [(AEAnnotation *)self p_userDataObjectForKey:@"preContext"];

  return TSUDynamicCast();
}

- (NSString)selectionPostContextText
{
  objc_opt_class();
  [(AEAnnotation *)self p_userDataObjectForKey:@"postContext"];

  return TSUDynamicCast();
}

- (unint64_t)contentNodeRelativePageIndex
{
  v2 = [(AEAnnotation *)self p_userDataObjectForKey:@"cnRelPg"];
  if (!v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v2 unsignedIntegerValue];
}

- (void)setContentNodeRelativePageIndex:(unint64_t)index
{
  v4 = [NSNumber numberWithUnsignedInteger:index];

  [(AEAnnotation *)self p_setUserDataObject:v4 forKey:@"cnRelPg"];
}

@end