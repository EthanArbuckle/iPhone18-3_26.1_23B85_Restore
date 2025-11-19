@interface MTUpNextResultsController
+ (id)numberFormatter;
- (MTPlayerController)playerController;
- (MTUpNextResultsController)initWithPlayerController:(id)a3;
- (id)title;
- (unint64_t)startingIndexForDisplay;
@end

@implementation MTUpNextResultsController

- (MTUpNextResultsController)initWithPlayerController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTUpNextResultsController;
  v5 = [(MTManifestResultsController *)&v8 initWithPlayerController:v4];
  if (v5)
  {
    v6 = [v4 upNextManifest];
    [(MTManifestResultsController *)v5 setManifest:v6];

    [(MTUpNextResultsController *)v5 setPlayerController:v4];
  }

  return v5;
}

- (id)title
{
  v2 = [(MTResultsController *)self numberOfObjects];
  v3 = [objc_opt_class() numberFormatter];
  v4 = [NSNumber numberWithUnsignedInteger:v2];
  v5 = [v3 stringFromNumber:v4];

  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (v2 == 1)
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
  v3 = [(MTManifestResultsController *)&v8 startingIndexForDisplay];
  v4 = [(MTUpNextResultsController *)self playerController];
  v5 = [v4 compositeManifest];

  v6 = [(MTManifestResultsController *)self manifest];
  LODWORD(v4) = [v5 isPlayingFromManifest:v6];

  return v3 + v4;
}

- (MTPlayerController)playerController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerController);

  return WeakRetained;
}

@end