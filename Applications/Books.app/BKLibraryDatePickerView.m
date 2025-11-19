@interface BKLibraryDatePickerView
- (BKLibraryDatePickerView)initWithTitle:(id)a3;
- (SEL)action;
- (void)cancelPressed;
- (void)donePressed;
- (void)setAction:(SEL)a3;
@end

@implementation BKLibraryDatePickerView

- (BKLibraryDatePickerView)initWithTitle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UIToolbar);
  [v5 setBarStyle:0];
  v6 = +[UIColor blackColor];
  [v5 setTintColor:v6];

  [v5 setAutoresizingMask:2];
  v7 = objc_alloc_init(UILabel);
  [v7 setText:v4];

  [v7 sizeToFit];
  v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelPressed"];
  v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"donePressed"];
  v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v12 = objc_alloc_init(UIBarButtonItem);
  [v12 setCustomView:v7];
  v13 = [NSArray arrayWithObjects:v8, v10, v12, v11, v9, 0];
  [v5 setItems:v13];

  [v5 sizeToFit];
  v14 = objc_alloc_init(UIDatePicker);
  [v14 setAutoresizingMask:58];
  [v14 setDatePickerMode:1];
  [v14 sizeToFit];
  [v5 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v14 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v34.origin.x = v16;
  v34.origin.y = v18;
  v34.size.width = v20;
  v34.size.height = v22;
  Height = CGRectGetHeight(v34);
  [v5 setFrame:{v16, v18, v26, v22}];
  [v14 setFrame:{v24, Height, v26, v28}];
  v35.origin.x = v16;
  v35.origin.y = v18;
  v35.size.width = v26;
  v35.size.height = v22;
  v37.origin.x = v24;
  v37.origin.y = Height;
  v37.size.width = v26;
  v37.size.height = v28;
  v36 = CGRectUnion(v35, v37);
  v33.receiver = self;
  v33.super_class = BKLibraryDatePickerView;
  v30 = [(BKLibraryDatePickerView *)&v33 initWithFrame:v36.origin.x, v36.origin.y, v36.size.width, v36.size.height];
  if (v30)
  {
    v31 = +[UIColor clearColor];
    [(BKLibraryDatePickerView *)v30 setBackgroundColor:v31];

    objc_storeStrong(&v30->_picker, v14);
    [(BKLibraryDatePickerView *)v30 addSubview:v30->_picker];
    [(BKLibraryDatePickerView *)v30 addSubview:v5];
    [(BKLibraryDatePickerView *)v30 setAutoresizesSubviews:1];
    [(BKLibraryDatePickerView *)v30 setAutoresizingMask:58];
  }

  return v30;
}

- (void)donePressed
{
  v3 = [(BKLibraryDatePickerView *)self completionBlock];

  if (v3)
  {
    v4 = [(BKLibraryDatePickerView *)self completionBlock];
    v5 = [(BKLibraryDatePickerView *)self picker];
    v6 = [v5 date];
    (v4)[2](v4, v6);
  }

  v7 = [(BKLibraryDatePickerView *)self presentingViewController];
  [v7 dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelPressed
{
  v2 = [(BKLibraryDatePickerView *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

@end