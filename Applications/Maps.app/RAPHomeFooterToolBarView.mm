@interface RAPHomeFooterToolBarView
- (RAPHomeFooterToolBarView)initWithFrame:(CGRect)a3;
- (void)_refreshToolbarItems;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)layoutSubviews;
- (void)tapCreateButton;
@end

@implementation RAPHomeFooterToolBarView

- (void)tapCreateButton
{
  v3 = [(RAPHomeFooterToolBarView *)self delegate];
  [v3 tappedMenuForRAPHomeFooterToolBarView:self];
}

- (void)_refreshToolbarItems
{
  if (!self->_createButton)
  {
    v3 = +[UIButtonConfiguration plainButtonConfiguration];
    [v3 setImagePadding:4.0];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[Reports] Report a New Issue" value:@"localized string not found" table:0];
    [v3 setTitle:v5];

    v6 = [UIImage systemImageNamed:@"square.and.pencil"];
    [v3 setImage:v6];

    v7 = [UIButton buttonWithConfiguration:v3 primaryAction:0];
    [(UIButton *)v7 setPreferredMenuElementOrder:2];
    [(UIButton *)v7 setShowsMenuAsPrimaryAction:1];
    createButton = self->_createButton;
    self->_createButton = v7;
  }

  v9 = [(RAPHomeFooterToolBarView *)self delegate];
  v10 = [v9 menuForRAPHomeFooterToolBarView:self];
  [(UIButton *)self->_createButton setMenu:v10];

  [(UIButton *)self->_createButton addTarget:self action:"tapCreateButton" forControlEvents:0x4000];
  v11 = [[UIBarButtonItem alloc] initWithCustomView:self->_createButton];
  v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v14[0] = v12;
  v14[1] = v11;
  v14[2] = v12;
  v13 = [NSArray arrayWithObjects:v14 count:3];
  [(UIToolbar *)self->_toolBar setItems:v13];
}

- (void)_setupConstraints
{
  v15 = [(UIToolbar *)self->_toolBar topAnchor];
  v14 = [(RAPHomeFooterToolBarView *)self topAnchor];
  v13 = [v15 constraintEqualToAnchor:v14];
  v16[0] = v13;
  v3 = [(UIToolbar *)self->_toolBar bottomAnchor];
  v4 = [(RAPHomeFooterToolBarView *)self bottomAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v16[1] = v5;
  v6 = [(UIToolbar *)self->_toolBar leadingAnchor];
  v7 = [(RAPHomeFooterToolBarView *)self leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v16[2] = v8;
  v9 = [(UIToolbar *)self->_toolBar trailingAnchor];
  v10 = [(RAPHomeFooterToolBarView *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v16[3] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupSubviews
{
  v3 = [[UIToolbar alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  toolBar = self->_toolBar;
  self->_toolBar = v3;

  v5 = objc_alloc_init(UIToolbarAppearance);
  [v5 setBackgroundEffect:0];
  [(UIToolbar *)self->_toolBar setStandardAppearance:v5];
  [(UIToolbar *)self->_toolBar setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIToolbar *)self->_toolBar setAccessibilityIdentifier:@"RAPHomeFooterToolBar"];
  [(RAPHomeFooterToolBarView *)self addSubview:self->_toolBar];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = RAPHomeFooterToolBarView;
  [(RAPHomeFooterToolBarView *)&v3 layoutSubviews];
  [(RAPHomeFooterToolBarView *)self _refreshToolbarItems];
}

- (RAPHomeFooterToolBarView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RAPHomeFooterToolBarView;
  v3 = [(RAPHomeFooterToolBarView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RAPHomeFooterToolBarView *)v3 _setupSubviews];
    [(RAPHomeFooterToolBarView *)v4 _setupConstraints];
    [(RAPHomeFooterToolBarView *)v4 _refreshToolbarItems];
  }

  return v4;
}

@end