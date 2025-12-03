@interface THPageLocation
+ (id)pageLocationWithAnnotation:(id)annotation;
+ (id)pageLocationWithStorageAnchor:(id)anchor;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (THPageLocation)init;
- (THPageLocation)initWithAbsolutePageIndex:(unint64_t)index range:(_NSRange)range storageUID:(id)d contentNodeGUID:(id)iD;
- (THPageLocation)initWithDictionaryRepresentation:(id)representation;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)stringValue;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation THPageLocation

- (THPageLocation)init
{
  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];

  return [(THPageLocation *)self initWithAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (THPageLocation)initWithAbsolutePageIndex:(unint64_t)index range:(_NSRange)range storageUID:(id)d contentNodeGUID:(id)iD
{
  length = range.length;
  location = range.location;
  v14.receiver = self;
  v14.super_class = THPageLocation;
  v11 = [(THPageLocation *)&v14 init];
  if (v11)
  {
    if (index && index != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (![d length] || (NSInvalidRange[0] == location ? (v12 = NSInvalidRange[1] == length) : (v12 = 0), v12))
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }

    [(THPageLocation *)v11 setAbsolutePhysicalPageIndex:index];
    [(THPageLocation *)v11 setRange:location, length];
    [(THPageLocation *)v11 setStorageUID:d];
    [(THPageLocation *)v11 setContentNodeGUID:iD];
  }

  return v11;
}

+ (id)pageLocationWithAnnotation:(id)annotation
{
  v4 = [THPageLocation alloc];
  annotationAbsolutePhysicalPageIndex = [annotation annotationAbsolutePhysicalPageIndex];
  annotationStorageRange = [annotation annotationStorageRange];
  v8 = -[THPageLocation initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:](v4, "initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:", annotationAbsolutePhysicalPageIndex, annotationStorageRange, v7, [annotation annotationStorageUID], objc_msgSend(annotation, "annotationContentNodeID"));

  return v8;
}

+ (id)pageLocationWithStorageAnchor:(id)anchor
{
  v4 = [THPageLocation alloc];
  absolutePageIndex = [anchor absolutePageIndex];
  range = [anchor range];
  v8 = -[THPageLocation initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:](v4, "initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:", absolutePageIndex, range, v7, [anchor storageUID], objc_msgSend(objc_msgSend(anchor, "contentNode"), "nodeGUID"));

  return v8;
}

- (void)dealloc
{
  [(THPageLocation *)self setStorageUID:0];
  [(THPageLocation *)self setContentNodeGUID:0];
  v3.receiver = self;
  v3.super_class = THPageLocation;
  [(THPageLocation *)&v3 dealloc];
}

- (NSString)description
{
  absolutePhysicalPageIndex = [(THPageLocation *)self absolutePhysicalPageIndex];
  storageUID = [(THPageLocation *)self storageUID];
  if ([(THPageLocation *)self range]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"--";
  }

  else
  {
    v7.location = [(THPageLocation *)self range];
    v5 = NSStringFromRange(v7);
  }

  return [NSString stringWithFormat:@"<pg %lu (%@, %@) [%p]>", absolutePhysicalPageIndex, storageUID, v5, self];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v19 = v6;
    v20 = v5;
    v21 = v4;
    v22 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![objc_msgSend(equal "storageUID")] || !-[NSString length](-[THPageLocation storageUID](self, "storageUID"), "length") || (v11 = -[NSString isEqualToString:](-[THPageLocation storageUID](self, "storageUID"), "isEqualToString:", objc_msgSend(equal, "storageUID"))) && (v12 = -[THPageLocation range](self, "range"), v14 = v13, v16 = objc_msgSend(equal, "range"), LOBYTE(v11) = 0, v12 == v16) && v14 == v15)
      {
        v17 = [(THPageLocation *)self absolutePhysicalPageIndex:v19];
        LOBYTE(v11) = v17 == [equal absolutePhysicalPageIndex];
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  absolutePhysicalPageIndex = [(THPageLocation *)self absolutePhysicalPageIndex];
  if ([(THPageLocation *)self storageUID])
  {
    v4 = [(NSString *)[(THPageLocation *)self storageUID] hash];
    v6.location = [(THPageLocation *)self range];
    absolutePhysicalPageIndex &= v4 & [NSStringFromRange(v6) hash];
  }

  return absolutePhysicalPageIndex;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  absolutePhysicalPageIndex = [(THPageLocation *)self absolutePhysicalPageIndex];
  range = [(THPageLocation *)self range];
  v8 = v7;
  storageUID = [(THPageLocation *)self storageUID];
  contentNodeGUID = [(THPageLocation *)self contentNodeGUID];

  return [v4 initWithAbsolutePageIndex:absolutePhysicalPageIndex range:range storageUID:v8 contentNodeGUID:{storageUID, contentNodeGUID}];
}

- (THPageLocation)initWithDictionaryRepresentation:(id)representation
{
  objc_opt_class();
  [representation objectForKey:@"pageIndex"];
  v5 = TSUDynamicCast();
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_opt_class();
  [representation objectForKey:@"range"];
  v7 = TSUDynamicCast();
  if (v7)
  {
    v8 = NSRangeFromString(v7);
    location = v8.location;
    length = v8.length;
  }

  else
  {
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_opt_class();
  [representation objectForKey:@"storage"];
  v11 = TSUDynamicCast();
  objc_opt_class();
  [representation objectForKey:@"nodeGUID"];
  v12 = TSUDynamicCast();

  return [(THPageLocation *)self initWithAbsolutePageIndex:unsignedIntegerValue range:location storageUID:length contentNodeGUID:v11, v12];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", self->_absolutePhysicalPageIndex), @"pageIndex"}];
  [v3 setObject:NSStringFromRange(self->_range) forKey:@"range"];
  storageUID = self->_storageUID;
  if (storageUID)
  {
    [v3 setObject:storageUID forKey:@"storage"];
  }

  contentNodeGUID = self->_contentNodeGUID;
  if (contentNodeGUID)
  {
    [v3 setObject:contentNodeGUID forKeyedSubscript:@"nodeGUID"];
  }

  return v3;
}

- (id)stringValue
{
  absolutePhysicalPageIndex = [(THPageLocation *)self absolutePhysicalPageIndex];
  storageUID = [(THPageLocation *)self storageUID];
  if ([(THPageLocation *)self range]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"--";
  }

  else
  {
    v7.location = [(THPageLocation *)self range];
    v5 = NSStringFromRange(v7);
  }

  return [NSString stringWithFormat:@"<pg %lu (%@, %@) >", absolutePhysicalPageIndex, storageUID, v5];
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end