@interface AKTextField
- (AKTextField)initWithCoder:(id)coder;
- (AKTextField)initWithFrame:(CGRect)frame;
- (id)_fieldTextColor;
- (id)_setupBackgroundViewConstriants;
- (id)backgroundImage;
- (id)cachedImageUsingBlock:(id)block;
- (void)_commonInit;
- (void)_drawBackgroundForPathRect:(CGRect)rect roundedCorners:(unint64_t)corners cornerRadius:(double)radius pathSegments:(int)segments;
- (void)_setupInlineEntryStyleViews;
- (void)_setupLabelAndFieldStyles;
- (void)_updateFonts:(id)fonts;
- (void)dealloc;
- (void)drawFillForPathRect:(CGRect)rect roundedCorners:(unint64_t)corners cornerRadius:(double)radius;
- (void)drawStrokeForPathRect:(CGRect)rect roundedCorners:(unint64_t)corners cornerRadius:(double)radius pathSegments:(int)segments;
- (void)setEnabled:(BOOL)enabled;
- (void)setFieldBackgroundColor:(id)color;
- (void)setRowIdentifier:(int64_t)identifier;
@end

@implementation AKTextField

- (AKTextField)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKTextField;
  v5 = [(AKTextField *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (AKTextField)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKTextField;
  v6 = [(AKTextField *)&v7 initWithCoder:location[0]];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(AKTextField *)selfCopy _commonInit];
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277D76810] object:0];
  *&v2 = MEMORY[0x277D82BD8](defaultCenter).n128_u64[0];
  v4.receiver = selfCopy;
  v4.super_class = AKTextField;
  [(AKTextField *)&v4 dealloc];
}

- (void)_commonInit
{
  [(AKTextField *)self _setupInlineEntryStyleViews];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateFonts_ name:*MEMORY[0x277D76810] object:0];
  MEMORY[0x277D82BD8](defaultCenter);
}

- (void)setEnabled:(BOOL)enabled
{
  [(UITextField *)self->_entryField setEnabled:enabled];
  _fieldTextColor = [(AKTextField *)self _fieldTextColor];
  [(UITextField *)self->_entryField setTextColor:?];
  MEMORY[0x277D82BD8](_fieldTextColor);
}

- (id)_setupBackgroundViewConstriants
{
  selfCopy = self;
  v57[1] = a2;
  v57[0] = [MEMORY[0x277CBEB18] array];
  v44 = selfCopy;
  v43 = v54;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __46__AKTextField__setupBackgroundViewConstriants__block_invoke;
  v54[3] = &unk_2784A6B60;
  v55 = MEMORY[0x277D82BE0](selfCopy);
  v56 = [(AKTextField *)v44 cachedImageUsingBlock:v54];
  if ([(AKTextField *)selfCopy usesVibrancy])
  {
    v2 = [v56 imageWithRenderingMode:2];
    v3 = v56;
    v56 = v2;
    MEMORY[0x277D82BD8](v3);
  }

  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v41 = [v4 initWithImage:v56];
  v42 = 0x27D00C000uLL;
  backgroundImageView = selfCopy->_backgroundImageView;
  selfCopy->_backgroundImageView = v41;
  MEMORY[0x277D82BD8](backgroundImageView);
  location = MEMORY[0x277D82BE0](v41);
  [*(&selfCopy->super.super.super.isa + *(v42 + 1148)) setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([(AKTextField *)selfCopy usesVibrancy])
  {
    v29 = MEMORY[0x277D75210];
    v39 = &v52;
    v52 = [MEMORY[0x277D75210] effectWithStyle:{-[AKTextField blurEffectStyle](selfCopy, "blurEffectStyle")}];
    v38 = &v51;
    v51 = [MEMORY[0x277D75D00] effectForBlurEffect:v52];
    v6 = objc_alloc(MEMORY[0x277D75D68]);
    v7 = [v6 initWithEffect:v51];
    v34 = 0x27D00C000uLL;
    visualEffectView = selfCopy->_visualEffectView;
    selfCopy->_visualEffectView = v7;
    *&v9 = MEMORY[0x277D82BD8](visualEffectView).n128_u64[0];
    [*(&selfCopy->super.super.super.isa + *(v34 + 1152)) setTranslatesAutoresizingMaskIntoConstraints:{0, v9}];
    contentView = [*(&selfCopy->super.super.super.isa + *(v34 + 1152)) contentView];
    v31 = 0x27D00C000uLL;
    [contentView addSubview:selfCopy->_backgroundImageView];
    *&v10 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
    v11 = selfCopy->_backgroundImageView;
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
    objc_storeStrong(&location, *(&selfCopy->super.super.super.isa + *(v34 + 1152)));
    objc_storeStrong(v35, obj);
    objc_storeStrong(v36, obj);
    objc_storeStrong(v37, obj);
    objc_storeStrong(v38, obj);
    objc_storeStrong(v39, obj);
  }

  p_location = &location;
  v21 = 0;
  [(AKTextField *)selfCopy insertSubview:location atIndex:?];
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

- (void)_updateFonts:(id)fonts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fonts);
  [(AKTextField *)selfCopy _setupLabelAndFieldStyles];
  [(AKTextField *)selfCopy setNeedsUpdateConstraints];
  objc_storeStrong(location, 0);
}

