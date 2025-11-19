@interface MTPodcastParser
- (MTPodcastParser)init;
@end

@implementation MTPodcastParser

- (MTPodcastParser)init
{
  v6.receiver = self;
  v6.super_class = MTPodcastParser;
  v2 = [(MTPodcastParser *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dateParser = v2->_dateParser;
    v2->_dateParser = v3;
  }

  return v2;
}

@end