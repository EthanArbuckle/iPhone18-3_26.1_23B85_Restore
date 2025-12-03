@interface MKShape
- (CLLocationCoordinate2D)coordinate;
- (MKShape)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKShape

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"MKShapeTitle"];
  [coderCopy encodeObject:self->_subtitle forKey:@"MKShapeSubtitle"];
}

- (MKShape)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MKShape;
  v5 = [(MKShape *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKShapeTitle"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKShapeSubtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;
  }

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[MKShape coordinate] must only be invoked on a concrete subclass." userInfo:0];
  objc_exception_throw(v2);
}

@end