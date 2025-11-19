@interface THPageLocation
+ (id)pageLocationWithAnnotation:(id)a3;
+ (id)pageLocationWithStorageAnchor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (THPageLocation)init;
- (THPageLocation)initWithAbsolutePageIndex:(unint64_t)a3 range:(_NSRange)a4 storageUID:(id)a5 contentNodeGUID:(id)a6;
- (THPageLocation)initWithDictionaryRepresentation:(id)a3;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
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

- (THPageLocation)initWithAbsolutePageIndex:(unint64_t)a3 range:(_NSRange)a4 storageUID:(id)a5 contentNodeGUID:(id)a6
{
  length = a4.length;
  location = a4.location;
  v14.receiver = self;
  v14.super_class = THPageLocation;
  v11 = [(THPageLocation *)&v14 init];
  if (v11)
  {
    if (a3 && a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (![a5 length] || (NSInvalidRange[0] == location ? (v12 = NSInvalidRange[1] == length) : (v12 = 0), v12))
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }

    [(THPageLocation *)v11 setAbsolutePhysicalPageIndex:a3];
    [(THPageLocation *)v11 setRange:location, length];
    [(THPageLocation *)v11 setStorageUID:a5];
    [(THPageLocation *)v11 setContentNodeGUID:a6];
  }

  return v11;
}

+ (id)pageLocationWithAnnotation:(id)a3
{
  v4 = [THPageLocation alloc];
  v5 = [a3 annotationAbsolutePhysicalPageIndex];
  v6 = [a3 annotationStorageRange];
  v8 = -[THPageLocation initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:](v4, "initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:", v5, v6, v7, [a3 annotationStorageUID], objc_msgSend(a3, "annotationContentNodeID"));

  return v8;
}

+ (id)pageLocationWithStorageAnchor:(id)a3
{
  v4 = [THPageLocation alloc];
  v5 = [a3 absolutePageIndex];
  v6 = [a3 range];
  v8 = -[THPageLocation initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:](v4, "initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:", v5, v6, v7, [a3 storageUID], objc_msgSend(objc_msgSend(a3, "contentNode"), "nodeGUID"));

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
  v3 = [(THPageLocation *)self absolutePhysicalPageIndex];
  v4 = [(THPageLocation *)self storageUID];
  if ([(THPageLocation *)self range]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"--";
  }

  else
  {
    v7.location = [(THPageLocation *)self range];
    v5 = NSStringFromRange(v7);
  }

  return [NSString stringWithFormat:@"<pg %lu (%@, %@) [%p]>", v3, v4, v5, self];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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
      if (![objc_msgSend(a3 "storageUID")] || !-[NSString length](-[THPageLocation storageUID](self, "storageUID"), "length") || (v11 = -[NSString isEqualToString:](-[THPageLocation storageUID](self, "storageUID"), "isEqualToString:", objc_msgSend(a3, "storageUID"))) && (v12 = -[THPageLocation range](self, "range"), v14 = v13, v16 = objc_msgSend(a3, "range"), LOBYTE(v11) = 0, v12 == v16) && v14 == v15)
      {
        v17 = [(THPageLocation *)self absolutePhysicalPageIndex:v19];
        LOBYTE(v11) = v17 == [a3 absolutePhysicalPageIndex];
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
  v3 = [(THPageLocation *)self absolutePhysicalPageIndex];
  if ([(THPageLocation *)self storageUID])
  {
    v4 = [(NSString *)[(THPageLocation *)self storageUID] hash];
    v6.location = [(THPageLocation *)self range];
    v3 &= v4 & [NSStringFromRange(v6) hash];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(THPageLocation *)self absolutePhysicalPageIndex];
  v6 = [(THPageLocation *)self range];
  v8 = v7;
  v9 = [(THPageLocation *)self storageUID];
  v10 = [(THPageLocation *)self contentNodeGUID];

  return [v4 initWithAbsolutePageIndex:v5 range:v6 storageUID:v8 contentNodeGUID:{v9, v10}];
}

- (THPageLocation)initWithDictionaryRepresentation:(id)a3
{
  objc_opt_class();
  [a3 objectForKey:@"pageIndex"];
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = [v5 unsignedIntegerValue];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_opt_class();
  [a3 objectForKey:@"range"];
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
  [a3 objectForKey:@"storage"];
  v11 = TSUDynamicCast();
  objc_opt_class();
  [a3 objectForKey:@"nodeGUID"];
  v12 = TSUDynamicCast();

  return [(THPageLocation *)self initWithAbsolutePageIndex:v6 range:location storageUID:length contentNodeGUID:v11, v12];
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
  v3 = [(THPageLocation *)self absolutePhysicalPageIndex];
  v4 = [(THPageLocation *)self storageUID];
  if ([(THPageLocation *)self range]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"--";
  }

  else
  {
    v7.location = [(THPageLocation *)self range];
    v5 = NSStringFromRange(v7);
  }

  return [NSString stringWithFormat:@"<pg %lu (%@, %@) >", v3, v4, v5];
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