@interface BCMetrics
+ (id)_manager;
+ (id)_templateFactory;
+ (void)registerNamedColorsWithTemplateManger:(id)manger;
- (BCMetrics)initWithObserver:(id)observer;
- (BOOL)compactWidth;
- (BOOL)updateIfNeededWithEnvironment:(id)environment;
- (BOOL)updateIfNeededWithViewController:(id)controller;
- (id)metricsTemplateURL;
@end

@implementation BCMetrics

+ (id)_manager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DE90;
  block[3] = &unk_2C7CA8;
  block[4] = self;
  if (qword_3420F0 != -1)
  {
    dispatch_once(&qword_3420F0, block);
  }

  v2 = qword_3420E8;

  return v2;
}

+ (void)registerNamedColorsWithTemplateManger:(id)manger
{
  mangerCopy = manger;
  colorRegistry = [mangerCopy colorRegistry];
  v5 = +[UIColor bc_booksBackground];
  [colorRegistry registerColor:v5 withName:@"booksBackground"];

  colorRegistry2 = [mangerCopy colorRegistry];
  v7 = +[UIColor bc_booksSecondaryBackground];
  [colorRegistry2 registerColor:v7 withName:@"booksSecondaryBackground"];

  colorRegistry3 = [mangerCopy colorRegistry];
  v9 = +[UIColor bc_booksTertiaryBackground];
  [colorRegistry3 registerColor:v9 withName:@"booksTertiaryBackground"];

  colorRegistry4 = [mangerCopy colorRegistry];
  v11 = +[UIColor bc_booksGroupedBackground];
  [colorRegistry4 registerColor:v11 withName:@"booksGroupedBackground"];

  colorRegistry5 = [mangerCopy colorRegistry];
  v13 = +[UIColor bc_booksSecondaryGroupedBackground];
  [colorRegistry5 registerColor:v13 withName:@"booksSecondaryGroupedBackground"];

  colorRegistry6 = [mangerCopy colorRegistry];
  v15 = +[UIColor bc_booksWidgetBackgroundOverlayTop];
  [colorRegistry6 registerColor:v15 withName:@"booksWidgetBackgroundOverlayTop"];

  colorRegistry7 = [mangerCopy colorRegistry];
  v17 = +[UIColor bc_booksWidgetBackgroundOverlayBottom];
  [colorRegistry7 registerColor:v17 withName:@"booksWidgetBackgroundOverlayBottom"];

  colorRegistry8 = [mangerCopy colorRegistry];
  v19 = +[UIColor bc_booksBrickBackground];
  [colorRegistry8 registerColor:v19 withName:@"booksBrickBackground"];

  colorRegistry9 = [mangerCopy colorRegistry];
  v21 = +[UIColor bc_booksKeyColor];
  [colorRegistry9 registerColor:v21 withName:@"booksKeyColor"];

  colorRegistry10 = [mangerCopy colorRegistry];
  v23 = +[UIColor bc_booksLabelColor];
  [colorRegistry10 registerColor:v23 withName:@"booksLabelColor"];

  colorRegistry11 = [mangerCopy colorRegistry];
  v25 = +[UIColor bc_booksSecondaryLabelColor];
  [colorRegistry11 registerColor:v25 withName:@"booksSecondaryLabelColor"];

  colorRegistry12 = [mangerCopy colorRegistry];
  v27 = +[UIColor bc_booksTertiaryLabelColor];
  [colorRegistry12 registerColor:v27 withName:@"booksTertiaryLabelColor"];

  colorRegistry13 = [mangerCopy colorRegistry];
  v29 = +[UIColor bc_booksQuaternaryLabelColor];
  [colorRegistry13 registerColor:v29 withName:@"booksQuaternaryLabelColor"];

  colorRegistry14 = [mangerCopy colorRegistry];
  v31 = +[UIColor bc_booksRed];
  [colorRegistry14 registerColor:v31 withName:@"booksRed"];

  colorRegistry15 = [mangerCopy colorRegistry];
  v33 = +[UIColor bc_booksOrange];
  [colorRegistry15 registerColor:v33 withName:@"booksOrange"];

  colorRegistry16 = [mangerCopy colorRegistry];
  v35 = +[UIColor bc_booksGreen];
  [colorRegistry16 registerColor:v35 withName:@"booksGreen"];

  colorRegistry17 = [mangerCopy colorRegistry];
  v37 = +[UIColor bc_booksCyan];
  [colorRegistry17 registerColor:v37 withName:@"booksCyan"];

  colorRegistry18 = [mangerCopy colorRegistry];
  v39 = +[UIColor bc_booksBlue];
  [colorRegistry18 registerColor:v39 withName:@"booksBlue"];

  colorRegistry19 = [mangerCopy colorRegistry];
  v41 = +[UIColor bc_booksPurple];
  [colorRegistry19 registerColor:v41 withName:@"booksPurple"];

  colorRegistry20 = [mangerCopy colorRegistry];
  v43 = +[UIColor bc_booksMagenta];
  [colorRegistry20 registerColor:v43 withName:@"booksMagenta"];

  colorRegistry21 = [mangerCopy colorRegistry];
  v45 = +[UIColor bc_booksGray];
  [colorRegistry21 registerColor:v45 withName:@"booksGray"];

  colorRegistry22 = [mangerCopy colorRegistry];
  v47 = +[UIColor bc_booksBlack];
  [colorRegistry22 registerColor:v47 withName:@"booksBlack"];

  colorRegistry23 = [mangerCopy colorRegistry];
  v49 = +[UIColor bc_booksWhite];
  [colorRegistry23 registerColor:v49 withName:@"booksWhite"];

  colorRegistry24 = [mangerCopy colorRegistry];
  v51 = +[UIColor bc_booksNestedIconGlyphColor];
  [colorRegistry24 registerColor:v51 withName:@"booksNestedIconGlyphColor"];

  colorRegistry25 = [mangerCopy colorRegistry];
  v53 = +[UIColor bc_booksChevronColor];
  [colorRegistry25 registerColor:v53 withName:@"booksChevronColor"];

  colorRegistry26 = [mangerCopy colorRegistry];
  v55 = +[UIColor bc_booksIconBackgroundColor];
  [colorRegistry26 registerColor:v55 withName:@"booksIconBackgroundColor"];

  colorRegistry27 = [mangerCopy colorRegistry];
  v57 = +[UIColor bc_booksSecondaryIconBackgroundColor];
  [colorRegistry27 registerColor:v57 withName:@"booksSecondaryIconBackgroundColor"];

  colorRegistry28 = [mangerCopy colorRegistry];
  v59 = +[UIColor bc_booksSeparatorColor];
  [colorRegistry28 registerColor:v59 withName:@"booksSeparatorColor"];

  colorRegistry29 = [mangerCopy colorRegistry];

  v60 = +[UIColor bc_booksAXSeparatorColor];
  [colorRegistry29 registerColor:v60 withName:@"booksAXSeparatorColor"];
}

