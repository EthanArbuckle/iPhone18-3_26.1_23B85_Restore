@interface _CNAvatarImageProvider
+ (id)roundImage:(id)image;
- (_CNAvatarImageProvider)initWithLikenessProvider:(id)provider;
- (id)imageForSize:(CGSize)size scale:(double)scale style:(unint64_t)style;
@end

@implementation _CNAvatarImageProvider

- (id)imageForSize:(CGSize)size scale:(double)scale style:(unint64_t)style
{
  height = size.height;
  width = size.width;
  if (style == 1)
  {
    likenessProvider = [(_CNAvatarImageProvider *)self likenessProvider];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      likenessProvider2 = [(_CNAvatarImageProvider *)self likenessProvider];
      v12 = [likenessProvider2 _cnui_roundedRectImageForSize:width scale:{height, scale}];
      goto LABEL_7;
    }

LABEL_8:
    likenessProvider3 = [(_CNAvatarImageProvider *)self likenessProvider];
    v18 = objc_opt_respondsToSelector();

    likenessProvider4 = [(_CNAvatarImageProvider *)self likenessProvider];
    v20 = likenessProvider4;
    if (v18)
    {
      [likenessProvider4 _cnui_likenessForSize:width scale:{height, scale}];
    }

    else
    {
      [likenessProvider4 _cnui_likeness];
    }
    v21 = ;

    v22 = [v21 snapshotWithSize:0 scale:width options:{height, scale}];
    v16 = [objc_opt_class() roundImage:v22];

    goto LABEL_12;
  }

  if (style)
  {
    goto LABEL_8;
  }

  likenessProvider5 = [(_CNAvatarImageProvider *)self likenessProvider];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

  likenessProvider2 = [(_CNAvatarImageProvider *)self likenessProvider];
  v12 = [likenessProvider2 _cnui_circularImageForSize:width scale:{height, scale}];
LABEL_7:
  v15 = v12;

  v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v15 scale:0 orientation:scale];
LABEL_12:

  return v16;
}

- (_CNAvatarImageProvider)initWithLikenessProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = _CNAvatarImageProvider;
  v6 = [(_CNAvatarImageProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_likenessProvider, provider);
  }

  return v7;
}

+ (id)roundImage:(id)image
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  imageCopy = image;
  [imageCopy size];
  v7 = v6;
  v9 = v8;
  [imageCopy scale];
  v11 = v10;
  v16.width = v7;
  v16.height = v9;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v11);
  v17.origin.x = v3;
  v17.origin.y = v4;
  v17.size.width = v7;
  v17.size.height = v9;
  v12 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v3 cornerRadius:{v4, v7, v9, CGRectGetWidth(v17) * 0.5}];
  [v12 addClip];

  [imageCopy drawInRect:{v3, v4, v7, v9}];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

@end