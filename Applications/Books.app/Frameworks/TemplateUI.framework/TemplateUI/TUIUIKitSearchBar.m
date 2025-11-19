@interface TUIUIKitSearchBar
- (TUIUIKitSearchBar)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCancelText:(id)a3;
- (void)setFont:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation TUIUIKitSearchBar

- (TUIUIKitSearchBar)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUIUIKitSearchBar;
  v3 = [(TUIUIKitSearchBar *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v11 = [(TUIUIKitSearchBar *)self searchField];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [UIImage tui_imageNamed:@"search_glyph" inBundle:v12];
  v14 = [v13 imageWithRenderingMode:2];

  v15 = [v11 leftView];
  [v15 setImage:v14];
  [v15 frame];
  v17 = v16;
  [v15 frame];
  v19 = v18;
  [v14 size];
  v21 = v20;
  [v14 size];
  [v15 setFrame:{v17, v19, v21, v22}];
  v23 = [(TUIUIKitSearchBar *)self tintColor];
  [v15 setTintColor:v23];

  [v11 frame];
  x = v39.origin.x;
  Width = CGRectGetWidth(v39);
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  [v11 setFrame:{x, 0.0, Width, CGRectGetHeight(v40)}];
  v26 = [(TUIUIKitSearchBar *)self cancelButton];
  [v26 frame];
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
  v37 = [(TUIUIKitSearchBar *)self cancelButton];
  [v37 setFrame:{v36, v30, v32, v34}];
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(TUIUIKitSearchBar *)self searchField];
  [v5 setFont:v4];
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v5 = [(TUIUIKitSearchBar *)self searchField];
  [v5 setTextColor:v4];
}

- (void)setTintColor:(id)a3
{
  v11.receiver = self;
  v11.super_class = TUIUIKitSearchBar;
  v4 = a3;
  [(TUIUIKitSearchBar *)&v11 setTintColor:v4];
  [(TUIUIKitSearchBar *)self setBarTintColor:v4, v11.receiver, v11.super_class];
  v5 = [(TUIUIKitSearchBar *)self searchField];
  v6 = [v5 _clearButton];
  [v6 setTintColor:v4];

  v7 = [(TUIUIKitSearchBar *)self searchField];
  v8 = [v7 _clearButton];
  v9 = [v8 imageForState:0];

  v10 = [v9 imageWithRenderingMode:2];

  [(TUIUIKitSearchBar *)self setImage:v10 forSearchBarIcon:1 state:0];
}

- (void)setCancelText:(id)a3
{
  v4 = a3;
  [(TUIUIKitSearchBar *)self _setCancelButtonText:v4];
  v5 = [(TUIUIKitSearchBar *)self cancelButton];
  [v5 setTitle:v4 forState:0];

  v6 = [(TUIUIKitSearchBar *)self cancelButton];
  [v6 sizeToFit];

  v7 = [(TUIUIKitSearchBar *)self text];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(TUIUIKitSearchBar *)self cancelButton];
    [v9 setEnabled:1];
  }
}

@end