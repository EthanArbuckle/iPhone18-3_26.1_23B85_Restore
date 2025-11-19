@interface AEAnnotation
- (NSDictionary)placeholderHistory;
- (NSString)annotationContentNodeID;
- (NSString)annotationStorageIDWithoutContentNodeID;
- (NSString)selectionPostContextText;
- (NSString)selectionPreContextText;
- (_NSRange)annotationStorageRange;
- (id)p_userDataDictionary;
- (id)p_userDataObjectForKey:(id)a3;
- (unint64_t)absolutePhysicalPageIndex;
- (unint64_t)contentNodeRelativePageIndex;
- (void)p_setUserDataDictionary:(id)a3;
- (void)p_setUserDataObject:(id)a3 forKey:(id)a4;
- (void)setAbsolutePhysicalPageIndex:(unint64_t)a3;
- (void)setAnnotationStorageRange:(_NSRange)a3;
- (void)setContentNodeRelativePageIndex:(unint64_t)a3;
@end

@implementation AEAnnotation

- (unint64_t)absolutePhysicalPageIndex
{
  v2 = [(AEAnnotation *)self plAbsolutePhysicalLocation];

  return [v2 unsignedIntegerValue];
}

- (void)setAbsolutePhysicalPageIndex:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];

  [(AEAnnotation *)self setPlAbsolutePhysicalLocation:v4];
}

- (void)setAnnotationStorageRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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
  v2 = [(AEAnnotation *)self plStorageUUID];
  if ([v2 length] < 0x26)
  {
    return 0;
  }

  return [v2 substringWithRange:{0, 38}];
}

- (NSString)annotationStorageIDWithoutContentNodeID
{
  v3 = [(AEAnnotation *)self plStorageUUID];
  v4 = [v3 length];
  v5 = [v3 length];
  if (v4 < 0x28)
  {
    if (v5 != &stru_20.cmdsize + 2)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return 0;
    }

    return v3;
  }

  else
  {

    return [v3 substringWithRange:{39, v5 - 39}];
  }
}

- (id)p_userDataDictionary
{
  v2 = [(AEAnnotation *)self plUserData];
  if (!v2)
  {
    return 0;
  }

  v12 = 0;
  v3 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v2 error:&v12];
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

- (void)p_setUserDataDictionary:(id)a3
{
  if (a3)
  {
    v7 = objc_alloc_init(NSMutableData);
    v5 = [[NSKeyedArchiver alloc] initForWritingWithMutableData:v7];
    [v5 encodeObject:a3 forKey:@"dictionary"];
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

- (id)p_userDataObjectForKey:(id)a3
{
  if (a3)
  {
    v4 = [(AEAnnotation *)self p_userDataDictionary];

    return [v4 objectForKey:a3];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }
}

- (void)p_setUserDataObject:(id)a3 forKey:(id)a4
{
  if (a4)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 addEntriesFromDictionary:{-[AEAnnotation p_userDataDictionary](self, "p_userDataDictionary")}];
    if (a3)
    {
      [v7 setObject:a3 forKey:a4];
    }

    else
    {
      [v7 removeObjectForKey:a4];
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

- (void)setContentNodeRelativePageIndex:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];

  [(AEAnnotation *)self p_setUserDataObject:v4 forKey:@"cnRelPg"];
}

@end