@interface ArcadeDownloadPackSuggestionsViewController
- (void)didTapDoneButton;
- (void)didTapGetAllButtonWithSender:(id)sender;
@end

@implementation ArcadeDownloadPackSuggestionsViewController

- (void)didTapDoneButton
{
  selfCopy = self;
  sub_10076AE2C();
  v4[4] = sub_10061463C;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10009AEDC;
  v4[3] = &unk_10089D2E0;
  v3 = _Block_copy(v4);
  [(ArcadeDownloadPackSuggestionsViewController *)selfCopy dismissViewControllerAnimated:1 completion:v3];

  _Block_release(v3);
}

- (void)didTapGetAllButtonWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1006148F4(senderCopy);
}

@end