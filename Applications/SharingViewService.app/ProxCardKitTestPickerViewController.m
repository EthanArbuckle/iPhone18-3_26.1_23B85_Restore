@interface ProxCardKitTestPickerViewController
- (ProxCardKitTestPickerViewController)init;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
@end

@implementation ProxCardKitTestPickerViewController

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v6 = [(ProxCardKitTestPickerViewController *)self data:a3];
  v7 = [v6 objectAtIndexedSubscript:a4];

  return v7;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = [(ProxCardKitTestPickerViewController *)self data:a3];
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
    v9 = [(ProxCardKitTestPickerViewController *)v4 contentView];
    [v9 setTextField:v8];

    v10 = [(ProxCardKitTestPickerViewController *)v4 contentView];
    v11 = [v10 textField];
    [v11 setPlaceholder:@"Other"];

    v12 = v4;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v4;
}

@end