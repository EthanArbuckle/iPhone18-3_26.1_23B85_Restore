@interface THModelContentNodeReflowablePaginationResults
- (THModelContentNodeReflowablePaginationResults)init;
- (THModelContentNodeReflowablePaginationResults)initWithCoder:(id)a3;
- (_NSRange)hintRangeForRelativePageIndex:(unint64_t)a3;
- (unint64_t)firstPageIndexIntersectingRange:(_NSRange)a3;
- (unint64_t)relativePageIndexForStorageAnchor:(id)a3;
- (void)assignRelativePageIndex:(unint64_t)a3 toStorageUID:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THModelContentNodeReflowablePaginationResults

- (THModelContentNodeReflowablePaginationResults)init
{
  v5.receiver = self;
  v5.super_class = THModelContentNodeReflowablePaginationResults;
  v2 = [(THModelContentNodeReflowablePaginationResults *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_firstPageIndex = 0x7FFFFFFFFFFFFFFFLL;
    v2->_storageUIDToPageIndex = objc_alloc_init(NSMutableDictionary);
  }

  return v3;
}

- (void)dealloc
{
  self->_storageUIDToPageIndex = 0;

  self->_bodyStorageUID = 0;
  self->_pageHints = 0;

  self->_presentationType = 0;
  self->_nodeGUID = 0;
  v3.receiver = self;
  v3.super_class = THModelContentNodeReflowablePaginationResults;
  [(THModelContentNodeReflowablePaginationResults *)&v3 dealloc];
}

- (unint64_t)firstPageIndexIntersectingRange:(_NSRange)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1202B4;
  v4[3] = &unk_45DC78;
  v5 = a3;
  return [(NSMutableArray *)[(THModelContentNodeReflowablePaginationResults *)self pageHints] indexOfObjectPassingTest:v4];
}

- (unint64_t)relativePageIndexForStorageAnchor:(id)a3
{
  if ([objc_msgSend(a3 "storageUID")])
  {
    v6 = [a3 range];
    if (v5 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }

    return [(THModelContentNodeReflowablePaginationResults *)self firstPageIndexIntersectingRange:v6, v7];
  }

  else if ([a3 storageUID] && (v9 = -[NSMutableDictionary objectForKey:](-[THModelContentNodeReflowablePaginationResults storageUIDToPageIndex](self, "storageUIDToPageIndex"), "objectForKey:", objc_msgSend(a3, "storageUID"))) != 0)
  {

    return [v9 integerValue];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)assignRelativePageIndex:(unint64_t)a3 toStorageUID:(id)a4
{
  v6 = [(THModelContentNodeReflowablePaginationResults *)self storageUIDToPageIndex];
  v7 = [NSNumber numberWithInteger:a3];

  [(NSMutableDictionary *)v6 setValue:v7 forKey:a4];
}

- (_NSRange)hintRangeForRelativePageIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)[(THModelContentNodeReflowablePaginationResults *)self pageHints] count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)[(THModelContentNodeReflowablePaginationResults *)self pageHints] objectAtIndex:a3];
  }

  v6 = [v5 range];
  result.length = v7;
  result.location = v6;
  return result;
}

- (THModelContentNodeReflowablePaginationResults)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = THModelContentNodeReflowablePaginationResults;
  v4 = [(THModelContentNodeReflowablePaginationResults *)&v10 init];
  if (v4)
  {
    v4->_nodeGUID = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"nodeGUID", "copy"}];
    v4->_pageCount = [a3 decodeIntegerForKey:@"pageCount"];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v4->_pageHints = [objc_msgSend(a3 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v5, v6, objc_opt_class(), 0), @"pageHints", "mutableCopy"}];
    v4->_presentationType = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"presentationType"];
    v4->_bodyStorageUID = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"bodyStorageUID", "copy"}];
    v4->_firstPageIndex = [a3 decodeIntegerForKey:@"firstPageIndex"];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v4->_storageUIDToPageIndex = [objc_msgSend(a3 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v7, v8, objc_opt_class(), 0), @"storageUIDToPageIndex", "mutableCopy"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[THModelContentNodeReflowablePaginationResults nodeGUID](self forKey:{"nodeGUID"), @"nodeGUID"}];
  [a3 encodeInteger:-[THModelContentNodeReflowablePaginationResults pageCount](self forKey:{"pageCount"), @"pageCount"}];
  [a3 encodeObject:-[THModelContentNodeReflowablePaginationResults pageHints](self forKey:{"pageHints"), @"pageHints"}];
  [a3 encodeObject:-[THModelContentNodeReflowablePaginationResults presentationType](self forKey:{"presentationType"), @"presentationType"}];
  [a3 encodeObject:-[THModelContentNodeReflowablePaginationResults bodyStorageUID](self forKey:{"bodyStorageUID"), @"bodyStorageUID"}];
  [a3 encodeInteger:-[THModelContentNodeReflowablePaginationResults firstPageIndex](self forKey:{"firstPageIndex"), @"firstPageIndex"}];
  v5 = [(NSMutableDictionary *)[(THModelContentNodeReflowablePaginationResults *)self storageUIDToPageIndex] copy];
  [a3 encodeObject:v5 forKey:@"storageUIDToPageIndex"];
}

@end