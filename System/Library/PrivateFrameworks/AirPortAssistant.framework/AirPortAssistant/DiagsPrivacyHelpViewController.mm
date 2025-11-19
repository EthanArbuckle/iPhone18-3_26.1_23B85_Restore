@interface DiagsPrivacyHelpViewController
- (DiagsPrivacyHelpViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation DiagsPrivacyHelpViewController

- (DiagsPrivacyHelpViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = DiagsPrivacyHelpViewController;
  return [(DiagsPrivacyHelpViewController *)&v5 initWithNibName:a3 bundle:a4];
}

- (void)loadView
{
  v58.receiver = self;
  v58.super_class = DiagsPrivacyHelpViewController;
  [(DiagsPrivacyHelpViewController *)&v58 loadView];
  if (sub_23EC13460(self, v3, v4) == 2)
  {
    v5 = @"DiagsAndUsageApplePrivacyHelpTitle";
  }

  else
  {
    v5 = @"DiagsAndUsageApplePrivacyHelpTitle.short";
  }

  v6 = sub_23EB6CD3C(v5, @"AirPortSettings");
  v9 = objc_msgSend_navigationItem(self, v7, v8);
  objc_msgSend_setTitle_(v9, v10, v6);
  v13 = objc_msgSend__systemBackgroundColor(MEMORY[0x277D75348], v11, v12);
  v16 = objc_msgSend_view(self, v14, v15);
  objc_msgSend_setBackgroundColor_(v16, v17, v13);
  v20 = objc_msgSend_view(self, v18, v19);
  objc_msgSend_bounds(v20, v21, v22);
  if (v25 <= 400.0)
  {
    v26 = 5.0;
  }

  else
  {
    v26 = 10.0;
  }

  v27 = objc_msgSend_view(self, v23, v24);
  objc_msgSend_bounds(v27, v28, v29);
  v60 = CGRectInset(v59, v26, v26);
  x = v60.origin.x;
  y = v60.origin.y;
  width = v60.size.width;
  height = v60.size.height;
  v34 = objc_alloc(MEMORY[0x277D75C40]);
  v37 = objc_msgSend_initWithFrame_(v34, v35, v36, x, y, width, height);
  objc_msgSend_setEditable_(v37, v38, 0);
  v41 = objc_msgSend_systemFontOfSize_(MEMORY[0x277D74300], v39, v40, 14.0);
  objc_msgSend_setFont_(v37, v42, v41);
  v45 = objc_msgSend__labelColor(MEMORY[0x277D75348], v43, v44);
  objc_msgSend_setTextColor_(v37, v46, v45);
  objc_msgSend_setAutoresizingMask_(v37, v47, 18);
  v50 = objc_msgSend_clearColor(MEMORY[0x277D75348], v48, v49);
  objc_msgSend_setBackgroundColor_(v37, v51, v50);
  v52 = sub_23EB6CD3C(@"ABOUT_DIAGNOSTICS_INFO_TEXT_IOS", @"AirPortSettings");
  objc_msgSend_setText_(v37, v53, v52);
  v56 = objc_msgSend_view(self, v54, v55);
  objc_msgSend_addSubview_(v56, v57, v37);
}

@end