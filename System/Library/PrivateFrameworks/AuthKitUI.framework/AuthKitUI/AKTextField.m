@interface AKTextField
- (AKTextField)initWithCoder:(id)a3;
- (AKTextField)initWithFrame:(CGRect)a3;
- (id)_fieldTextColor;
- (id)_setupBackgroundViewConstriants;
- (id)backgroundImage;
- (id)cachedImageUsingBlock:(id)a3;
- (void)_commonInit;
- (void)_drawBackgroundForPathRect:(CGRect)a3 roundedCorners:(unint64_t)a4 cornerRadius:(double)a5 pathSegments:(int)a6;
- (void)_setupInlineEntryStyleViews;
- (void)_setupLabelAndFieldStyles;
- (void)_updateFonts:(id)a3;
- (void)dealloc;
- (void)drawFillForPathRect:(CGRect)a3 roundedCorners:(unint64_t)a4 cornerRadius:(double)a5;
- (void)drawStrokeForPathRect:(CGRect)a3 roundedCorners:(unint64_t)a4 cornerRadius:(double)a5 pathSegments:(int)a6;
- (void)setEnabled:(BOOL)a3;
- (void)setFieldBackgroundColor:(id)a3;
- (void)setRowIdentifier:(int64_t)a3;
@end

@implementation AKTextField

- (AKTextField)initWithFrame:(CGRect)a3
{
  v9 = a3;
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKTextField;
  v5 = [(AKTextField *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = v5;
  objc_storeStrong(&v8, v5);
  if (v5)
  {
    [(AKTextField *)v8 _commonInit];
  }

  v4 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  return v4;
}

- (AKTextField)initWithCoder:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKTextField;
  v6 = [(AKTextField *)&v7 initWithCoder:location[0]];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    [(AKTextField *)v9 _commonInit];
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:v6 name:*MEMORY[0x277D76810] object:0];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = AKTextField;
  [(AKTextField *)&v4 dealloc];
}

- (void)_commonInit
{
  [(AKTextField *)self _setupInlineEntryStyleViews];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:self selector:sel__updateFonts_ name:*MEMORY[0x277D76810] object:0];
  MEMORY[0x277D82BD8](v2);
}

- (void)setEnabled:(BOOL)a3
{
  [(UITextField *)self->_entryField setEnabled:a3];
  v3 = [(AKTextField *)self _fieldTextColor];
  [(UITextField *)self->_entryField setTextColor:?];
  MEMORY[0x277D82BD8](v3);
}

