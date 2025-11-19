@interface CRLImageRepLayerContentsRecipe
- (CRLImageRepLayerContentsRecipe)initWithImage:(CGImage *)a3 orientation:(int64_t)a4 hasBakedMask:(BOOL)a5;
- (void)dealloc;
@end

@implementation CRLImageRepLayerContentsRecipe

- (CRLImageRepLayerContentsRecipe)initWithImage:(CGImage *)a3 orientation:(int64_t)a4 hasBakedMask:(BOOL)a5
{
  v10.receiver = self;
  v10.super_class = CRLImageRepLayerContentsRecipe;
  v8 = [(CRLImageRepLayerContentsRecipe *)&v10 init];
  if (v8)
  {
    v8->_image = CGImageRetain(a3);
    v8->_orientation = a4;
    v8->_hasBakedMask = a5;
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