@interface ANTrackPlayerInfo
- (ANTrackPlayerInfo)initWithPlayerItem:(id)a3 announcementID:(id)a4 trackType:(int64_t)a5;
- (id)description;
@end

@implementation ANTrackPlayerInfo

- (ANTrackPlayerInfo)initWithPlayerItem:(id)a3 announcementID:(id)a4 trackType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ANTrackPlayerInfo;
  v11 = [(ANTrackPlayerInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_playerItem, a3);
    objc_storeStrong(&v12->_announcementID, a4);
    v12->_trackType = a5;
    v12->_completed = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ANTrackPlayerInfo *)self announcementID];
  v5 = [(ANTrackPlayerInfo *)self playerItem];
  v6 = [v3 stringWithFormat:@"AnnouncementID = %@, Player Item = %@, Track Type = %ld, completed = %d", v4, v5, -[ANTrackPlayerInfo trackType](self, "trackType"), -[ANTrackPlayerInfo completed](self, "completed")];

  return v6;
}

@end