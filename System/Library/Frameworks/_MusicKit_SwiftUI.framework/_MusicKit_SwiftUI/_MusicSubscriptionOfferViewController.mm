@interface _MusicSubscriptionOfferViewController
- (_MusicSubscriptionOfferViewControllerDelegate)delegate;
- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController)childViewController;
- (void)_loadWithOptions:(id)options completionHandler:(id)handler;
- (void)_setupView:(id)view;
- (void)viewDidLoad;
@end

@implementation _MusicSubscriptionOfferViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _MusicSubscriptionOfferViewController;
  [(_MusicSubscriptionOfferViewController *)&v4 viewDidLoad];
  view = [(_MusicSubscriptionOfferViewController *)self view];
  [(_MusicSubscriptionOfferViewController *)self _setupView:view];
}

- (_MusicSubscriptionOfferViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController)childViewController
{
  selfCopy = self;
  v3 = sub_21666C264();

  return v3;
}

- (void)_setupView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_21666C510(viewCopy);
}

- (void)_loadWithOptions:(id)options completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_21666CB7C;
  }

  else
  {
    v7 = 0;
  }

  optionsCopy = options;
  selfCopy = self;
  sub_21666C734(optionsCopy, v6, v7);
  sub_21664D5A4(v6);
}

@end