@interface AVTAvatarLibraryHeaderView
- (AVTAvatarLibraryHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation AVTAvatarLibraryHeaderView

- (AVTAvatarLibraryHeaderView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = AVTAvatarLibraryHeaderView;
  v3 = [(AVTAvatarLibraryHeaderView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AVTAvatarLibraryHeaderView *)v3 bounds];
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    v9 = CGRectGetWidth(v16) + -20.0;
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{10.0, 0.0, v9, CGRectGetHeight(v17)}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v10;

    [(UILabel *)v4->_titleLabel setAutoresizingMask:18];
    v12 = v4->_titleLabel;
    v13 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0];
    [(UILabel *)v12 setFont:v13];

    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [(AVTAvatarLibraryHeaderView *)v4 addSubview:v4->_titleLabel];
  }

  return v4;
}

@end