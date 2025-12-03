@interface SCATPointPickerViewController
- (NSString)prompt;
- (SCATPointPickerView)pointPickerView;
- (SCATPointPickerViewController)init;
- (SCATPointPickerViewController)initWithElementManager:(id)manager menu:(id)menu;
- (int64_t)pickerType;
- (void)dealloc;
- (void)loadView;
- (void)menuWillAppear:(id)appear;
- (void)menuWillDisappear:(id)disappear;
- (void)setPrompt:(id)prompt;
- (void)setPromptPosition:(unint64_t)position;
- (void)willPresentWithDisplayContext:(id)context animated:(BOOL)animated;
@end

@implementation SCATPointPickerViewController

- (SCATPointPickerViewController)init
{
  _AXAssert();

  return [(SCATPointPickerViewController *)self initWithElementManager:0 menu:0];
}

- (SCATPointPickerViewController)initWithElementManager:(id)manager menu:(id)menu
{
  menuCopy = menu;
  v11.receiver = self;
  v11.super_class = SCATPointPickerViewController;
  v8 = [(SCATElementManagerViewController *)&v11 initWithElementManager:manager];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_menu, menu);
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

- (void)willPresentWithDisplayContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  contextCopy = context;
  [contextCopy bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view = [(SCATPointPickerViewController *)self view];
  [view setFrame:{v8, v10, v12, v14}];

  _accessibilityDisplayId = [contextCopy _accessibilityDisplayId];
  if (_accessibilityDisplayId <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = _accessibilityDisplayId;
  }

  self->_currentDisplayID = v17;
  pointPicker = [(SCATPointPickerViewController *)self pointPicker];
  [pointPicker setCurrentDisplayID:v17];

  v19.receiver = self;
  v19.super_class = SCATPointPickerViewController;
  [(SCATElementManagerViewController *)&v19 willPresentWithDisplayContext:contextCopy animated:animatedCopy];
}

- (SCATPointPickerView)pointPickerView
{
  view = [(SCATPointPickerViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    _AXAssert();
  }

  return [(SCATPointPickerViewController *)self view];
}

- (void)setPrompt:(id)prompt
{
  promptCopy = prompt;
  pointPickerView = [(SCATPointPickerViewController *)self pointPickerView];
  [pointPickerView setPrompt:promptCopy];
}

- (void)setPromptPosition:(unint64_t)position
{
  pointPickerView = [(SCATPointPickerViewController *)self pointPickerView];
  [pointPickerView setPosition:position];
}

- (NSString)prompt
{
  pointPickerView = [(SCATPointPickerViewController *)self pointPickerView];
  prompt = [pointPickerView prompt];

  return prompt;
}

- (void)menuWillAppear:(id)appear
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000EECF8;
  v3[3] = &unk_1001D3488;
  v3[4] = self;
  [UIView animateWithDuration:v3 animations:0.15];
}

- (void)menuWillDisappear:(id)disappear
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