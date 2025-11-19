@interface _MusicSubscriptionOfferViewController
- (_MusicSubscriptionOfferViewControllerDelegate)delegate;
- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController)childViewController;
- (void)_loadWithOptions:(id)a3 completionHandler:(id)a4;
- (void)_setupView:(id)a3;
- (void)viewDidLoad;
@end

@implementation _MusicSubscriptionOfferViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _MusicSubscriptionOfferViewController;
  [(_MusicSubscriptionOfferViewController *)&v4 viewDidLoad];
  v3 = [(_MusicSubscriptionOfferViewController *)self view];
  [(_MusicSubscriptionOfferViewController *)self _setupView:v3];
}

- (_MusicSubscriptionOfferViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController)childViewController
{
  v2 = self;
  v3 = sub_21666C264();

  return v3;
}

- (void)_setupView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21666C510(v4);
}

- (void)_loadWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_21666C734(v8, v6, v7);
  sub_21664D5A4(v6);
}

@end