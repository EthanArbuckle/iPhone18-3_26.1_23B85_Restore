@interface _VOTWebElementMetadata
- (CGPoint)centerPoint;
- (id)debugDescription;
- (id)initFromElement:(id)element indexPath:(id)path;
@end

@implementation _VOTWebElementMetadata

- (id)initFromElement:(id)element indexPath:(id)path
{
  elementCopy = element;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = _VOTWebElementMetadata;
  v8 = [(_VOTWebElementMetadata *)&v13 init];
  v9 = v8;
  if (elementCopy && v8)
  {
    label = [elementCopy label];
    [(_VOTWebElementMetadata *)v9 setLabel:label];

    webAreaURL = [elementCopy webAreaURL];
    [(_VOTWebElementMetadata *)v9 setWebAreaURL:webAreaURL];

    [elementCopy frame];
    AX_CGRectGetCenter();
    [(_VOTWebElementMetadata *)v9 setCenterPoint:?];
    [(_VOTWebElementMetadata *)v9 setIndexPathFromWebArea:pathCopy];
  }

  return v9;
}

- (id)debugDescription
{
  v3 = [NSString alloc];
  indexPathFromWebArea = [(_VOTWebElementMetadata *)self indexPathFromWebArea];
  v5 = [indexPathFromWebArea debugDescription];
  label = [(_VOTWebElementMetadata *)self label];
  webAreaURL = [(_VOTWebElementMetadata *)self webAreaURL];
  absoluteString = [webAreaURL absoluteString];
  v9 = [v3 initWithFormat:@"%@: index path: %@, label: '%@', url: %@", self, v5, label, absoluteString];

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