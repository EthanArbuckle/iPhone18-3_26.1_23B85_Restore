@interface BCSCopyActionPickerItem
- (BCSCopyActionPickerItem)initWithAction:(id)a3 textToCopy:(id)a4;
- (BCSCopyActionPickerItem)initWithAction:(id)a3 urlToCopy:(id)a4;
- (id)icon;
- (void)performActionWithFBOptions:(id)a3;
@end

@implementation BCSCopyActionPickerItem

- (BCSCopyActionPickerItem)initWithAction:(id)a3 textToCopy:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _BCSLocalizedString(@"Copy", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  v14.receiver = self;
  v14.super_class = BCSCopyActionPickerItem;
  v9 = [(BCSActionPickerItem *)&v14 initWithLabel:v8 action:v7];

  if (v9)
  {
    v10 = [v6 copy];
    textToCopy = v9->_textToCopy;
    v9->_textToCopy = v10;

    v12 = v9;
  }

  return v9;
}

- (BCSCopyActionPickerItem)initWithAction:(id)a3 urlToCopy:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _BCSLocalizedString(@"Copy Link", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
  v14.receiver = self;
  v14.super_class = BCSCopyActionPickerItem;
  v9 = [(BCSActionPickerItem *)&v14 initWithLabel:v8 action:v7];

  if (v9)
  {
    v10 = [v6 copy];
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

- (void)performActionWithFBOptions:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSCopyActionPickerItem: performing action", v7, 2u);
  }

  v5 = [getUIPasteboardClass() generalPasteboard];
  v6 = v5;
  if (self->_textToCopy)
  {
    [v5 setString:?];
  }

  if (self->_urlToCopy)
  {
    [v6 setURL:?];
  }

  [(BCSActionPickerItem *)self didPerformAction];
}

@end