@interface FriendRequestCardViewController
- (GKDashboardPlayerPhotoView)friendAvatarView;
- (GKDashboardPlayerPhotoView)playerAvatarView;
- (UIButton)acceptButton;
- (UIButton)ignoreButton;
- (UIButton)receiverActionStatus;
- (UIImageView)gameCenterPhoto;
- (UILabel)achievementsCountLabel;
- (UILabel)achievementsLabel;
- (UILabel)edgeCaseStateLabel;
- (UILabel)errorStateLabel;
- (UILabel)friendsCountLabel;
- (UILabel)friendsLabel;
- (UILabel)gameCenterLabel;
- (UILabel)gamesCountLabel;
- (UILabel)gamesLabel;
- (UILabel)inviteStatusInfoLabel;
- (UILabel)playerName;
- (UILabel)secondSubtitleLabel;
- (UILabel)subTitle;
- (UILabel)tryAgainLabel;
- (UILabel)viewFriendsLabel;
- (UIStackView)buttonsStackView;
- (UIStackView)inviteAcceptedStackView;
- (UIStackView)playerProfileInfoBarAndButtonStackView;
- (UIStackView)playerProfileInfoBarStackView;
- (UIStackView)receiverInfoStackView;
- (UIView)dividerView;
- (UIView)mainContainer;
- (_TtC26GameCenterMessageExtension31FriendRequestCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)acceptButtonPressed;
- (void)avatarContentIsReady;
- (void)avatarPressed:(id)a3;
- (void)dealloc;
- (void)friendAvatarPressed:(id)a3;
- (void)ignoreButtonPressed;
- (void)setCenterStackView:(id)a3;
- (void)setTopMostConstriant:(id)a3;
- (void)tryAgainPressed:(id)a3;
- (void)updateCard:(id)a3;
- (void)viewDidLoad;
- (void)viewGameCenterFriendsTapped:(id)a3;
@end

@implementation FriendRequestCardViewController

- (UIView)mainContainer
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)playerName
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)subTitle
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)inviteStatusInfoLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)secondSubtitleLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)viewFriendsLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (GKDashboardPlayerPhotoView)playerAvatarView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIButton)acceptButton
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)gameCenterLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIImageView)gameCenterPhoto
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIButton)ignoreButton
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIStackView)buttonsStackView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)friendsCountLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)friendsLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)gamesLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)achievementsLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)achievementsCountLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)gamesCountLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIStackView)playerProfileInfoBarStackView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (GKDashboardPlayerPhotoView)friendAvatarView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIStackView)playerProfileInfoBarAndButtonStackView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)errorStateLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIStackView)receiverInfoStackView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIView)dividerView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)tryAgainLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)edgeCaseStateLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIButton)receiverActionStatus
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIStackView)inviteAcceptedStackView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setTopMostConstriant:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_topMostConstriant);
  *(self + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_topMostConstriant) = a3;
  v3 = a3;
}

- (void)setCenterStackView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_centerStackView);
  *(self + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_centerStackView) = a3;
  v3 = a3;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for FriendRequestCardViewController();
  [(FriendRequestCardViewController *)&v6 dealloc];
}

- (void)avatarContentIsReady
{
  v4 = self;
  v2 = sub_100039914();
  if (v2)
  {
    v3 = v2;
    sub_100028EEC();
  }
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100007534();
}

- (void)updateCard:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000EAC0();
}

- (void)acceptButtonPressed
{
  v2 = self;
  sub_100008854();
}

- (void)ignoreButtonPressed
{
  v2 = self;
  sub_100009C80();
}

- (void)avatarPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000EE6C();
}

- (void)friendAvatarPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000EFBC();
}

- (void)viewGameCenterFriendsTapped:(id)a3
{
  v8 = self;
  v4 = a3;
  v5 = sub_100039914();
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(GKReporter) init];
    [v7 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:GKViewFriendListButtonTapped];

    sub_1000292E4();
    v4 = v8;
    v8 = v6;
  }
}

- (void)tryAgainPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000F264();
}

- (_TtC26GameCenterMessageExtension31FriendRequestCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100041B20();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10000DCD8(v5, v7, a4);
}

@end