@interface _VOTWebElementMetadata
- (CGPoint)centerPoint;
- (id)debugDescription;
- (id)initFromElement:(id)a3 indexPath:(id)a4;
@end

@implementation _VOTWebElementMetadata

- (id)initFromElement:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _VOTWebElementMetadata;
  v8 = [(_VOTWebElementMetadata *)&v13 init];
  v9 = v8;
  if (v6 && v8)
  {
    v10 = [v6 label];
    [(_VOTWebElementMetadata *)v9 setLabel:v10];

    v11 = [v6 webAreaURL];
    [(_VOTWebElementMetadata *)v9 setWebAreaURL:v11];

    [v6 frame];
    AX_CGRectGetCenter();
    [(_VOTWebElementMetadata *)v9 setCenterPoint:?];
    [(_VOTWebElementMetadata *)v9 setIndexPathFromWebArea:v7];
  }

  return v9;
}

- (id)debugDescription
{
  v3 = [NSString alloc];
  v4 = [(_VOTWebElementMetadata *)self indexPathFromWebArea];
  v5 = [v4 debugDescription];
  v6 = [(_VOTWebElementMetadata *)self label];
  v7 = [(_VOTWebElementMetadata *)self webAreaURL];
  v8 = [v7 absoluteString];
  v9 = [v3 initWithFormat:@"%@: index path: %@, label: '%@', url: %@", self, v5, v6, v8];

  return v9;
}

- (CGPoint)centerPoint
{
  x = self->_centerPoint.x;
  y = self->_centerPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end