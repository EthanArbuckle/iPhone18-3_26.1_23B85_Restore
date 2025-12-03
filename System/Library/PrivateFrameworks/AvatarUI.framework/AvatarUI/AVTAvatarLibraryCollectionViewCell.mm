@interface AVTAvatarLibraryCollectionViewCell
- (AVTAvatarLibraryCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)updateAvatarImage:(id)image;
@end

@implementation AVTAvatarLibraryCollectionViewCell

- (AVTAvatarLibraryCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = AVTAvatarLibraryCollectionViewCell;
  v3 = [(AVTAvatarLibraryCollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    contentView = [(AVTAvatarLibraryCollectionViewCell *)v3 contentView];
    [contentView bounds];
    v6 = [v4 initWithFrame:?];

    [(UIImageView *)v6 setAutoresizingMask:18];
    contentView2 = [(AVTAvatarLibraryCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v6];

    imageView = v3->_imageView;
    v3->_imageView = v6;
  }

  return v3;
}

- (void)updateAvatarImage:(id)image
{
  imageCopy = image;
  imageView = [(AVTAvatarLibraryCollectionViewCell *)self imageView];
  [imageView setImage:imageCopy];
}

@end