+ (id)_templateFactory
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E6D0;
  block[3] = &unk_2C7CA8;
  block[4] = self;
  if (qword_342100 != -1)
  {
    dispatch_once(&qword_342100, block);
  }

  v2 = qword_3420F8;

  return v2;
}

- (BCMetrics)initWithObserver:(id)observer
{
  observerCopy = observer;
  v12.receiver = self;
  v12.super_class = BCMetrics;
  v5 = [(BCMetrics *)&v12 init];
  if (v5)
  {
    v6 = [BCLayoutMetrics alloc];
    _templateFactory = [objc_opt_class() _templateFactory];
    _manager = [objc_opt_class() _manager];
    v9 = [(BCLayoutMetrics *)v6 initWithObserver:observerCopy factory:_templateFactory manager:_manager delegate:v5];
    metrics = v5->_metrics;
    v5->_metrics = v9;
  }

  return v5;
}

- (BOOL)compactWidth
{
  metrics = [(BCMetrics *)self metrics];
  compactWidth = [metrics compactWidth];

  return compactWidth;
}

- (BOOL)updateIfNeededWithEnvironment:(id)environment
{
  environmentCopy = environment;
  metrics = [(BCMetrics *)self metrics];
  v6 = [metrics updateIfNeededWithEnvironment:environmentCopy];

  return v6;
}

- (BOOL)updateIfNeededWithViewController:(id)controller
{
  controllerCopy = controller;
  viewIfLoaded = [controllerCopy viewIfLoaded];
  traitCollection = [viewIfLoaded traitCollection];
  window = [viewIfLoaded window];
  v8 = window;
  LOBYTE(v9) = 0;
  if (viewIfLoaded && traitCollection && window)
  {
    v10 = [TUIEnvironment alloc];
    [viewIfLoaded bounds];
    v12 = v11;
    v14 = v13;
    [viewIfLoaded safeAreaInsets];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [v8 bounds];
    v25 = [v10 initWithTraitCollection:traitCollection viewController:controllerCopy viewSize:v12 viewSafeAreaInsets:v14 windowSize:{v16, v18, v20, v22, v23, v24}];
    metrics = [(BCMetrics *)self metrics];
    v9 = [metrics updateIfNeededWithEnvironment:v25];

    if (v9)
    {
      [viewIfLoaded setNeedsLayout];
    }
  }

  return v9;
}

- (id)metricsTemplateURL
{
  v2 = objc_opt_class();

  return [v2 _metricsTemplateURL];
}

@end