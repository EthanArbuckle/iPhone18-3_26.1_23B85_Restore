@interface CRLImageRepLayerContentsRecipe
- (CRLImageRepLayerContentsRecipe)initWithImage:(CGImage *)image orientation:(int64_t)orientation hasBakedMask:(BOOL)mask;
- (void)dealloc;
@end

@implementation CRLImageRepLayerContentsRecipe

- (CRLImageRepLayerContentsRecipe)initWithImage:(CGImage *)image orientation:(int64_t)orientation hasBakedMask:(BOOL)mask
{
  v10.receiver = self;
  v10.super_class = CRLImageRepLayerContentsRecipe;
  v8 = [(CRLImageRepLayerContentsRecipe *)&v10 init];
  if (v8)
  {
    v8->_image = CGImageRetain(image);
    v8->_orientation = orientation;
    v8->_hasBakedMask = mask;
  }

  return v8;
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = CRLImageRepLayerContentsRecipe;
  [(CRLImageRepLayerContentsRecipe *)&v3 dealloc];
}

@end