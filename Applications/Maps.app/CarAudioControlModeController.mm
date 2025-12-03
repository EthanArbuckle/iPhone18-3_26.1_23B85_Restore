@interface CarAudioControlModeController
- (CarAudioControlModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (NSArray)preferredCarFocusEnvironments;
- (id)desiredCards;
- (void)audioController:(id)controller didSelectAudioType:(unint64_t)type;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)configureCard:(id)card forKey:(id)key;
- (void)registerAnalyticsForAudioType:(unint64_t)type;
@end

@implementation CarAudioControlModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)registerAnalyticsForAudioType:(unint64_t)type
{
  if (type <= 2)
  {
    v4 = dword_1012160C0[type];
    analyticsTarget = [(CarAudioControlModeController *)self analyticsTarget];

    [GEOAPPortal captureUserAction:v4 target:analyticsTarget value:0];
  }
}

- (NSArray)carFocusOrderSequences
{
  chromeViewController = [(CarAudioControlModeController *)self chromeViewController];
  itemRepresentingOverlays = [chromeViewController itemRepresentingOverlays];
  v8 = itemRepresentingOverlays;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [CarFocusOrderSequence sequenceWithItems:v4 options:5];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

  return v6;
}

- (NSArray)preferredCarFocusEnvironments
{
  v2 = [CarFocusOrderEnvironment environmentWithFocusEnvironment:self->_audioControlViewController];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)audioController:(id)controller didSelectAudioType:(unint64_t)type
{
  v6 = [_TtC4Maps22NavAudioControlFactory guidanceLevelForNavAudioType:type];
  v7 = [AudioPreferences alloc];
  v8 = +[NSUserDefaults standardUserDefaults];
  v13 = [(AudioPreferences *)v7 initWithDefaults:v8];

  if (v6 != [(AudioPreferences *)v13 guidanceLevelForTransportType:0])
  {
    [(AudioPreferences *)v13 setGuidanceLevel:v6 forTransportType:0];
    [(AudioPreferences *)v13 synchronize];
    v9 = +[NSNotificationCenter defaultCenter];
    v10 = +[_TtC4Maps22NavAudioControlFactory audioTypeNotification];
    [v9 postNotificationName:v10 object:self];

    [(CarAudioControlModeController *)self registerAnalyticsForAudioType:type];
  }

  carChromeViewController = [(CarAudioControlModeController *)self carChromeViewController];
  [carChromeViewController setNeedsUpdateComponent:@"mapcontrols" animated:1];

  v12 = +[CarChromeModeCoordinator sharedInstance];
  [v12 popFromContext:self];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v5 = [(CarAudioControlModeController *)self carChromeViewController:controller];
  [v5 setHardwareBackButtonBehavior:0 forContext:self];
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Sound [Nav value:Tray table:{CarPlay]", @"localized string not found", 0}];
  [cardCopy setTitle:v6];

  v7 = objc_alloc_init(CarCardLayout);
  [(CarCardLayout *)v7 setEdgePosition:0];
  [(CarCardLayout *)v7 setCornerPosition:4];
  [(CarCardLayout *)v7 setPrimaryAxis:1];
  [(CarCardLayout *)v7 setPinnedEdges:0];
  [(CarCardLayout *)v7 setPrimaryAxisFillMode:0];
  LODWORD(v8) = 1.0;
  [(CarCardLayout *)v7 setPrimaryAxisFillModePriority:v8];
  [(CarCardLayout *)v7 setSecondaryAxisFillMode:2];
  LODWORD(v9) = 1148846080;
  [(CarCardLayout *)v7 setSecondaryAxisFillModePriority:v9];
  [(CarCardLayout *)v7 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
  [(CarCardLayout *)v7 setFlipForRightHandDrive:1];
  v10 = v7;
  primaryAxis = [(CarCardLayout *)v10 primaryAxis];
  cornerPosition = [(CarCardLayout *)v10 cornerPosition];
  if (primaryAxis == 1)
  {
    if (cornerPosition == 4 || [(CarCardLayout *)v10 cornerPosition]== 1 || [(CarCardLayout *)v10 edgePosition]== 2)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    if ([(CarCardLayout *)v10 cornerPosition]== 8 || [(CarCardLayout *)v10 cornerPosition]== 2 || [(CarCardLayout *)v10 edgePosition]== 8)
    {
      v13 |= 2uLL;
    }

    if ([(CarCardLayout *)v10 edgePosition]== 1)
    {
      v13 |= 4uLL;
    }

    v14 = v13 | ([(CarCardLayout *)v10 edgePosition]== 4);
  }

  else
  {
    v14 = cornerPosition == 4 || [(CarCardLayout *)v10 cornerPosition]== 8 || [(CarCardLayout *)v10 edgePosition]== 4;
    if ([(CarCardLayout *)v10 cornerPosition]== 1 || [(CarCardLayout *)v10 cornerPosition]== 2 || [(CarCardLayout *)v10 edgePosition]== 1)
    {
      v14 |= 4uLL;
    }

    if ([(CarCardLayout *)v10 edgePosition]== 2)
    {
      v14 |= 8uLL;
    }

    if ([(CarCardLayout *)v10 edgePosition]== 8)
    {
      v14 |= 2uLL;
    }
  }

  [(CarCardLayout *)v10 setEdgesAffectingMapInsets:v14];
  [(CarCardLayout *)v10 setHorizontallyCenterMapInsets:0];
  [cardCopy setLayout:v10];

  [cardCopy setAccessoryType:2];
  [cardCopy setContent:self->_audioControlViewController];
}

- (id)desiredCards
{
  v4 = @"primary";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (CarAudioControlModeController)init
{
  v6.receiver = self;
  v6.super_class = CarAudioControlModeController;
  v2 = [(CarAudioControlModeController *)&v6 init];
  if (v2)
  {
    v3 = [[_TtC4Maps29CarAudioControlViewController alloc] initWithDelegate:v2];
    audioControlViewController = v2->_audioControlViewController;
    v2->_audioControlViewController = v3;
  }

  return v2;
}

@end