- (id)_fieldTextColor
{
  entryFieldTextColor = [(AKTextField *)self entryFieldTextColor];
  v5 = 0;
  if (entryFieldTextColor)
  {
    v2 = MEMORY[0x277D82BE0](entryFieldTextColor);
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](labelColor);
  }

  v7 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](labelColor);
  }

  MEMORY[0x277D82BD8](entryFieldTextColor);

  return v7;
}

- (void)_setupLabelAndFieldStyles
{
  selfCopy = self;
  v10[1] = a2;
  v10[0] = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:0 options:2];
  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v10[0] size:0.0];
  _fieldTextColor = [(AKTextField *)selfCopy _fieldTextColor];
  [(UITextField *)selfCopy->_entryField setTextColor:?];
  *&v2 = MEMORY[0x277D82BD8](_fieldTextColor).n128_u64[0];
  [(UITextField *)selfCopy->_entryField setFont:v9, v2];
  v5 = v9;
  _placeholderLabel = [(UITextField *)selfCopy->_entryField _placeholderLabel];
  [_placeholderLabel setFont:v5];
  placeholderTextColor = [MEMORY[0x277D75348] placeholderTextColor];
  _placeholderLabel2 = [(UITextField *)selfCopy->_entryField _placeholderLabel];
  [_placeholderLabel2 setTextColor:placeholderTextColor];
  MEMORY[0x277D82BD8](_placeholderLabel2);
  *&v3 = MEMORY[0x277D82BD8](placeholderTextColor).n128_u64[0];
  [(UITextField *)selfCopy->_entryField setKeyboardAppearance:0, v3];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
}

