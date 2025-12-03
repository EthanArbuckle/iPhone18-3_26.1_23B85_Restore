@interface _CLLSLHeadingSupplInfo
- (_CLLSLHeadingSupplInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation _CLLSLHeadingSupplInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLLSLHeadingSupplInfo;
  [(_CLLSLHeadingSupplInfo *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(_CLLSLMapRoadSegment *)self->_roadSegment copyWithZone:zone];
  return v5;
}

- (_CLLSLHeadingSupplInfo)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _CLLSLHeadingSupplInfo;
  v4 = [(_CLLSLHeadingSupplInfo *)&v6 init];
  if (v4)
  {
    v4->_roadSegment = [coder decodeObjectOfClass:objc_opt_class() forKey:@"roadSegment"];
  }

  return v4;
}

@end