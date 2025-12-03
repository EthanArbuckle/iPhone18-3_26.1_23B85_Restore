@interface AVTAvatarLibraryCollectionViewAddCell
- (AVTAvatarLibraryCollectionViewAddCell)initWithFrame:(CGRect)frame;
@end

@implementation AVTAvatarLibraryCollectionViewAddCell

- (AVTAvatarLibraryCollectionViewAddCell)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = AVTAvatarLibraryCollectionViewAddCell;
  v3 = [(AVTAvatarLibraryCollectionViewAddCell *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v4 imageNamed:@"silhouetteHead" inBundle:v5 compatibleWithTraitCollection:0];

    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    contentView = [(AVTAvatarLibraryCollectionViewAddCell *)v3 contentView];
    [contentView bounds];
    v9 = [v7 initWithFrame:?];

    [v9 setImage:v6];
    [v9 setAutoresizingMask:18];
    contentView2 = [(AVTAvatarLibraryCollectionViewAddCell *)v3 contentView];
    [contentView2 addSubview:v9];

    v11 = objc_alloc(MEMORY[0x1E69DCC10]);
    contentView3 = [(AVTAvatarLibraryCollectionViewAddCell *)v3 contentView];
    [contentView3 bounds];
    v13 = [v11 initWithFrame:?];

    [v13 setText:@"+"];
    v14 = [MEMORY[0x1E69DB878] systemFontOfSize:60.0];
    [v13 setFont:v14];

    v15 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.46 blue:1.0 alpha:1.0];
    [v13 setTextColor:v15];

    [v13 setTextAlignment:1];
    [v13 setAutoresizingMask:18];
    contentView4 = [(AVTAvatarLibraryCollectionViewAddCell *)v3 contentView];
    [contentView4 addSubview:v13];
  }

  return v3;
}

@end