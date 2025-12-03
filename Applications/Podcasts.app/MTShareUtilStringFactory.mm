@interface MTShareUtilStringFactory
+ (id)_bodyForShareEmailWithDataSource:(id)source;
+ (id)_descriptionHTMLForDataSource:(id)source;
+ (id)_footerHTMLForDataSource:(id)source;
+ (id)_subtitleHTMLForDataSource:(id)source;
+ (id)_titleHTMLForDataSource:(id)source;
+ (id)subjectForShareEmailFromDataSource:(id)source;
+ (id)textForShareToNotesFromDataSource:(id)source;
@end

@implementation MTShareUtilStringFactory

+ (id)subjectForShareEmailFromDataSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy currentShareMode] == 2)
  {
    sharePodcastTitle = [sourceCopy sharePodcastTitle];
    shareEpisodeTitle = [sourceCopy shareEpisodeTitle];

    [NSString stringWithFormat:@"%@: %@", sharePodcastTitle, shareEpisodeTitle];
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    sharePodcastTitle = [v6 localizedStringForKey:@"SHARE_EMAIL_SHOW_SUBJECT_FORMAT" value:&stru_1004F3018 table:0];

    shareEpisodeTitle = [sourceCopy sharePodcastTitle];

    [NSString stringWithValidatedFormat:sharePodcastTitle validFormatSpecifiers:@"%@" error:0, shareEpisodeTitle];
  }
  v7 = ;

  return v7;
}

+ (id)textForShareToNotesFromDataSource:(id)source
{
  sourceCopy = source;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"EPISODE_OR_PODCAST_SHARE_NOTES" value:&stru_1004F3018 table:0];

  if ([sourceCopy currentShareMode] == 1)
  {
    sharePodcastTitle = [sourceCopy sharePodcastTitle];
    [sourceCopy shareProvider];
  }

  else
  {
    sharePodcastTitle = [sourceCopy shareEpisodeTitle];
    [sourceCopy sharePodcastTitle];
  }
  v7 = ;
  if ([v7 length])
  {
    v8 = [NSString stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@ %@" error:0, sharePodcastTitle, v7];
  }

  else
  {
    v8 = sharePodcastTitle;
  }

  v9 = v8;

  return v9;
}

+ (id)_titleHTMLForDataSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy currentShareMode] == 1)
  {
    [sourceCopy sharePodcastTitle];
  }

  else
  {
    [sourceCopy shareEpisodeTitle];
  }
  v4 = ;

  if (v4)
  {
    v5 = [NSString stringWithFormat:@"<strong>%@</strong>", v4];
  }

  else
  {
    v5 = &stru_1004F3018;
  }

  return v5;
}

+ (id)_subtitleHTMLForDataSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy currentShareMode] == 1)
  {
    [sourceCopy shareProvider];
  }

  else
  {
    [sourceCopy sharePodcastTitle];
  }
  v4 = ;

  if (v4)
  {
    v5 = [NSString stringWithFormat:@"<br/>%@", v4];
  }

  else
  {
    v5 = &stru_1004F3018;
  }

  return v5;
}

+ (id)_descriptionHTMLForDataSource:(id)source
{
  sourceCopy = source;
  shareDescription = [sourceCopy shareDescription];
  if (shareDescription)
  {
    shareDescription2 = [sourceCopy shareDescription];
    v6 = [NSString stringWithFormat:@"<br/><br/>%@", shareDescription2];
  }

  else
  {
    v6 = &stru_1004F3018;
  }

  return v6;
}

+ (id)_footerHTMLForDataSource:(id)source
{
  shareURL = [source shareURL];
  absoluteString = [shareURL absoluteString];

  v5 = [NSString stringWithFormat:@"<a href=%@>%@</a>", absoluteString, absoluteString];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"SHARE_EMAIL_FOOTER_FORMAT" value:&stru_1004F3018 table:0];

  v8 = [NSString stringWithFormat:@"<p>%@</p>", v7];
  v9 = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v5];

  return v9;
}

+ (id)_bodyForShareEmailWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = [NSMutableString stringWithString:@"<html><body>"];
  v6 = [self _titleHTMLForDataSource:sourceCopy];
  [v5 appendString:v6];

  v7 = [self _subtitleHTMLForDataSource:sourceCopy];
  [v5 appendString:v7];

  v8 = [self _descriptionHTMLForDataSource:sourceCopy];
  [v5 appendString:v8];

  v9 = [self _footerHTMLForDataSource:sourceCopy];

  [v5 appendString:v9];
  [v5 appendString:@"</body></html>"];

  return v5;
}

@end