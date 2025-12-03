@interface CCUIConnectivityButtonViewController
+ (id)glyphImageWithName:(id)name pointSize:(double)size;
- (BOOL)performPrimaryActionForControlTemplateView:(id)view;
- (CCUIConnectivityButtonViewController)initWithGlyphImage:(id)image highlightColor:(id)color;
- (CCUIConnectivityButtonViewController)initWithGlyphPackageDescription:(id)description highlightColor:(id)color;
- (CCUIControlTemplateView)templateView;
- (void)buttonTapped:(id)tapped;
- (void)presentAlertWithTitle:(id)title message:(id)message completion:(id)completion;
- (void)setInoperative:(BOOL)inoperative;
- (void)setSubtitle:(id)subtitle;
- (void)setTemplateView:(id)view;
- (void)setTitle:(id)title;
- (void)startObservingStateChangesIfNecessary;
- (void)stopObservingStateChangesIfNecessary;
- (void)viewDidLoad;
@end

@implementation CCUIConnectivityButtonViewController

+ (id)glyphImageWithName:(id)name pointSize:(double)size
{
  nameCopy = name;
  v8 = objc_msgSend__symbolConfigurationWithPointSize_(CCUIConnectivityButtonViewController, v6, v7, size);
  v10 = objc_msgSend__systemImageNamed_withConfiguration_(MEMORY[0x29EDC7AC8], v9, nameCopy, v8);

  return v10;
}

- (CCUIConnectivityButtonViewController)initWithGlyphImage:(id)image highlightColor:(id)color
{
  v5.receiver = self;
  v5.super_class = CCUIConnectivityButtonViewController;
  return [(CCUILabeledRoundButtonViewController *)&v5 initWithGlyphImage:image highlightColor:color useLightStyle:1];
}

- (CCUIConnectivityButtonViewController)initWithGlyphPackageDescription:(id)description highlightColor:(id)color
{
  v5.receiver = self;
  v5.super_class = CCUIConnectivityButtonViewController;
  return [(CCUILabeledRoundButtonViewController *)&v5 initWithGlyphPackageDescription:description highlightColor:color useLightStyle:1];
}

- (void)buttonTapped:(id)tapped
{
  v4 = objc_msgSend_statusText(self, a2, tapped);
  if (v4)
  {
    v11 = v4;
    v7 = objc_msgSend_contentModuleContext(self, v5, v6);
    v9 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v8, v11, 1);
    objc_msgSend_enqueueStatusUpdate_(v7, v10, v9);

    v4 = v11;
  }
}

- (void)presentAlertWithTitle:(id)title message:(id)message completion:(id)completion
{
  completionCopy = completion;
  v9 = objc_msgSend_alertControllerWithTitle_message_preferredStyle_(MEMORY[0x29EDC7928], v8, title, message, 1);
  v10 = MEMORY[0x29EDB9F48];
  v11 = objc_opt_class();
  v13 = objc_msgSend_bundleForClass_(v10, v12, v11);
  v15 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @"CONTROL_CENTER_ALERT_OK", &stru_2A23E4910, 0);

  v17 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x29EDC7920], v16, v15, 0, 0);
  objc_msgSend_addAction_(v9, v18, v17);

  v21 = objc_msgSend_presentationController(v9, v19, v20);
  NSClassFromString(&cfstr_Uialertcontrol.isa);
  if (objc_opt_isKindOfClass())
  {
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend__setShouldRespectNearestCurrentContextPresenter_(v21, v23, 1);
    }

    if (objc_opt_respondsToSelector())
    {
      objc_msgSend__setIsCurrentContext_(v21, v22, 1);
    }
  }

  objc_msgSend_presentViewController_animated_completion_(self, v22, v9, 1, completionCopy);
}

- (void)startObservingStateChangesIfNecessary
{
  if (!self->_observingStateChanges)
  {
    (MEMORY[0x2A1C70FE8])(self, sel_startObservingStateChanges);
  }
}

- (void)stopObservingStateChangesIfNecessary
{
  if (self->_observingStateChanges)
  {
    (MEMORY[0x2A1C70FE8])(self, sel_stopObservingStateChanges);
  }
}

- (void)setTemplateView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_templateView);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_templateView, obj);
    v7 = objc_msgSend_view(self, v5, v6);
    objc_msgSend_setCustomGlyphView_(obj, v8, v7);

    v11 = objc_msgSend_title(self, v9, v10);
    objc_msgSend_setTitle_(obj, v12, v11);

    v15 = objc_msgSend_subtitle(self, v13, v14);
    objc_msgSend_setSubtitle_(obj, v16, v15);

    isInoperative = objc_msgSend_isInoperative(self, v17, v18);
    objc_msgSend_setEnabled_(obj, v20, isInoperative ^ 1u);
  }
}

- (void)setTitle:(id)title
{
  v9.receiver = self;
  v9.super_class = CCUIConnectivityButtonViewController;
  titleCopy = title;
  [(CCUILabeledRoundButtonViewController *)&v9 setTitle:titleCopy];
  v7 = objc_msgSend_templateView(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_setTitle_(v7, v8, titleCopy);
}

- (void)setSubtitle:(id)subtitle
{
  v9.receiver = self;
  v9.super_class = CCUIConnectivityButtonViewController;
  subtitleCopy = subtitle;
  [(CCUILabeledRoundButtonViewController *)&v9 setSubtitle:subtitleCopy];
  v7 = objc_msgSend_templateView(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_setSubtitle_(v7, v8, subtitleCopy);
}

- (void)setInoperative:(BOOL)inoperative
{
  inoperativeCopy = inoperative;
  v9.receiver = self;
  v9.super_class = CCUIConnectivityButtonViewController;
  [(CCUILabeledRoundButtonViewController *)&v9 setInoperative:?];
  v7 = objc_msgSend_templateView(self, v5, v6);
  objc_msgSend_setEnabled_(v7, v8, !inoperativeCopy);
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CCUIConnectivityButtonViewController;
  [(CCUIConnectivityButtonViewController *)&v7 viewDidLoad];
  v5 = objc_msgSend_displayName(self, v3, v4);
  objc_msgSend_setTitle_(self, v6, v5);
}

- (BOOL)performPrimaryActionForControlTemplateView:(id)view
{
  if (objc_msgSend_showsMenuModuleAsPrimaryAction(self, a2, view) & 1) != 0 || (objc_msgSend_isPresentingMenuModuleViewController(self, v4, v5))
  {
    return 1;
  }

  v9 = objc_msgSend_button(self, v6, v7);
  objc_msgSend_buttonTapped_(self, v10, v9);

  return 0;
}

- (CCUIControlTemplateView)templateView
{
  WeakRetained = objc_loadWeakRetained(&self->_templateView);

  return WeakRetained;
}

@end