- (id)_setupBackgroundViewConstriants
{
  v58 = self;
  v57[1] = a2;
  v57[0] = [MEMORY[0x277CBEB18] array];
  v44 = v58;
  v43 = v54;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __46__AKTextField__setupBackgroundViewConstriants__block_invoke;
  v54[3] = &unk_2784A6B60;
  v55 = MEMORY[0x277D82BE0](v58);
  v56 = [(AKTextField *)v44 cachedImageUsingBlock:v54];
  if ([(AKTextField *)v58 usesVibrancy])
  {
    v2 = [v56 imageWithRenderingMode:2];
    v3 = v56;
    v56 = v2;
    MEMORY[0x277D82BD8](v3);
  }

  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v41 = [v4 initWithImage:v56];
  v42 = 0x27D00C000uLL;
  backgroundImageView = v58->_backgroundImageView;
  v58->_backgroundImageView = v41;
  MEMORY[0x277D82BD8](backgroundImageView);
  location = MEMORY[0x277D82BE0](v41);
  [*(&v58->super.super.super.isa + *(v42 + 1148)) setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([(AKTextField *)v58 usesVibrancy])
  {
    v29 = MEMORY[0x277D75210];
    v39 = &v52;
    v52 = [MEMORY[0x277D75210] effectWithStyle:{-[AKTextField blurEffectStyle](v58, "blurEffectStyle")}];
    v38 = &v51;
    v51 = [MEMORY[0x277D75D00] effectForBlurEffect:v52];
    v6 = objc_alloc(MEMORY[0x277D75D68]);
    v7 = [v6 initWithEffect:v51];
    v34 = 0x27D00C000uLL;
    visualEffectView = v58->_visualEffectView;
    v58->_visualEffectView = v7;
    *&v9 = MEMORY[0x277D82BD8](visualEffectView).n128_u64[0];
    [*(&v58->super.super.super.isa + *(v34 + 1152)) setTranslatesAutoresizingMaskIntoConstraints:{0, v9}];
    v30 = [*(&v58->super.super.super.isa + *(v34 + 1152)) contentView];
    v31 = 0x27D00C000uLL;
    [v30 addSubview:v58->_backgroundImageView];
    *&v10 = MEMORY[0x277D82BD8](v30).n128_u64[0];
    v11 = v58->_backgroundImageView;
    obj = 0;
    v12 = _NSDictionaryOfVariableBindings(&cfstr_Backgroundimag.isa, v11, v10, 0);
    v37 = &v50;
    v50 = v12;
    v32 = 0x277CCA000uLL;
    v33 = 0;
    v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_backgroundImageView]|" options:? metrics:? views:?];
    v36 = &v49;
    v49 = v13;
    v14 = [*(v32 + 2768) constraintsWithVisualFormat:@"H:|[_backgroundImageView]|" options:v33 metrics:obj views:v50];
    v35 = &v48;
    v48 = v14;
    [v57[0] addObjectsFromArray:v49];
    [v57[0] addObjectsFromArray:v48];
    objc_storeStrong(&location, *(&v58->super.super.super.isa + *(v34 + 1152)));
    objc_storeStrong(v35, obj);
    objc_storeStrong(v36, obj);
    objc_storeStrong(v37, obj);
    objc_storeStrong(v38, obj);
    objc_storeStrong(v39, obj);
  }

  p_location = &location;
  v21 = 0;
  [(AKTextField *)v58 insertSubview:location atIndex:?];
  v27 = 0;
  v15 = _NSDictionaryOfVariableBindings(&cfstr_Backgroundview.isa, location, 0);
  v24 = &v47;
  v47 = v15;
  v20 = 0x277CCA000uLL;
  v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[backgroundView]|" options:v21 metrics:v27 views:v15];
  v23 = &v46;
  v46 = v16;
  v17 = [*(v20 + 2768) constraintsWithVisualFormat:@"H:|[backgroundView]|" options:v21 metrics:v27 views:v47];
  v22 = &v45;
  v45 = v17;
  v26 = v57;
  [v57[0] addObjectsFromArray:v46];
  [v57[0] addObjectsFromArray:v45];
  v28 = MEMORY[0x277D82BE0](v57[0]);
  objc_storeStrong(v22, v27);
  objc_storeStrong(v23, v27);
  objc_storeStrong(v24, v27);
  objc_storeStrong(p_location, v27);
  objc_storeStrong(&v56, v27);
  objc_storeStrong(&v55, v27);
  objc_storeStrong(v26, v27);
  v18 = v28;

  return v18;
}

- (void)_updateFonts:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKTextField *)v4 _setupLabelAndFieldStyles];
  [(AKTextField *)v4 setNeedsUpdateConstraints];
  objc_storeStrong(location, 0);
}

- (id)_fieldTextColor
{
  v4 = [(AKTextField *)self entryFieldTextColor];
  v5 = 0;
  if (v4)
  {
    v2 = MEMORY[0x277D82BE0](v4);
  }

  else
  {
    v6 = [MEMORY[0x277D75348] labelColor];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](v6);
  }

  v7 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v4);

  return v7;
}

- (void)_setupLabelAndFieldStyles
{
  v11 = self;
  v10[1] = a2;
  v10[0] = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:0 options:2];
  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v10[0] size:0.0];
  v4 = [(AKTextField *)v11 _fieldTextColor];
  [(UITextField *)v11->_entryField setTextColor:?];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  [(UITextField *)v11->_entryField setFont:v9, v2];
  v5 = v9;
  v6 = [(UITextField *)v11->_entryField _placeholderLabel];
  [v6 setFont:v5];
  v8 = [MEMORY[0x277D75348] placeholderTextColor];
  v7 = [(UITextField *)v11->_entryField _placeholderLabel];
  [v7 setTextColor:v8];
  MEMORY[0x277D82BD8](v7);
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [(UITextField *)v11->_entryField setKeyboardAppearance:0, v3];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
}

