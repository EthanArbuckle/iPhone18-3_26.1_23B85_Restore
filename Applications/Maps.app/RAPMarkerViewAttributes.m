@interface RAPMarkerViewAttributes
- (RAPMarkerViewAttributes)initWithTitle:(id)a3 styleAttributes:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RAPMarkerViewAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(GEOFeatureStyleAttributes *)self->_styleAttributes copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_title copy];
  v8 = v4[1];
  v4[1] = v7;

  return v4;
}

- (RAPMarkerViewAttributes)initWithTitle:(id)a3 styleAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RAPMarkerViewAttributes;
  v8 = [(RAPMarkerViewAttributes *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    styleAttributes = v8->_styleAttributes;
    v8->_styleAttributes = v11;
  }

  return v8;
}

@end