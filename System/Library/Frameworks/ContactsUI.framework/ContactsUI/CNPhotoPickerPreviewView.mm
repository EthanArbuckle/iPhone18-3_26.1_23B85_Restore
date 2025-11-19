@interface CNPhotoPickerPreviewView
+ (id)pickerPreviewWithFrame:(CGRect)a3 forItem:(id)a4;
- (CNPhotoPickerPreviewView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setupPreview;
- (void)updatePreviewWithItem:(id)a3;
@end

@implementation CNPhotoPickerPreviewView

- (void)updatePreviewWithItem:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerPreviewView *)self thumbnailContentView];
  [v5 removeFromSuperview];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CNPhotoPickerPreviewView_updatePreviewWithItem___block_invoke;
  v6[3] = &unk_1E74E73E8;
  v6[4] = self;
  [v4 thumbnailViewWithCompletion:v6];
}

void __50__CNPhotoPickerPreviewView_updatePreviewWithItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setThumbnailContentView:v4];
  v5 = [*(a1 + 32) previewView];
  [v5 addSubview:v4];

  v6 = [*(a1 + 32) previewView];
  [v6 frame];
  [v4 setFrame:?];
}

- (void)setupPreview
{
  [(CNPhotoPickerPreviewView *)self frame];
  v4 = v3;
  [(CNPhotoPickerPreviewView *)self frame];
  v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v4, v5}];
  previewView = self->_previewView;
  self->_previewView = v6;

  [(UIView *)self->_previewView setAutoresizingMask:18];
  v8 = +[CNUIColorRepository photoPickerAvatarBackgroundDefaultColor];
  [(UIView *)self->_previewView setBackgroundColor:v8];

  [(CNPhotoPickerPreviewView *)self addSubview:self->_previewView];
  v9 = objc_alloc_init(MEMORY[0x1E69794A0]);
  clippingLayer = self->_clippingLayer;
  self->_clippingLayer = v9;

  v11 = self->_clippingLayer;
  v12 = [(UIView *)self->_previewView layer];
  [v12 setMask:v11];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = CNPhotoPickerPreviewView;
  [(CNPhotoPickerPreviewView *)&v8 layoutSubviews];
  v3 = MEMORY[0x1E69DC728];
  v4 = [(CNPhotoPickerPreviewView *)self previewView];
  [v4 bounds];
  v5 = [v3 bezierPathWithOvalInRect:?];
  v6 = [v5 CGPath];
  v7 = [(CNPhotoPickerPreviewView *)self clippingLayer];
  [v7 setPath:v6];
}

- (CNPhotoPickerPreviewView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CNPhotoPickerPreviewView;
  v3 = [(CNPhotoPickerPreviewView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNPhotoPickerPreviewView *)v3 setupPreview];
    v5 = v4;
  }

  return v4;
}

+ (id)pickerPreviewWithFrame:(CGRect)a3 forItem:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v10 = off_1E74DEC90;
  if ((isKindOfClass & 1) == 0)
  {
    v10 = off_1E74DECA0;
  }

  v11 = [objc_alloc(*v10) initWithFrame:{x, y, width, height}];

  return v11;
}

@end