- (void)_setupInlineEntryStyleViews
{
  v30[3] = *MEMORY[0x277D85DE8];
  v29 = self;
  v28[1] = a2;
  [(UIImageView *)self->_backgroundImageView removeFromSuperview];
  objc_storeStrong(&v29->_backgroundImageView, 0);
  [(UIVisualEffectView *)v29->_visualEffectView removeFromSuperview];
  objc_storeStrong(&v29->_visualEffectView, 0);
  [(UITextField *)v29->_entryField removeFromSuperview];
  if (v29->_constraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:v29->_constraints];
  }

  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  constraints = v29->_constraints;
  v29->_constraints = v2;
  MEMORY[0x277D82BD8](constraints);
  v28[0] = MEMORY[0x277D82BE0](v29);
  [v28[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v28[0] setContentCompressionResistancePriority:? forAxis:?];
  LODWORD(v4) = 1144750080;
  [v28[0] setContentHuggingPriority:1 forAxis:v4];
  v27 = [MEMORY[0x277CCAAD0] constraintWithItem:v28[0] attribute:8 relatedBy:? toItem:? attribute:? multiplier:? constant:?];
  LODWORD(v5) = 1148846080;
  [v27 setPriority:v5];
  [(NSMutableArray *)v29->_constraints addObject:v27];
  v26 = [MEMORY[0x277CCAAD0] constraintWithItem:v28[0] attribute:7 relatedBy:0 toItem:0 attribute:1.0 multiplier:288.0 constant:?];
  LODWORD(v6) = 1148846080;
  [v26 setPriority:v6];
  [(NSMutableArray *)v29->_constraints addObject:v26];
  if (!v29->_entryField)
  {
    v7 = objc_alloc(MEMORY[0x277D75BB8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    entryField = v29->_entryField;
    v29->_entryField = v8;
    [(UITextField *)v29->_entryField setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](entryField).n128_f64[0]];
    LODWORD(v10) = 1132068864;
    [(UITextField *)v29->_entryField setContentHuggingPriority:0 forAxis:v10];
  }

  [v28[0] addSubview:{v29->_entryField, 0x27D00C000uLL}];
  [(AKTextField *)v29 _setupLabelAndFieldStyles];
  v22 = [*(&v29->super.super.super.isa + *(v13 + 1144)) leadingAnchor];
  v21 = [(AKTextField *)v29 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:16.0 constant:?];
  v30[0] = v20;
  v19 = [*(&v29->super.super.super.isa + *(v13 + 1144)) trailingAnchor];
  v18 = [(AKTextField *)v29 trailingAnchor];
  v17 = [v19 constraintEqualToAnchor:-16.0 constant:?];
  v30[1] = v17;
  v16 = [*(&v29->super.super.super.isa + *(v13 + 1144)) centerYAnchor];
  v15 = [(AKTextField *)v29 centerYAnchor];
  v14 = [v16 constraintEqualToAnchor:?];
  v30[2] = v14;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  *&v11 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  [(NSMutableArray *)v29->_constraints addObjectsFromArray:v25, v11];
  v23 = v29->_constraints;
  v24 = [(AKTextField *)v29 _setupBackgroundViewConstriants];
  [(NSMutableArray *)v23 addObjectsFromArray:?];
  *&v12 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v29->_constraints, v12}];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v28, 0);
  *MEMORY[0x277D85DE8];
}

- (void)setFieldBackgroundColor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_fieldBackgroundColor, location[0]);
  [(AKTextField *)v4 _commonInit];
  objc_storeStrong(location, 0);
}

- (void)setRowIdentifier:(int64_t)a3
{
  self->_rowIdentifier = a3;
  [(UIImageView *)self->_backgroundImageView removeFromSuperview];
  objc_storeStrong(&self->_backgroundImageView, 0);
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(AKTextField *)self _setupBackgroundViewConstriants];
  [v3 activateConstraints:?];
  MEMORY[0x277D82BD8](v4);
}

