@interface BCSCopyActionPickerItem
- (BCSCopyActionPickerItem)initWithAction:(id)action textToCopy:(id)copy;
- (BCSCopyActionPickerItem)initWithAction:(id)action urlToCopy:(id)copy;
- (id)icon;
- (void)performActionWithFBOptions:(id)options;
@end

@implementation BCSCopyActionPickerItem

- (BCSCopyActionPickerItem)initWithAction:(id)action textToCopy:(id)copy
{
  copyCopy = copy;
  actionCopy = action;
  v8 = _BCSLocalizedString(@"Copy", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  v14.receiver = self;
  v14.super_class = BCSCopyActionPickerItem;
  v9 = [(BCSActionPickerItem *)&v14 initWithLabel:v8 action:actionCopy];

  if (v9)
  {
    v10 = [copyCopy copy];
    textToCopy = v9->_textToCopy;
    v9->_textToCopy = v10;

    v12 = v9;
  }

  return v9;
}

- (BCSCopyActionPickerItem)initWithAction:(id)action urlToCopy:(id)copy
{
  copyCopy = copy;
  actionCopy = action;
  v8 = _BCSLocalizedString(@"Copy Link", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  v14.receiver = self;
  v14.super_class = BCSCopyActionPickerItem;
  v9 = [(BCSActionPickerItem *)&v14 initWithLabel:v8 action:actionCopy];

  if (v9)
  {
    v10 = [copyCopy copy];
    urlToCopy = v9->_urlToCopy;
    v9->_urlToCopy = v10;

    v12 = v9;
  }

  return v9;
}

- (id)icon
{
  UIImageClass = getUIImageClass();

  return [UIImageClass systemImageNamed:@"doc.on.doc"];
}

- (void)performActionWithFBOptions:(id)options
{
  optionsCopy = options;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSCopyActionPickerItem: performing action", v7, 2u);
  }

  generalPasteboard = [getUIPasteboardClass() generalPasteboard];
  v6 = generalPasteboard;
  if (self->_textToCopy)
  {
    [generalPasteboard setString:?];
  }

  if (self->_urlToCopy)
  {
    [v6 setURL:?];
  }

  [(BCSActionPickerItem *)self didPerformAction];
}

@end