@interface ArcadeDownloadPackSuggestionsViewController
- (void)didTapDoneButton;
- (void)didTapGetAllButtonWithSender:(id)a3;
@end

@implementation ArcadeDownloadPackSuggestionsViewController

- (void)didTapDoneButton
{
  v2 = self;
  dispatch thunk of ArcadeDownloadPackSuggestionsPagePresenter.didTapDoneButton()();
  v4[4] = sub_100422A14;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100007A08;
  v4[3] = &unk_1008C2998;
  v3 = _Block_copy(v4);
  [(ArcadeDownloadPackSuggestionsViewController *)v2 dismissViewControllerAnimated:1 completion:v3];

  _Block_release(v3);
}

- (void)didTapGetAllButtonWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100422CCC(v4);
}

@end