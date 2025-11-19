@interface CIPhotoEffect3DNoir
- (void)setDefaults;
@end

@implementation CIPhotoEffect3DNoir

- (void)setDefaults
{
  v3.receiver = self;
  v3.super_class = CIPhotoEffect3DNoir;
  [(CIPhotoEffect3D *)&v3 setDefaults];
  -[CIPhotoEffect3DNoir setValue:forKey:](self, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:{-[CIPhotoEffect3DNoir _defaultVersion](self, "_defaultVersion")}], @"__inputVersion");
  [(CIPhotoEffect3D *)self setInputGrainAmount:&unk_1F1084588];
}

@end