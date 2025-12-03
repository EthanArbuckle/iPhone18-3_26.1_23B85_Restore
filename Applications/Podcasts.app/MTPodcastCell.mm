@interface MTPodcastCell
- (MTCountChevronView)countView;
- (MTPodcastCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_subtitleForPodcast:(id)podcast;
- (void)configureSubviews;
- (void)updateColors;
- (void)updateFonts;
- (void)updateWithObject:(id)object;
@end

@implementation MTPodcastCell

- (MTPodcastCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTPodcastCell;
  v4 = [(MTGenericCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTPodcastCell *)v4 configureSubviews];
  }

  return v5;
}

- (void)updateWithObject:(id)object
{
  objectCopy = object;
  title = [objectCopy title];
  [(MTGenericCell *)self setTitle:title];

  v5 = [(MTPodcastCell *)self _subtitleForPodcast:objectCopy];
  [(MTGenericCell *)self setSubtitle:v5];

  isDark = [objectCopy isDark];
  if (isDark)
  {
    countOfUnplayedEpisodes = &off_100500FA0;
  }

  else
  {
    countOfUnplayedEpisodes = [objectCopy countOfUnplayedEpisodes];
  }

  countView = [(MTPodcastCell *)self countView];
  [countView setCount:countOfUnplayedEpisodes];

  if ((isDark & 1) == 0)
  {
  }

  countView2 = [(MTPodcastCell *)self countView];
  [countView2 sizeToFit];

  uuid = [objectCopy uuid];
  [(MTGenericCell *)self setArtworkKey:uuid];

  [(MTPodcastCell *)self setNeedsLayout];
}

- (id)_subtitleForPodcast:(id)podcast
{
  v3 = kPodcastFeedChangedDate;
  podcastCopy = podcast;
  v5 = [podcastCopy valueForKey:v3];
  friendlyDisplayString = [v5 friendlyDisplayString];
  countOfNewEpisodes = [podcastCopy countOfNewEpisodes];

  unsignedIntegerValue = [countOfNewEpisodes unsignedIntegerValue];
  if (unsignedIntegerValue)
  {
    unsignedIntegerValue = [MTCountUtil stringForNewEpisodeCount:unsignedIntegerValue titleCase:0];
  }

  if ([v5 isToday] && objc_msgSend(unsignedIntegerValue, "isNotEmpty"))
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"UPDATED_DATE_AT_TIME_AND_NEW_EPISODE_COUNT_FORMAT" value:&stru_1004F3018 table:0];

    timeString = [v5 timeString];
    [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@ %@ %@" error:0, friendlyDisplayString, timeString, unsignedIntegerValue];
    v13 = LABEL_8:;

LABEL_9:
    goto LABEL_19;
  }

  if ([v5 isToday])
  {
    v12 = +[NSBundle mainBundle];
    v10 = [v12 localizedStringForKey:@"DATE_AT_TIME" value:&stru_1004F3018 table:0];

    timeString = [v5 timeString];
    [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@ %@" error:0, friendlyDisplayString, timeString, v17];
    goto LABEL_8;
  }

  if ([friendlyDisplayString isNotEmpty] && objc_msgSend(unsignedIntegerValue, "isNotEmpty"))
  {
    v14 = +[NSBundle mainBundle];
    v10 = [v14 localizedStringForKey:@"UPDATED_DATE_AND_NEW_EPISODE_COUNT_FORMAT" value:&stru_1004F3018 table:0];

    v13 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@ %@" error:0, friendlyDisplayString, unsignedIntegerValue];
    goto LABEL_9;
  }

  if ([friendlyDisplayString isNotEmpty])
  {
    v15 = friendlyDisplayString;
LABEL_17:
    v13 = v15;
    goto LABEL_19;
  }

  if ([unsignedIntegerValue isNotEmpty])
  {
    v15 = unsignedIntegerValue;
    goto LABEL_17;
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (void)configureSubviews
{
  v4.receiver = self;
  v4.super_class = MTPodcastCell;
  [(MTGenericCell *)&v4 configureSubviews];
  countView = [(MTPodcastCell *)self countView];
  [(MTGenericCell *)self setSideView:countView];
}

- (void)updateFonts
{
  v8.receiver = self;
  v8.super_class = MTPodcastCell;
  [(MTGenericCell *)&v8 updateFonts];
  textStackView = [(MTGenericCell *)self textStackView];
  titleTextStyle = [textStackView titleTextStyle];
  v5 = [UIFont mt_preferredFontForTextStyle:titleTextStyle];
  countView = [(MTPodcastCell *)self countView];
  [countView setFont:v5];

  countView2 = [(MTPodcastCell *)self countView];
  [countView2 sizeToFit];

  [(MTPodcastCell *)self setNeedsLayout];
}

- (void)updateColors
{
  v6.receiver = self;
  v6.super_class = MTPodcastCell;
  [(MTGenericCell *)&v6 updateColors];
  textStackView = [(MTGenericCell *)self textStackView];
  subtitleTextColor = [textStackView subtitleTextColor];
  countView = [(MTPodcastCell *)self countView];
  [countView setTextColor:subtitleTextColor];
}

- (MTCountChevronView)countView
{
  countView = self->_countView;
  if (!countView)
  {
    v4 = objc_opt_new();
    v5 = self->_countView;
    self->_countView = v4;

    v6 = +[UIColor orangeColor];
    [(MTCountChevronView *)self->_countView setTintColor:v6];

    countView = self->_countView;
  }

  return countView;
}

@end