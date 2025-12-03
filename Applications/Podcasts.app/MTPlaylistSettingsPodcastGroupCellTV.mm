@interface MTPlaylistSettingsPodcastGroupCellTV
- (MTPlaylistSettingsPodcastGroupCellTV)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation MTPlaylistSettingsPodcastGroupCellTV

- (MTPlaylistSettingsPodcastGroupCellTV)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = MTPlaylistSettingsPodcastGroupCellTV;
  return [(MTTableViewCell *)&v5 initWithStyle:0 reuseIdentifier:identifier];
}

@end