@interface FunCamMessagesViewController
- (AVTAvatarPicker)forwardingPicker;
- (AVTAvatarPickerDelegate)avatarPickerDelegate;
- (id)defaultMessagesChildViewControllerForPresentationContext:(unint64_t)context;
- (id)landscapeOverlayMessage;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)requestExpandedPresentation;
- (void)setAvatarPickerDelegate:(id)delegate;
@end

@implementation FunCamMessagesViewController

- (void)requestExpandedPresentation
{
  [(FunCamMessagesViewController *)self setWaitingOnPresentationStyleChange:1];
  [(FunCamMessagesViewController *)self requestPresentationStyle:1];
  objc_initWeak(&location, self);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_16F0;
  v12 = sub_171C;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1724;
  v6[3] = &unk_C338;
  objc_copyWeak(&v7, &location);
  v6[4] = &v8;
  v3 = objc_retainBlock(v6);
  v4 = v9[5];
  v9[5] = v3;

  v5 = dispatch_time(0, 500000000);
  dispatch_after(v5, &_dispatch_main_q, v9[5]);
  objc_destroyWeak(&v7);
  _Block_object_dispose(&v8, 8);

  objc_destroyWeak(&location);
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  v4.receiver = self;
  v4.super_class = FunCamMessagesViewController;
  [(BaseMessagesViewController *)&v4 didTransitionToPresentationStyle:style];
  [(FunCamMessagesViewController *)self setWaitingOnPresentationStyleChange:0];
}

- (id)defaultMessagesChildViewControllerForPresentationContext:(unint64_t)context
{
  v4 = objc_alloc_init(MessagesViewController);
  [(FunCamMessagesViewController *)self setForwardingPicker:v4];
  avatarPickerDelegate = [(FunCamMessagesViewController *)self avatarPickerDelegate];
  [(MessagesViewController *)v4 setAvatarPickerDelegate:avatarPickerDelegate];

  return v4;
}

- (void)setAvatarPickerDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_avatarPickerDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_avatarPickerDelegate, obj);
    forwardingPicker = [(FunCamMessagesViewController *)self forwardingPicker];

    if (forwardingPicker)
    {
      forwardingPicker2 = [(FunCamMessagesViewController *)self forwardingPicker];
      [forwardingPicker2 setAvatarPickerDelegate:obj];
    }
  }
}

- (id)landscapeOverlayMessage
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"sJFLandscapeTrapMessage" value:&stru_C498 table:@"JFStrings"];

  return v3;
}

- (AVTAvatarPickerDelegate)avatarPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_avatarPickerDelegate);

  return WeakRetained;
}

- (AVTAvatarPicker)forwardingPicker
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingPicker);

  return WeakRetained;
}

@end