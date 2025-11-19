@interface ARWorldAlignmentData
- (ARWorldAlignmentData)init;
- (ARWorldAlignmentData)initWithCoder:(id)a3;
- (__n128)setWorldAlignmentTransform:(__n128)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setReferenceOriginChanged:(BOOL)a3;
- (void)setSessionShouldResumeCameraPosition:(BOOL)a3;
- (void)setSessionShouldResumeCameraPositionAndHeading:(BOOL)a3;
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

- (void)setReferenceOriginChanged:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_modifiers = self->_modifiers & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (void)setSessionShouldResumeCameraPosition:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_modifiers = self->_modifiers & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setSessionShouldResumeCameraPositionAndHeading:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_modifiers = self->_modifiers & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (ARWorldAlignmentData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ARWorldAlignmentData;
  v5 = [(ARWorldAlignmentData *)&v11 init];
  if (v5)
  {
    [v4 ar_decodeMatrix4x4ForKey:@"worldAlignmentTransform"];
    v5[1] = v6;
    v5[2] = v7;
    v5[3] = v8;
    v5[4] = v9;
    v5->_modifiers = [v4 decodeIntegerForKey:@"worldAlignmentModifiers"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self[3];
  v7 = self[4];
  v4 = self[1];
  v5 = self[2];
  v8 = a3;
  [v8 ar_encodeMatrix4x4:@"worldAlignmentTransform" forKey:{*&v4.super.isa, *&v5.super.isa, *&v6.super.isa, *&v7.super.isa}];
  [v8 encodeInteger:self->_modifiers forKey:@"worldAlignmentModifiers"];
}

- (__n128)setWorldAlignmentTransform:(__n128)a3
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  return result;
}

@end