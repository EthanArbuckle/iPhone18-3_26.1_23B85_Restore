@interface _CNAvatarImageProvider
+ (id)roundImage:(id)a3;
- (_CNAvatarImageProvider)initWithLikenessProvider:(id)a3;
- (id)imageForSize:(CGSize)a3 scale:(double)a4 style:(unint64_t)a5;
@end

@implementation _CNAvatarImageProvider

- (id)imageForSize:(CGSize)a3 scale:(double)a4 style:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  if (a5 == 1)
  {
    v13 = [(_CNAvatarImageProvider *)self likenessProvider];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v11 = [(_CNAvatarImageProvider *)self likenessProvider];
      v12 = [v11 _cnui_roundedRectImageForSize:width scale:{height, a4}];
      goto LABEL_7;
    }

LABEL_8:
    v17 = [(_CNAvatarImageProvider *)self likenessProvider];
    v18 = objc_opt_respondsToSelector();

    v19 = [(_CNAvatarImageProvider *)self likenessProvider];
    v20 = v19;
    if (v18)
    {
      [v19 _cnui_likenessForSize:width scale:{height, a4}];
    }

    else
    {
      [v19 _cnui_likeness];
    }
    v21 = ;

    v22 = [v21 snapshotWithSize:0 scale:width options:{height, a4}];
    v16 = [objc_opt_class() roundImage:v22];

    goto LABEL_12;
  }

  if (a5)
  {
    goto LABEL_8;
  }

  v9 = [(_CNAvatarImageProvider *)self likenessProvider];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = [(_CNAvatarImageProvider *)self likenessProvider];
  v12 = [v11 _cnui_circularImageForSize:width scale:{height, a4}];
LABEL_7:
  v15 = v12;

  v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v15 scale:0 orientation:a4];
LABEL_12:

  return v16;
}

- (_CNAvatarImageProvider)initWithLikenessProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _CNAvatarImageProvider;
  v6 = [(_CNAvatarImageProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_likenessProvider, a3);
  }

  return v7;
}

+ (id)roundImage:(id)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = a3;
  [v5 size];
  v7 = v6;
  v9 = v8;
  [v5 scale];
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

  [v5 drawInRect:{v3, v4, v7, v9}];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

@end