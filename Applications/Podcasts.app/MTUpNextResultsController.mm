@interface MTUpNextResultsController
+ (id)numberFormatter;
- (MTPlayerController)playerController;
- (MTUpNextResultsController)initWithPlayerController:(id)controller;
- (id)title;
- (unint64_t)startingIndexForDisplay;
@end

@implementation MTUpNextResultsController

- (MTUpNextResultsController)initWithPlayerController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = MTUpNextResultsController;
  v5 = [(MTManifestResultsController *)&v8 initWithPlayerController:controllerCopy];
  if (v5)
  {
    upNextManifest = [controllerCopy upNextManifest];
    [(MTManifestResultsController *)v5 setManifest:upNextManifest];

    [(MTUpNextResultsController *)v5 setPlayerController:controllerCopy];
  }

  return v5;
}

- (id)title
{
  numberOfObjects = [(MTResultsController *)self numberOfObjects];
  numberFormatter = [objc_opt_class() numberFormatter];
  v4 = [NSNumber numberWithUnsignedInteger:numberOfObjects];
  v5 = [numberFormatter stringFromNumber:v4];

  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (numberOfObjects == 1)
  {
    v8 = @"QUEUE_SONGS_SINGULAR";
  }

  else
  {
    v8 = @"QUEUE_SONGS_PLURAL";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_1004F3018 table:0];
  v10 = [NSString localizedStringWithFormat:v9, v5];

  return v10;
}

+ (id)numberFormatter
{
  v2 = qword_100583D48;
  if (!qword_100583D48)
  {
    v3 = objc_alloc_init(NSNumberFormatter);
    v4 = qword_100583D48;
    qword_100583D48 = v3;

    [qword_100583D48 setNumberStyle:1];
    v5 = qword_100583D48;
    v6 = +[NSLocale currentLocale];
    [v5 setLocale:v6];

    [qword_100583D48 setMaximumFractionDigits:0];
    v2 = qword_100583D48;
  }

  return v2;
}

- (unint64_t)startingIndexForDisplay
{
  v8.receiver = self;
  v8.super_class = MTUpNextResultsController;
  startingIndexForDisplay = [(MTManifestResultsController *)&v8 startingIndexForDisplay];
  playerController = [(MTUpNextResultsController *)self playerController];
  compositeManifest = [playerController compositeManifest];

  manifest = [(MTManifestResultsController *)self manifest];
  LODWORD(playerController) = [compositeManifest isPlayingFromManifest:manifest];

  return startingIndexForDisplay + playerController;
}

- (MTPlayerController)playerController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerController);

  return WeakRetained;
}

@end