- (id)backgroundImage
{
  v50 = self;
  v49 = a2;
  v47 = CGCeiling_0(11.0 * 1.528665);
  v46 = 2.0 * v47 + 1.0;
  CGRectMake_2();
  v3 = v2;
  v52.width = v4;
  *&v44 = v3;
  *(&v44 + 1) = v5;
  *&v45 = v4;
  *(&v45 + 1) = v6;
  v52.height = v6;
  UIGraphicsBeginImageContextWithOptions(v52, 0, 0.0);
  v48 = 11.0 - 0.5;
  v43 = 16;
  v42 = 0;
  rowIdentifier = v50->_rowIdentifier;
  if (rowIdentifier)
  {
    switch(rowIdentifier)
    {
      case 1:
        v43 = 16;
        v42 = 12;
        UIRectInset();
        *&v34 = v19;
        *(&v34 + 1) = v20;
        *&v35 = v21;
        *(&v35 + 1) = v22;
        v44 = v34;
        v45 = v35;
        break;
      case 2:
        v43 = 13;
        UIRectInset();
        *&v36 = v15;
        *(&v36 + 1) = v16;
        *&v37 = v17;
        *(&v37 + 1) = v18;
        v44 = v36;
        v45 = v37;
        break;
      case 3:
        v43 = 16;
        v42 = -1;
        UIRectInset();
        *&v40 = v7;
        *(&v40 + 1) = v8;
        *&v41 = v9;
        *(&v41 + 1) = v10;
        v44 = v40;
        v45 = v41;
        break;
    }
  }

  else
  {
    v43 = 13;
    v42 = 3;
    UIRectInset();
    *&v38 = v11;
    *(&v38 + 1) = v12;
    *&v39 = v13;
    *(&v39 + 1) = v14;
    v44 = v38;
    v45 = v39;
  }

  [(AKTextField *)v50 _drawBackgroundForPathRect:v42 roundedCorners:v43 cornerRadius:v44 pathSegments:v45, v48];
  v33 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v30 = v33;
  UIEdgeInsetsMake_2();
  v27 = [(UIImage *)v30 resizableImageWithCapInsets:v23, v24, v25, v26];
  v28 = v33;
  v33 = v27;
  MEMORY[0x277D82BD8](v28);
  v31 = MEMORY[0x277D82BE0](v33);
  objc_storeStrong(&v33, 0);

  return v31;
}

- (void)_drawBackgroundForPathRect:(CGRect)a3 roundedCorners:(unint64_t)a4 cornerRadius:(double)a5 pathSegments:(int)a6
{
  if (self->_blurEffectStyle == 4 && self->_fieldBackgroundColor)
  {
    if (self->_usesVibrancy)
    {
      [(AKTextField *)self drawFillForPathRect:a4 roundedCorners:a3.origin.x cornerRadius:a3.origin.y, a3.size.width, a3.size.height, a5];
    }

    [(AKTextField *)self drawStrokeForPathRect:a4 roundedCorners:a6 cornerRadius:a3.origin.x pathSegments:a3.origin.y, a3.size.width, a3.size.height, a5];
  }

  else
  {
    [(AKTextField *)self drawStrokeForPathRect:a4 roundedCorners:a6 cornerRadius:a3.origin.x pathSegments:a3.origin.y, a3.size.width, a3.size.height, a5];
    if (self->_usesVibrancy)
    {
      [(AKTextField *)self drawFillForPathRect:a4 roundedCorners:a3.origin.x cornerRadius:a3.origin.y, a3.size.width, a3.size.height, a5];
    }
  }
}

