@interface AVTAvatarLibraryCollectionViewAddCell
- (AVTAvatarLibraryCollectionViewAddCell)initWithFrame:(CGRect)a3;
@end

@implementation AVTAvatarLibraryCollectionViewAddCell

- (AVTAvatarLibraryCollectionViewAddCell)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = AVTAvatarLibraryCollectionViewAddCell;
  v3 = [(AVTAvatarLibraryCollectionViewAddCell *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v4 imageNamed:@"silhouetteHead" inBundle:v5 compatibleWithTraitCollection:0];

    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v8 = [(AVTAvatarLibraryCollectionViewAddCell *)v3 contentView];
    [v8 bounds];
    v9 = [v7 initWithFrame:?];

    [v9 setImage:v6];
    [v9 setAutoresizingMask:18];
    v10 = [(AVTAvatarLibraryCollectionViewAddCell *)v3 contentView];
    [v10 addSubview:v9];

    v11 = objc_alloc(MEMORY[0x1E69DCC10]);
    v12 = [(AVTAvatarLibraryCollectionViewAddCell *)v3 contentView];
    [v12 bounds];
    v13 = [v11 initWithFrame:?];

    [v13 setText:@"+"];
    v14 = [MEMORY[0x1E69DB878] systemFontOfSize:60.0];
    [v13 setFont:v14];

    v15 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.46 blue:1.0 alpha:1.0];
    [v13 setTextColor:v15];

    [v13 setTextAlignment:1];
    [v13 setAutoresizingMask:18];
    v16 = [(AVTAvatarLibraryCollectionViewAddCell *)v3 contentView];
    [v16 addSubview:v13];
  }

  return v3;
}

@end