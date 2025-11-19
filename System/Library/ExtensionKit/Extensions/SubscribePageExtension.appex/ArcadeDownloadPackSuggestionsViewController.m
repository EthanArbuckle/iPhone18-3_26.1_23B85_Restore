@interface ArcadeDownloadPackSuggestionsViewController
- (void)didTapDoneButton;
- (void)didTapGetAllButtonWithSender:(id)a3;
@end

@implementation ArcadeDownloadPackSuggestionsViewController

- (void)didTapDoneButton
{
  v2 = self;
  sub_10074E1B4();
  v4[4] = sub_100166D24;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1000CF7B0;
  v4[3] = &unk_100869860;
  v3 = _Block_copy(v4);
  [(ArcadeDownloadPackSuggestionsViewController *)v2 dismissViewControllerAnimated:1 completion:v3];

  _Block_release(v3);
}

- (void)didTapGetAllButtonWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100166FDC(v4);
}

@end