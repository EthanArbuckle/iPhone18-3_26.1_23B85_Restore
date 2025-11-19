@interface MTPlaylistSettingsPodcastGroupCellTV
- (MTPlaylistSettingsPodcastGroupCellTV)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation MTPlaylistSettingsPodcastGroupCellTV

- (MTPlaylistSettingsPodcastGroupCellTV)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTPlaylistSettingsPodcastGroupCellTV;
  return [(MTTableViewCell *)&v5 initWithStyle:0 reuseIdentifier:a4];
}

@end