@interface TUIUIKitSearchBar
- (TUIUIKitSearchBar)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCancelText:(id)text;
- (void)setFont:(id)font;
- (void)setTextColor:(id)color;
- (void)setTintColor:(id)color;
@end

@implementation TUIUIKitSearchBar

- (TUIUIKitSearchBar)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUIUIKitSearchBar;
  v3 = [(TUIUIKitSearchBar *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUIUIKitSearchBar *)v3 setSearchBarStyle:2];
    [(TUIUIKitSearchBar *)v4 setContentInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  }

  return v4;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = TUIUIKitSearchBar;
  [(TUIUIKitSearchBar *)&v38 layoutSubviews];
  [(TUIUIKitSearchBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  searchField = [(TUIUIKitSearchBar *)self searchField];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [UIImage tui_imageNamed:@"search_glyph" inBundle:v12];
  v14 = [v13 imageWithRenderingMode:2];

  leftView = [searchField leftView];
  [leftView setImage:v14];
  [leftView frame];
  v17 = v16;
  [leftView frame];
  v19 = v18;
  [v14 size];
  v21 = v20;
  [v14 size];
  [leftView setFrame:{v17, v19, v21, v22}];
  tintColor = [(TUIUIKitSearchBar *)self tintColor];
  [leftView setTintColor:tintColor];

  [searchField frame];
  x = v39.origin.x;
  Width = CGRectGetWidth(v39);
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  [searchField setFrame:{x, 0.0, Width, CGRectGetHeight(v40)}];
  cancelButton = [(TUIUIKitSearchBar *)self cancelButton];
  [cancelButton frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v41.origin.x = v4;
  v41.origin.y = v6;
  v41.size.width = v8;
  v41.size.height = v10;
  v35 = CGRectGetWidth(v41);
  v42.origin.x = v28;
  v42.origin.y = v30;
  v42.size.width = v32;
  v42.size.height = v34;
  v36 = v35 - CGRectGetWidth(v42);
  cancelButton2 = [(TUIUIKitSearchBar *)self cancelButton];
  [cancelButton2 setFrame:{v36, v30, v32, v34}];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  searchField = [(TUIUIKitSearchBar *)self searchField];
  [searchField setFont:fontCopy];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  searchField = [(TUIUIKitSearchBar *)self searchField];
  [searchField setTextColor:colorCopy];
}

- (void)setTintColor:(id)color
{
  v11.receiver = self;
  v11.super_class = TUIUIKitSearchBar;
  colorCopy = color;
  [(TUIUIKitSearchBar *)&v11 setTintColor:colorCopy];
  [(TUIUIKitSearchBar *)self setBarTintColor:colorCopy, v11.receiver, v11.super_class];
  searchField = [(TUIUIKitSearchBar *)self searchField];
  _clearButton = [searchField _clearButton];
  [_clearButton setTintColor:colorCopy];

  searchField2 = [(TUIUIKitSearchBar *)self searchField];
  _clearButton2 = [searchField2 _clearButton];
  v9 = [_clearButton2 imageForState:0];

  v10 = [v9 imageWithRenderingMode:2];

  [(TUIUIKitSearchBar *)self setImage:v10 forSearchBarIcon:1 state:0];
}

- (void)setCancelText:(id)text
{
  textCopy = text;
  [(TUIUIKitSearchBar *)self _setCancelButtonText:textCopy];
  cancelButton = [(TUIUIKitSearchBar *)self cancelButton];
  [cancelButton setTitle:textCopy forState:0];

  cancelButton2 = [(TUIUIKitSearchBar *)self cancelButton];
  [cancelButton2 sizeToFit];

  text = [(TUIUIKitSearchBar *)self text];
  v8 = [text length];

  if (v8)
  {
    cancelButton3 = [(TUIUIKitSearchBar *)self cancelButton];
    [cancelButton3 setEnabled:1];
  }
}

@end