- (void)_setupInlineEntryStyleViews
{
  v30[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v28[1] = a2;
  [(UIImageView *)self->_backgroundImageView removeFromSuperview];
  objc_storeStrong(&selfCopy->_backgroundImageView, 0);
  [(UIVisualEffectView *)selfCopy->_visualEffectView removeFromSuperview];
  objc_storeStrong(&selfCopy->_visualEffectView, 0);
  [(UITextField *)selfCopy->_entryField removeFromSuperview];
  if (selfCopy->_constraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:selfCopy->_constraints];
  }

  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  constraints = selfCopy->_constraints;
  selfCopy->_constraints = v2;
  MEMORY[0x277D82BD8](constraints);
  v28[0] = MEMORY[0x277D82BE0](selfCopy);
  [v28[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v28[0] setContentCompressionResistancePriority:? forAxis:?];
  LODWORD(v4) = 1144750080;
  [v28[0] setContentHuggingPriority:1 forAxis:v4];
  v27 = [MEMORY[0x277CCAAD0] constraintWithItem:v28[0] attribute:8 relatedBy:? toItem:? attribute:? multiplier:? constant:?];
  LODWORD(v5) = 1148846080;
  [v27 setPriority:v5];
  [(NSMutableArray *)selfCopy->_constraints addObject:v27];
  v26 = [MEMORY[0x277CCAAD0] constraintWithItem:v28[0] attribute:7 relatedBy:0 toItem:0 attribute:1.0 multiplier:288.0 constant:?];
  LODWORD(v6) = 1148846080;
  [v26 setPriority:v6];
  [(NSMutableArray *)selfCopy->_constraints addObject:v26];
  if (!selfCopy->_entryField)
  {
    v7 = objc_alloc(MEMORY[0x277D75BB8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    entryField = selfCopy->_entryField;
    selfCopy->_entryField = v8;
    [(UITextField *)selfCopy->_entryField setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](entryField).n128_f64[0]];
    LODWORD(v10) = 1132068864;
    [(UITextField *)selfCopy->_entryField setContentHuggingPriority:0 forAxis:v10];
  }

  [v28[0] addSubview:{selfCopy->_entryField, 0x27D00C000uLL}];
  [(AKTextField *)selfCopy _setupLabelAndFieldStyles];
  leadingAnchor = [*(&selfCopy->super.super.super.isa + *(v13 + 1144)) leadingAnchor];
  leadingAnchor2 = [(AKTextField *)selfCopy leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:16.0 constant:?];
  v30[0] = v20;
  trailingAnchor = [*(&selfCopy->super.super.super.isa + *(v13 + 1144)) trailingAnchor];
  trailingAnchor2 = [(AKTextField *)selfCopy trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:-16.0 constant:?];
  v30[1] = v17;
  centerYAnchor = [*(&selfCopy->super.super.super.isa + *(v13 + 1144)) centerYAnchor];
  centerYAnchor2 = [(AKTextField *)selfCopy centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:?];
  v30[2] = v14;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](centerYAnchor2);
  MEMORY[0x277D82BD8](centerYAnchor);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](leadingAnchor2);
  *&v11 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
  [(NSMutableArray *)selfCopy->_constraints addObjectsFromArray:v25, v11];
  v23 = selfCopy->_constraints;
  _setupBackgroundViewConstriants = [(AKTextField *)selfCopy _setupBackgroundViewConstriants];
  [(NSMutableArray *)v23 addObjectsFromArray:?];
  *&v12 = MEMORY[0x277D82BD8](_setupBackgroundViewConstriants).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{selfCopy->_constraints, v12}];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v28, 0);
  *MEMORY[0x277D85DE8];
}

- (void)setFieldBackgroundColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  objc_storeStrong(&selfCopy->_fieldBackgroundColor, location[0]);
  [(AKTextField *)selfCopy _commonInit];
  objc_storeStrong(location, 0);
}

- (void)setRowIdentifier:(int64_t)identifier
{
  self->_rowIdentifier = identifier;
  [(UIImageView *)self->_backgroundImageView removeFromSuperview];
  objc_storeStrong(&self->_backgroundImageView, 0);
  v3 = MEMORY[0x277CCAAD0];
  _setupBackgroundViewConstriants = [(AKTextField *)self _setupBackgroundViewConstriants];
  [v3 activateConstraints:?];
  MEMORY[0x277D82BD8](_setupBackgroundViewConstriants);
}

