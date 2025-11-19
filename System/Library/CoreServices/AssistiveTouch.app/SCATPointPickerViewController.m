@interface SCATPointPickerViewController
- (NSString)prompt;
- (SCATPointPickerView)pointPickerView;
- (SCATPointPickerViewController)init;
- (SCATPointPickerViewController)initWithElementManager:(id)a3 menu:(id)a4;
- (int64_t)pickerType;
- (void)dealloc;
- (void)loadView;
- (void)menuWillAppear:(id)a3;
- (void)menuWillDisappear:(id)a3;
- (void)setPrompt:(id)a3;
- (void)setPromptPosition:(unint64_t)a3;
- (void)willPresentWithDisplayContext:(id)a3 animated:(BOOL)a4;
@end

@implementation SCATPointPickerViewController

- (SCATPointPickerViewController)init
{
  _AXAssert();

  return [(SCATPointPickerViewController *)self initWithElementManager:0 menu:0];
}

- (SCATPointPickerViewController)initWithElementManager:(id)a3 menu:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SCATPointPickerViewController;
  v8 = [(SCATElementManagerViewController *)&v11 initWithElementManager:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_menu, a4);
    [(SCATMenu *)v9->_menu registerMenuObserver:v9];
    v9->_currentDisplayID = 1;
  }

  return v9;
}

- (void)loadView
{
  v3 = objc_alloc_init([(SCATPointPickerViewController *)self classForPointPickerView]);
  [v3 setAutoresizingMask:18];
  [(SCATPointPickerViewController *)self setView:v3];
}

- (void)dealloc
{
  [(SCATMenu *)self->_menu unregisterMenuObserver:self];
  v3.receiver = self;
  v3.super_class = SCATPointPickerViewController;
  [(SCATPointPickerViewController *)&v3 dealloc];
}

- (void)willPresentWithDisplayContext:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(SCATPointPickerViewController *)self view];
  [v15 setFrame:{v8, v10, v12, v14}];

  v16 = [v6 _accessibilityDisplayId];
  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  self->_currentDisplayID = v17;
  v18 = [(SCATPointPickerViewController *)self pointPicker];
  [v18 setCurrentDisplayID:v17];

  v19.receiver = self;
  v19.super_class = SCATPointPickerViewController;
  [(SCATElementManagerViewController *)&v19 willPresentWithDisplayContext:v6 animated:v4];
}

- (SCATPointPickerView)pointPickerView
{
  v3 = [(SCATPointPickerViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    _AXAssert();
  }

  return [(SCATPointPickerViewController *)self view];
}

- (void)setPrompt:(id)a3
{
  v4 = a3;
  v5 = [(SCATPointPickerViewController *)self pointPickerView];
  [v5 setPrompt:v4];
}

- (void)setPromptPosition:(unint64_t)a3
{
  v4 = [(SCATPointPickerViewController *)self pointPickerView];
  [v4 setPosition:a3];
}

- (NSString)prompt
{
  v2 = [(SCATPointPickerViewController *)self pointPickerView];
  v3 = [v2 prompt];

  return v3;
}

- (void)menuWillAppear:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000EECF8;
  v3[3] = &unk_1001D3488;
  v3[4] = self;
  [UIView animateWithDuration:v3 animations:0.15];
}

- (void)menuWillDisappear:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000EEDC0;
  v3[3] = &unk_1001D3488;
  v3[4] = self;
  [UIView animateWithDuration:v3 animations:0.15];
}

- (int64_t)pickerType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end