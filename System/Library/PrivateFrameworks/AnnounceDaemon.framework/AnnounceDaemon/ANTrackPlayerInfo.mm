@interface ANTrackPlayerInfo
- (ANTrackPlayerInfo)initWithPlayerItem:(id)item announcementID:(id)d trackType:(int64_t)type;
- (id)description;
@end

@implementation ANTrackPlayerInfo

- (ANTrackPlayerInfo)initWithPlayerItem:(id)item announcementID:(id)d trackType:(int64_t)type
{
  itemCopy = item;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = ANTrackPlayerInfo;
  v11 = [(ANTrackPlayerInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_playerItem, item);
    objc_storeStrong(&v12->_announcementID, d);
    v12->_trackType = type;
    v12->_completed = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  announcementID = [(ANTrackPlayerInfo *)self announcementID];
  playerItem = [(ANTrackPlayerInfo *)self playerItem];
  v6 = [v3 stringWithFormat:@"AnnouncementID = %@, Player Item = %@, Track Type = %ld, completed = %d", announcementID, playerItem, -[ANTrackPlayerInfo trackType](self, "trackType"), -[ANTrackPlayerInfo completed](self, "completed")];

  return v6;
}

@end