- (id)backgroundImage
{
  selfCopy = self;
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
  rowIdentifier = selfCopy->_rowIdentifier;
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

  [(AKTextField *)selfCopy _drawBackgroundForPathRect:v42 roundedCorners:v43 cornerRadius:v44 pathSegments:v45, v48];
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

- (void)_drawBackgroundForPathRect:(CGRect)rect roundedCorners:(unint64_t)corners cornerRadius:(double)radius pathSegments:(int)segments
{
  if (self->_blurEffectStyle == 4 && self->_fieldBackgroundColor)
  {
    if (self->_usesVibrancy)
    {
      [(AKTextField *)self drawFillForPathRect:corners roundedCorners:rect.origin.x cornerRadius:rect.origin.y, rect.size.width, rect.size.height, radius];
    }

    [(AKTextField *)self drawStrokeForPathRect:corners roundedCorners:segments cornerRadius:rect.origin.x pathSegments:rect.origin.y, rect.size.width, rect.size.height, radius];
  }

  else
  {
    [(AKTextField *)self drawStrokeForPathRect:corners roundedCorners:segments cornerRadius:rect.origin.x pathSegments:rect.origin.y, rect.size.width, rect.size.height, radius];
    if (self->_usesVibrancy)
    {
      [(AKTextField *)self drawFillForPathRect:corners roundedCorners:rect.origin.x cornerRadius:rect.origin.y, rect.size.width, rect.size.height, radius];
    }
  }
}

- (void)drawStrokeForPathRect:(CGRect)rect roundedCorners:(unint64_t)corners cornerRadius:(double)radius pathSegments:(int)segments
{
  rectCopy = rect;
  selfCopy = self;
  v15 = a2;
  cornersCopy = corners;
  radiusCopy = radius;
  segmentsCopy = segments;
  v11 = [MEMORY[0x277D75208] _roundedRectBezierPath:corners withRoundedCorners:segments cornerRadius:0 segments:rect.origin.x legacyCorners:{rect.origin.y, rect.size.width, rect.size.height, radius}];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [v11 setLineWidth:1.5 / v6];
  *&v7 = MEMORY[0x277D82BD8](mainScreen).n128_u64[0];
  [v11 setUsesEvenOddFillRule:{1, v7}];
  opaqueSeparatorColor = [MEMORY[0x277D75348] opaqueSeparatorColor];
  [opaqueSeparatorColor set];
  *&v8 = MEMORY[0x277D82BD8](opaqueSeparatorColor).n128_u64[0];
  [v11 stroke];
  objc_storeStrong(&v11, 0);
}

- (void)drawFillForPathRect:(CGRect)rect roundedCorners:(unint64_t)corners cornerRadius:(double)radius
{
  rectCopy = rect;
  selfCopy = self;
  v13[3] = a2;
  v13[2] = corners;
  v13[1] = *&radius;
  v13[0] = [MEMORY[0x277D75208] _roundedRectBezierPath:corners withRoundedCorners:16 cornerRadius:0 segments:rect.origin.x legacyCorners:{rect.origin.y, rect.size.width, rect.size.height, radius}];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [v13[0] setLineWidth:1.0 / v5];
  [v13[0] setUsesEvenOddFillRule:{1, MEMORY[0x277D82BD8](mainScreen).n128_f64[0]}];
  fieldBackgroundColor = selfCopy->_fieldBackgroundColor;
  v10 = 0;
  if (fieldBackgroundColor)
  {
    v6 = MEMORY[0x277D82BE0](fieldBackgroundColor);
  }

  else
  {
    tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
    v10 = 1;
    v6 = MEMORY[0x277D82BE0](tertiarySystemFillColor);
  }

  v12 = v6;
  if (v10)
  {
    MEMORY[0x277D82BD8](tertiarySystemFillColor);
  }

  [v12 set];
  [v13[0] fill];
  objc_storeStrong(location, 0);
  objc_storeStrong(v13, 0);
}

- (id)cachedImageUsingBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  v19 = &cachedImageUsingBlock__onceToken;
  v18 = 0;
  objc_storeStrong(&v18, &__block_literal_global_3);
  if (*v19 != -1)
  {
    dispatch_once(v19, v18);
  }

  objc_storeStrong(&v18, 0);
  v11 = MEMORY[0x277CCACA8];
  rowIdentifier = selfCopy->_rowIdentifier;
  blurEffectStyle = selfCopy->_blurEffectStyle;
  usesVibrancy = selfCopy->_usesVibrancy;
  traitCollection = [(AKTextField *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v12 = [(UIColor *)selfCopy->_fieldBackgroundColor description];
  v15 = [v11 stringWithFormat:@"%llu-%llu-%llu-%llu-%@", rowIdentifier, blurEffectStyle, usesVibrancy, userInterfaceStyle, v12];
  MEMORY[0x277D82BD8](v12);
  v14 = [cachedImageUsingBlock__imageCache objectForKeyedSubscript:{v15, MEMORY[0x277D82BD8](traitCollection).n128_f64[0]}];
  v3 = MEMORY[0x277D82BD8](v14);
  if (!v14)
  {
    v6 = (*(location[0] + 2))(location[0], selfCopy->_rowIdentifier, selfCopy->_blurEffectStyle, v3);
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