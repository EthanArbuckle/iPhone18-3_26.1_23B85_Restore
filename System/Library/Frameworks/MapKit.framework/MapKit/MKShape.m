@interface MKShape
- (CLLocationCoordinate2D)coordinate;
- (MKShape)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MKShape

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"MKShapeTitle"];
  [v5 encodeObject:self->_subtitle forKey:@"MKShapeSubtitle"];
}

- (MKShape)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MKShape;
  v5 = [(MKShape *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKShapeTitle"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKShapeSubtitle"];
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