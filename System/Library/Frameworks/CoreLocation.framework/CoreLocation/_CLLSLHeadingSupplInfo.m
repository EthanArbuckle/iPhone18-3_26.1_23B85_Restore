@interface _CLLSLHeadingSupplInfo
- (_CLLSLHeadingSupplInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation _CLLSLHeadingSupplInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLLSLHeadingSupplInfo;
  [(_CLLSLHeadingSupplInfo *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(_CLLSLMapRoadSegment *)self->_roadSegment copyWithZone:a3];
  return v5;
}

- (_CLLSLHeadingSupplInfo)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _CLLSLHeadingSupplInfo;
  v4 = [(_CLLSLHeadingSupplInfo *)&v6 init];
  if (v4)
  {
    v4->_roadSegment = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"roadSegment"];
  }

  return v4;
}

@end