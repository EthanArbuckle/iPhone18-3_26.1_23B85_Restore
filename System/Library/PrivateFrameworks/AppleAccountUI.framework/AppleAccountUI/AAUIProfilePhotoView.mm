@interface AAUIProfilePhotoView
- (AAUIProfilePhotoView)initWithPhoto:(id)a3 target:(id)a4 action:(SEL)a5;
- (double)desiredHeightForWidth:(double)result;
- (void)layoutSubviews;
- (void)setEditing:(BOOL)a3;
@end

@implementation AAUIProfilePhotoView

- (AAUIProfilePhotoView)initWithPhoto:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a3;
  v9 = a4;
  v22.receiver = self;
  v22.super_class = AAUIProfilePhotoView;
  v10 = [(AAUIProfilePhotoView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v10)
  {
    v11 = [MEMORY[0x1E69DC888] clearColor];
    [(AAUIProfilePhotoView *)v10 setBackgroundColor:v11];

    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    photoView = v10->_photoView;
    v10->_photoView = v12;

    [(AAUIProfilePhotoView *)v10 addSubview:v10->_photoView];
    v14 = [MEMORY[0x1E69DC738] buttonWithType:1];
    editButton = v10->_editButton;
    v10->_editButton = v14;

    v16 = v10->_editButton;
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"EDIT_PROFILE_PHOTO_BUTTON" value:&stru_1F447F790 table:@"Localizable"];
    [(UIButton *)v16 setTitle:v18 forState:0];

    [(UIButton *)v10->_editButton addTarget:v9 action:a5 forControlEvents:64];
    v19 = v10->_editButton;
    v20 = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UIButton *)v19 setTitleColor:v20 forState:0];

    if (v10->_isEditing)
    {
      [(AAUIProfilePhotoView *)v10 addSubview:v10->_editButton];
    }
  }

  return v10;
}

- (void)setEditing:(BOOL)a3
{
  if (self->_isEditing != a3)
  {
    self->_isEditing = a3;
    if (a3)
    {
      [(AAUIProfilePhotoView *)self addSubview:self->_editButton];
    }

    else
    {
      [(UIButton *)self->_editButton removeFromSuperview];
    }

    [(AAUIProfilePhotoView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = AAUIProfilePhotoView;
  [(AAUIProfilePhotoView *)&v12 layoutSubviews];
  [(UIImageView *)self->_photoView frame];
  [(AAUIProfilePhotoView *)self frame];
  v4 = v3;
  [(AAUIProfilePhotoView *)self frame];
  v6 = v5;
  [(UIImageView *)self->_photoView setFrame:0.0, 0.0, v4, v5];
  if (self->_isEditing)
  {
    [(UIButton *)self->_editButton sizeToFit];
    [(UIButton *)self->_editButton frame];
    v8 = v7;
    v10 = v9;
    [(AAUIProfilePhotoView *)self frame];
    [(UIButton *)self->_editButton setFrame:ceil((v11 - v8) * 0.5), v6 + 0.0, v8, v10];
  }
}

- (double)desiredHeightForWidth:(double)result
{
  if (self->_isEditing)
  {
    return result + 30.0;
  }

  return result;
}

@end