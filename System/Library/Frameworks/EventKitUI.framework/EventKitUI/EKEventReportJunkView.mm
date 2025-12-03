@interface EKEventReportJunkView
- (EKEventReportJunkView)initWithViewController:(id)controller;
- (void)reportButtonTapped;
- (void)updateConstraints;
@end

@implementation EKEventReportJunkView

- (EKEventReportJunkView)initWithViewController:(id)controller
{
  v90[12] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v89.receiver = self;
  v89.super_class = EKEventReportJunkView;
  v6 = [(EKEventReportJunkView *)&v89 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(EKEventReportJunkView *)v7 setBackgroundColor:clearColor];

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
    layer = [(UIVisualEffectView *)v7->_effectView layer];
    [layer setCornerRadius:v13];

    layer2 = [(UIVisualEffectView *)v7->_effectView layer];
    [layer2 setMasksToBounds:1];

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
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(SGBannerProtocol *)v19 setBackgroundColor:clearColor2];

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
    v86 = controllerCopy;
    v79 = [v16 actionWithTitle:&stru_1F4EF6790 handler:v85];
    [(SGBannerProtocol *)v19 setDismissAction:v79];
    [(UIView *)v7->_containerView addSubview:v19];
    leadingAnchor = [(UIView *)v7->_containerView leadingAnchor];
    layoutMarginsGuide = [(EKEventReportJunkView *)v26 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
    containerLeadingConstraint = v26->_containerLeadingConstraint;
    v26->_containerLeadingConstraint = v30;

    trailingAnchor = [(UIView *)v7->_containerView trailingAnchor];
    layoutMarginsGuide2 = [(EKEventReportJunkView *)v26 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
    v84 = controllerCopy;
    containerTrailingConstraint = v26->_containerTrailingConstraint;
    v26->_containerTrailingConstraint = v35;

    widthAnchor = [(UIView *)v7->_containerView widthAnchor];
    v38 = [widthAnchor constraintLessThanOrEqualToConstant:400.0];
    containerWidthConstraint = v26->_containerWidthConstraint;
    v26->_containerWidthConstraint = v38;

    centerXAnchor = [(UIView *)v7->_containerView centerXAnchor];
    centerXAnchor2 = [(EKEventReportJunkView *)v26 centerXAnchor];
    v42 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    centerXConstraint = v26->_centerXConstraint;
    v26->_centerXConstraint = v42;

    v65 = MEMORY[0x1E696ACD8];
    v90[0] = v26->_containerLeadingConstraint;
    v90[1] = v26->_containerTrailingConstraint;
    topAnchor = [(UIView *)v7->_containerView topAnchor];
    layoutMarginsGuide3 = [(EKEventReportJunkView *)v26 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v75 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v90[2] = v75;
    bottomAnchor = [(UIView *)v7->_containerView bottomAnchor];
    layoutMarginsGuide4 = [(EKEventReportJunkView *)v26 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v71 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v90[3] = v71;
    leadingAnchor3 = [(UIVisualEffectView *)v7->_effectView leadingAnchor];
    leadingAnchor4 = [(UIView *)v7->_containerView leadingAnchor];
    v68 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v90[4] = v68;
    trailingAnchor3 = [(UIVisualEffectView *)v7->_effectView trailingAnchor];
    trailingAnchor4 = [(UIView *)v7->_containerView trailingAnchor];
    v64 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v90[5] = v64;
    topAnchor3 = [(UIVisualEffectView *)v7->_effectView topAnchor];
    topAnchor4 = [(UIView *)v7->_containerView topAnchor];
    v61 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v90[6] = v61;
    bottomAnchor3 = [(UIVisualEffectView *)v7->_effectView bottomAnchor];
    bottomAnchor4 = [(UIView *)v7->_containerView bottomAnchor];
    v58 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v90[7] = v58;
    leadingAnchor5 = [(SGBannerProtocol *)v7->_bannerView leadingAnchor];
    leadingAnchor6 = [(UIView *)v7->_containerView leadingAnchor];
    v55 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v90[8] = v55;
    trailingAnchor5 = [(SGBannerProtocol *)v7->_bannerView trailingAnchor];
    trailingAnchor6 = [(UIView *)v7->_containerView trailingAnchor];
    v45 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v90[9] = v45;
    topAnchor5 = [(SGBannerProtocol *)v7->_bannerView topAnchor];
    topAnchor6 = [(UIView *)v7->_containerView topAnchor];
    v48 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v90[10] = v48;
    bottomAnchor5 = [(SGBannerProtocol *)v7->_bannerView bottomAnchor];
    bottomAnchor6 = [(UIView *)v7->_containerView bottomAnchor];
    v51 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v90[11] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:12];
    [v65 activateConstraints:v52];

    controllerCopy = v84;
  }

  return v7;
}

- (void)updateConstraints
{
  v14[2] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = EKEventReportJunkView;
  [(EKEventReportJunkView *)&v12 updateConstraints];
  view = [(EKEventViewController *)self->_controller view];
  [view frame];
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
  isLargeDayView = [(EKEventReportJunkView *)self isLargeDayView];
  event = [(EKEventViewController *)self->_controller event];
  v5 = event;
  if (isLargeDayView)
  {
    PresentJunkAlertDialogForEvent(event, self->_controller);
  }

  else
  {
    PresentJunkAlertControllerForEvent(event, self->_bannerView, self->_controller, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
  }
}

@end