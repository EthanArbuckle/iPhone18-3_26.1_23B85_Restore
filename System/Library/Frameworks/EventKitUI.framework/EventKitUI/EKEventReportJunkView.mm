@interface EKEventReportJunkView
- (EKEventReportJunkView)initWithViewController:(id)a3;
- (void)reportButtonTapped;
- (void)updateConstraints;
@end

@implementation EKEventReportJunkView

- (EKEventReportJunkView)initWithViewController:(id)a3
{
  v90[12] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v89.receiver = self;
  v89.super_class = EKEventReportJunkView;
  v6 = [(EKEventReportJunkView *)&v89 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(EKEventReportJunkView *)v7 setBackgroundColor:v8];

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    containerView = v7->_containerView;
    v7->_containerView = v9;

    [(UIView *)v7->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKEventReportJunkView *)v7 addSubview:v7->_containerView];
    v83 = objc_alloc_init(MEMORY[0x1E69DCA68]);
    v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v83];
    effectView = v7->_effectView;
    v7->_effectView = v11;

    [(UIVisualEffectView *)v7->_effectView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = EKUITableViewCellCornerRadius();
    v14 = [(UIVisualEffectView *)v7->_effectView layer];
    [v14 setCornerRadius:v13];

    v15 = [(UIVisualEffectView *)v7->_effectView layer];
    [v15 setMasksToBounds:1];

    [(UIView *)v7->_containerView addSubview:v7->_effectView];
    EKWeakLinkClass();
    v16 = EKWeakLinkClass();
    v17 = objc_opt_new();
    bannerView = v7->_bannerView;
    v7->_bannerView = v17;
    v19 = v17;

    [(SGBannerProtocol *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = EventKitUIBundle();
    v21 = [v20 localizedStringForKey:@"This invitation is from an unknown contact." value:&stru_1F4EF6790 table:0];
    [(SGBannerProtocol *)v19 setTitle:v21];

    [(SGBannerProtocol *)v19 setAccessoryType:1];
    [(SGBannerProtocol *)v19 setActionButtonType:0];
    v22 = [MEMORY[0x1E69DC888] clearColor];
    [(SGBannerProtocol *)v19 setBackgroundColor:v22];

    LODWORD(v23) = 1148846080;
    [(SGBannerProtocol *)v19 setContentCompressionResistancePriority:1 forAxis:v23];
    v24 = EventKitUIBundle();
    v25 = [v24 localizedStringForKey:@"Report Junk" value:&stru_1F4EF6790 table:0];

    v82 = v25;
    [(SGBannerProtocol *)v19 setActionTitle:v25];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __48__EKEventReportJunkView_initWithViewController___block_invoke;
    v87[3] = &unk_1E843F458;
    v26 = v7;
    v88 = v26;
    [v16 actionWithTitle:v25 handler:v87];
    v81 = v80 = v19;
    [(SGBannerProtocol *)v19 setPrimaryAction:v81];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __48__EKEventReportJunkView_initWithViewController___block_invoke_2;
    v85[3] = &unk_1E843F458;
    v86 = v5;
    v79 = [v16 actionWithTitle:&stru_1F4EF6790 handler:v85];
    [(SGBannerProtocol *)v19 setDismissAction:v79];
    [(UIView *)v7->_containerView addSubview:v19];
    v27 = [(UIView *)v7->_containerView leadingAnchor];
    v28 = [(EKEventReportJunkView *)v26 layoutMarginsGuide];
    v29 = [v28 leadingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29 constant:8.0];
    containerLeadingConstraint = v26->_containerLeadingConstraint;
    v26->_containerLeadingConstraint = v30;

    v32 = [(UIView *)v7->_containerView trailingAnchor];
    v33 = [(EKEventReportJunkView *)v26 layoutMarginsGuide];
    v34 = [v33 trailingAnchor];
    v35 = [v32 constraintEqualToAnchor:v34 constant:-8.0];
    v84 = v5;
    containerTrailingConstraint = v26->_containerTrailingConstraint;
    v26->_containerTrailingConstraint = v35;

    v37 = [(UIView *)v7->_containerView widthAnchor];
    v38 = [v37 constraintLessThanOrEqualToConstant:400.0];
    containerWidthConstraint = v26->_containerWidthConstraint;
    v26->_containerWidthConstraint = v38;

    v40 = [(UIView *)v7->_containerView centerXAnchor];
    v41 = [(EKEventReportJunkView *)v26 centerXAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    centerXConstraint = v26->_centerXConstraint;
    v26->_centerXConstraint = v42;

    v65 = MEMORY[0x1E696ACD8];
    v90[0] = v26->_containerLeadingConstraint;
    v90[1] = v26->_containerTrailingConstraint;
    v77 = [(UIView *)v7->_containerView topAnchor];
    v78 = [(EKEventReportJunkView *)v26 layoutMarginsGuide];
    v76 = [v78 topAnchor];
    v75 = [v77 constraintEqualToAnchor:v76];
    v90[2] = v75;
    v73 = [(UIView *)v7->_containerView bottomAnchor];
    v74 = [(EKEventReportJunkView *)v26 layoutMarginsGuide];
    v72 = [v74 bottomAnchor];
    v71 = [v73 constraintEqualToAnchor:v72];
    v90[3] = v71;
    v70 = [(UIVisualEffectView *)v7->_effectView leadingAnchor];
    v69 = [(UIView *)v7->_containerView leadingAnchor];
    v68 = [v70 constraintEqualToAnchor:v69];
    v90[4] = v68;
    v67 = [(UIVisualEffectView *)v7->_effectView trailingAnchor];
    v66 = [(UIView *)v7->_containerView trailingAnchor];
    v64 = [v67 constraintEqualToAnchor:v66];
    v90[5] = v64;
    v63 = [(UIVisualEffectView *)v7->_effectView topAnchor];
    v62 = [(UIView *)v7->_containerView topAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v90[6] = v61;
    v60 = [(UIVisualEffectView *)v7->_effectView bottomAnchor];
    v59 = [(UIView *)v7->_containerView bottomAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v90[7] = v58;
    v57 = [(SGBannerProtocol *)v7->_bannerView leadingAnchor];
    v56 = [(UIView *)v7->_containerView leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v90[8] = v55;
    v54 = [(SGBannerProtocol *)v7->_bannerView trailingAnchor];
    v44 = [(UIView *)v7->_containerView trailingAnchor];
    v45 = [v54 constraintEqualToAnchor:v44];
    v90[9] = v45;
    v46 = [(SGBannerProtocol *)v7->_bannerView topAnchor];
    v47 = [(UIView *)v7->_containerView topAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    v90[10] = v48;
    v49 = [(SGBannerProtocol *)v7->_bannerView bottomAnchor];
    v50 = [(UIView *)v7->_containerView bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    v90[11] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:12];
    [v65 activateConstraints:v52];

    v5 = v84;
  }

  return v7;
}

- (void)updateConstraints
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = EKEventReportJunkView;
  [(EKEventReportJunkView *)&v12 updateConstraints];
  v3 = [(EKEventViewController *)self->_controller view];
  [v3 frame];
  v5 = v4;

  if (v5 > 400.0)
  {
    v6 = MEMORY[0x1E696ACD8];
    containerTrailingConstraint = self->_containerTrailingConstraint;
    v14[0] = self->_containerLeadingConstraint;
    v14[1] = containerTrailingConstraint;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    [v6 deactivateConstraints:v8];

    v9 = MEMORY[0x1E696ACD8];
    centerXConstraint = self->_centerXConstraint;
    v13[0] = self->_containerWidthConstraint;
    v13[1] = centerXConstraint;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    [v9 activateConstraints:v11];
  }
}

- (void)reportButtonTapped
{
  v3 = [(EKEventReportJunkView *)self isLargeDayView];
  v4 = [(EKEventViewController *)self->_controller event];
  v5 = v4;
  if (v3)
  {
    PresentJunkAlertDialogForEvent(v4, self->_controller);
  }

  else
  {
    PresentJunkAlertControllerForEvent(v4, self->_bannerView, self->_controller, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
  }
}

@end