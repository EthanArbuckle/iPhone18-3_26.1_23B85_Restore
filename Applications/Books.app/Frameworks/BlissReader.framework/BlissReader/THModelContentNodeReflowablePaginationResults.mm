@interface THModelContentNodeReflowablePaginationResults
- (THModelContentNodeReflowablePaginationResults)init;
- (THModelContentNodeReflowablePaginationResults)initWithCoder:(id)coder;
- (_NSRange)hintRangeForRelativePageIndex:(unint64_t)index;
- (unint64_t)firstPageIndexIntersectingRange:(_NSRange)range;
- (unint64_t)relativePageIndexForStorageAnchor:(id)anchor;
- (void)assignRelativePageIndex:(unint64_t)index toStorageUID:(id)d;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (unint64_t)firstPageIndexIntersectingRange:(_NSRange)range
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1202B4;
  v4[3] = &unk_45DC78;
  rangeCopy = range;
  return [(NSMutableArray *)[(THModelContentNodeReflowablePaginationResults *)self pageHints] indexOfObjectPassingTest:v4];
}

- (unint64_t)relativePageIndexForStorageAnchor:(id)anchor
{
  if ([objc_msgSend(anchor "storageUID")])
  {
    range = [anchor range];
    if (v5 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }

    return [(THModelContentNodeReflowablePaginationResults *)self firstPageIndexIntersectingRange:range, v7];
  }

  else if ([anchor storageUID] && (v9 = -[NSMutableDictionary objectForKey:](-[THModelContentNodeReflowablePaginationResults storageUIDToPageIndex](self, "storageUIDToPageIndex"), "objectForKey:", objc_msgSend(anchor, "storageUID"))) != 0)
  {

    return [v9 integerValue];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)assignRelativePageIndex:(unint64_t)index toStorageUID:(id)d
{
  storageUIDToPageIndex = [(THModelContentNodeReflowablePaginationResults *)self storageUIDToPageIndex];
  v7 = [NSNumber numberWithInteger:index];

  [(NSMutableDictionary *)storageUIDToPageIndex setValue:v7 forKey:d];
}

- (_NSRange)hintRangeForRelativePageIndex:(unint64_t)index
{
  if ([(NSMutableArray *)[(THModelContentNodeReflowablePaginationResults *)self pageHints] count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)[(THModelContentNodeReflowablePaginationResults *)self pageHints] objectAtIndex:index];
  }

  range = [v5 range];
  result.length = v7;
  result.location = range;
  return result;
}

- (THModelContentNodeReflowablePaginationResults)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = THModelContentNodeReflowablePaginationResults;
  v4 = [(THModelContentNodeReflowablePaginationResults *)&v10 init];
  if (v4)
  {
    v4->_nodeGUID = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"nodeGUID", "copy"}];
    v4->_pageCount = [coder decodeIntegerForKey:@"pageCount"];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v4->_pageHints = [objc_msgSend(coder decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v5, v6, objc_opt_class(), 0), @"pageHints", "mutableCopy"}];
    v4->_presentationType = [coder decodeObjectOfClass:objc_opt_class() forKey:@"presentationType"];
    v4->_bodyStorageUID = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"bodyStorageUID", "copy"}];
    v4->_firstPageIndex = [coder decodeIntegerForKey:@"firstPageIndex"];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v4->_storageUIDToPageIndex = [objc_msgSend(coder decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v7, v8, objc_opt_class(), 0), @"storageUIDToPageIndex", "mutableCopy"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[THModelContentNodeReflowablePaginationResults nodeGUID](self forKey:{"nodeGUID"), @"nodeGUID"}];
  [coder encodeInteger:-[THModelContentNodeReflowablePaginationResults pageCount](self forKey:{"pageCount"), @"pageCount"}];
  [coder encodeObject:-[THModelContentNodeReflowablePaginationResults pageHints](self forKey:{"pageHints"), @"pageHints"}];
  [coder encodeObject:-[THModelContentNodeReflowablePaginationResults presentationType](self forKey:{"presentationType"), @"presentationType"}];
  [coder encodeObject:-[THModelContentNodeReflowablePaginationResults bodyStorageUID](self forKey:{"bodyStorageUID"), @"bodyStorageUID"}];
  [coder encodeInteger:-[THModelContentNodeReflowablePaginationResults firstPageIndex](self forKey:{"firstPageIndex"), @"firstPageIndex"}];
  v5 = [(NSMutableDictionary *)[(THModelContentNodeReflowablePaginationResults *)self storageUIDToPageIndex] copy];
  [coder encodeObject:v5 forKey:@"storageUIDToPageIndex"];
}

@end