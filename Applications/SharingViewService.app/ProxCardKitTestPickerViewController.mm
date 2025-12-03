@interface ProxCardKitTestPickerViewController
- (ProxCardKitTestPickerViewController)init;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
@end

@implementation ProxCardKitTestPickerViewController

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v6 = [(ProxCardKitTestPickerViewController *)self data:view];
  v7 = [v6 objectAtIndexedSubscript:row];

  return v7;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = [(ProxCardKitTestPickerViewController *)self data:view];
  v5 = [v4 count];

  return v5;
}

- (ProxCardKitTestPickerViewController)init
{
  v3 = objc_alloc_init(PRXPickerContentView);
  v4 = [(ProxCardKitTestPickerViewController *)self initWithContentView:v3];

  if (v4)
  {
    [(ProxCardKitTestPickerViewController *)v4 setTitle:@"ProxCardKit Test"];
    [(ProxCardKitTestPickerViewController *)v4 setSubtitle:@"Which One?"];
    [(ProxCardKitTestPickerViewController *)v4 setDismissalType:3];
    [(ProxCardKitTestPickerViewController *)v4 setData:&off_10019B158];
    objc_initWeak(&location, v4);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1001192E8;
    v17 = &unk_1001958D8;
    objc_copyWeak(&v18, &location);
    v5 = [PRXAction actionWithTitle:@"Next" style:0 handler:&v14];
    v6 = [(ProxCardKitTestPickerViewController *)v4 addAction:v5, v14, v15, v16, v17];
    nextAction = v4->_nextAction;
    v4->_nextAction = v6;

    [(PRXAction *)v4->_nextAction setEnabled:0];
    v8 = objc_alloc_init(PRXTextField);
    contentView = [(ProxCardKitTestPickerViewController *)v4 contentView];
    [contentView setTextField:v8];

    contentView2 = [(ProxCardKitTestPickerViewController *)v4 contentView];
    textField = [contentView2 textField];
    [textField setPlaceholder:@"Other"];

    v12 = v4;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v4;
}

@end