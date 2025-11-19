@interface AVTAvatarLibraryCollectionViewCell
- (AVTAvatarLibraryCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)updateAvatarImage:(id)a3;
@end

@implementation AVTAvatarLibraryCollectionViewCell

- (AVTAvatarLibraryCollectionViewCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = AVTAvatarLibraryCollectionViewCell;
  v3 = [(AVTAvatarLibraryCollectionViewCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [(AVTAvatarLibraryCollectionViewCell *)v3 contentView];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];

    [(UIImageView *)v6 setAutoresizingMask:18];
    v7 = [(AVTAvatarLibraryCollectionViewCell *)v3 contentView];
    [v7 addSubview:v6];

    imageView = v3->_imageView;
    v3->_imageView = v6;
  }

  return v3;
}

- (void)updateAvatarImage:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarLibraryCollectionViewCell *)self imageView];
  [v5 setImage:v4];
}

@end