- (void)drawStrokeForPathRect:(CGRect)a3 roundedCorners:(unint64_t)a4 cornerRadius:(double)a5 pathSegments:(int)a6
{
  v17 = a3;
  v16 = self;
  v15 = a2;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  v11 = [MEMORY[0x277D75208] _roundedRectBezierPath:a4 withRoundedCorners:a6 cornerRadius:0 segments:a3.origin.x legacyCorners:{a3.origin.y, a3.size.width, a3.size.height, a5}];
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  [v11 setLineWidth:1.5 / v6];
  *&v7 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  [v11 setUsesEvenOddFillRule:{1, v7}];
  v10 = [MEMORY[0x277D75348] opaqueSeparatorColor];
  [v10 set];
  *&v8 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  [v11 stroke];
  objc_storeStrong(&v11, 0);
}

- (void)drawFillForPathRect:(CGRect)a3 roundedCorners:(unint64_t)a4 cornerRadius:(double)a5
{
  v15 = a3;
  v14 = self;
  v13[3] = a2;
  v13[2] = a4;
  v13[1] = *&a5;
  v13[0] = [MEMORY[0x277D75208] _roundedRectBezierPath:a4 withRoundedCorners:16 cornerRadius:0 segments:a3.origin.x legacyCorners:{a3.origin.y, a3.size.width, a3.size.height, a5}];
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  [v13[0] setLineWidth:1.0 / v5];
  [v13[0] setUsesEvenOddFillRule:{1, MEMORY[0x277D82BD8](v8).n128_f64[0]}];
  fieldBackgroundColor = v14->_fieldBackgroundColor;
  v10 = 0;
  if (fieldBackgroundColor)
  {
    v6 = MEMORY[0x277D82BE0](fieldBackgroundColor);
  }

  else
  {
    v11 = [MEMORY[0x277D75348] tertiarySystemFillColor];
    v10 = 1;
    v6 = MEMORY[0x277D82BE0](v11);
  }

  v12 = v6;
  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  [v12 set];
  [v13[0] fill];
  objc_storeStrong(location, 0);
  objc_storeStrong(v13, 0);
}

- (id)cachedImageUsingBlock:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = &cachedImageUsingBlock__onceToken;
  v18 = 0;
  objc_storeStrong(&v18, &__block_literal_global_3);
  if (*v19 != -1)
  {
    dispatch_once(v19, v18);
  }

  objc_storeStrong(&v18, 0);
  v11 = MEMORY[0x277CCACA8];
  rowIdentifier = v17->_rowIdentifier;
  blurEffectStyle = v17->_blurEffectStyle;
  usesVibrancy = v17->_usesVibrancy;
  v13 = [(AKTextField *)v17 traitCollection];
  v10 = [v13 userInterfaceStyle];
  v12 = [(UIColor *)v17->_fieldBackgroundColor description];
  v15 = [v11 stringWithFormat:@"%llu-%llu-%llu-%llu-%@", rowIdentifier, blurEffectStyle, usesVibrancy, v10, v12];
  MEMORY[0x277D82BD8](v12);
  v14 = [cachedImageUsingBlock__imageCache objectForKeyedSubscript:{v15, MEMORY[0x277D82BD8](v13).n128_f64[0]}];
  v3 = MEMORY[0x277D82BD8](v14);
  if (!v14)
  {
    v6 = (*(location[0] + 2))(location[0], v17->_rowIdentifier, v17->_blurEffectStyle, v3);
    [cachedImageUsingBlock__imageCache setObject:? forKeyedSubscript:?];
    v3.n128_u64[0] = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  v5 = [cachedImageUsingBlock__imageCache objectForKeyedSubscript:{v15, v3.n128_f64[0]}];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v5;
}

void __37__AKTextField_cachedImageUsingBlock___block_invoke(NSObject *a1)
{
  source[2] = a1;
  source[1] = a1;
  v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = cachedImageUsingBlock__imageCache;
  cachedImageUsingBlock__imageCache = v1;
  MEMORY[0x277D82BD8](v2);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v5 = v4;
  source[0] = dispatch_source_create(MEMORY[0x277D85D18], 0, 4uLL, v5);
  MEMORY[0x277D82BD8](v5);
  dispatch_source_set_event_handler(source[0], &__block_literal_global_39);
  dispatch_resume(source[0]);
  objc_storeStrong(source, 0);
}

@end