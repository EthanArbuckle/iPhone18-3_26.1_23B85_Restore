@interface ARWorldAlignmentData
- (ARWorldAlignmentData)init;
- (ARWorldAlignmentData)initWithCoder:(id)coder;
- (__n128)setWorldAlignmentTransform:(__n128)transform;
- (void)encodeWithCoder:(id)coder;
- (void)setReferenceOriginChanged:(BOOL)changed;
- (void)setSessionShouldResumeCameraPosition:(BOOL)position;
- (void)setSessionShouldResumeCameraPositionAndHeading:(BOOL)heading;
@end

@implementation ARWorldAlignmentData

- (ARWorldAlignmentData)init
{
  v6.receiver = self;
  v6.super_class = ARWorldAlignmentData;
  result = [(ARWorldAlignmentData *)&v6 init];
  if (result)
  {
    v3 = MEMORY[0x1E69E9B18];
    v4 = *(MEMORY[0x1E69E9B18] + 16);
    result[1] = *MEMORY[0x1E69E9B18];
    result[2] = v4;
    v5 = v3[3];
    result[3] = v3[2];
    result[4] = v5;
  }

  return result;
}

- (void)setReferenceOriginChanged:(BOOL)changed
{
  v3 = 2;
  if (!changed)
  {
    v3 = 0;
  }

  self->_modifiers = self->_modifiers & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setSessionShouldResumeCameraPosition:(BOOL)position
{
  v3 = 4;
  if (!position)
  {
    v3 = 0;
  }

  self->_modifiers = self->_modifiers & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setSessionShouldResumeCameraPositionAndHeading:(BOOL)heading
{
  v3 = 8;
  if (!heading)
  {
    v3 = 0;
  }

  self->_modifiers = self->_modifiers & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (ARWorldAlignmentData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ARWorldAlignmentData;
  v5 = [(ARWorldAlignmentData *)&v11 init];
  if (v5)
  {
    [coderCopy ar_decodeMatrix4x4ForKey:@"worldAlignmentTransform"];
    v5[1] = v6;
    v5[2] = v7;
    v5[3] = v8;
    v5[4] = v9;
    v5->_modifiers = [coderCopy decodeIntegerForKey:@"worldAlignmentModifiers"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = self[3];
  v7 = self[4];
  v4 = self[1];
  v5 = self[2];
  coderCopy = coder;
  [coderCopy ar_encodeMatrix4x4:@"worldAlignmentTransform" forKey:{*&v4.super.isa, *&v5.super.isa, *&v6.super.isa, *&v7.super.isa}];
  [coderCopy encodeInteger:self->_modifiers forKey:@"worldAlignmentModifiers"];
}

- (__n128)setWorldAlignmentTransform:(__n128)transform
{
  result[1] = a2;
  result[2] = transform;
  result[3] = a4;
  result[4] = a5;
  return result;
}

@end