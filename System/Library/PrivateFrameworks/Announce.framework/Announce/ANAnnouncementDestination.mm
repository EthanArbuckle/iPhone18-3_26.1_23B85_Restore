@interface ANAnnouncementDestination
+ (ANAnnouncementDestination)destinationWithHomeIdentifier:(id)a3 zoneIdentifiers:(id)a4 roomIdentifiers:(id)a5;
+ (ANAnnouncementDestination)destinationWithHomeName:(id)a3 zoneNames:(id)a4 roomNames:(id)a5;
+ (ANAnnouncementDestination)destinationWithReplyToAnnouncementIdentifier:(id)a3;
+ (id)stringFromAnnouncementDestinationType:(unint64_t)a3;
- (ANAnnouncementDestination)init;
- (ANAnnouncementDestination)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANAnnouncementDestination

- (ANAnnouncementDestination)init
{
  v3.receiver = self;
  v3.super_class = ANAnnouncementDestination;
  return [(ANAnnouncementDestination *)&v3 init];
}

+ (ANAnnouncementDestination)destinationWithHomeName:(id)a3 zoneNames:(id)a4 roomNames:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setType:0];
  [v10 setHomeObject:v9];

  [v10 setZoneObjects:v8];
  [v10 setRoomObjects:v7];

  return v10;
}

+ (ANAnnouncementDestination)destinationWithHomeIdentifier:(id)a3 zoneIdentifiers:(id)a4 roomIdentifiers:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setType:1];
  [v10 setHomeObject:v9];

  [v10 setZoneObjects:v8];
  [v10 setRoomObjects:v7];

  return v10;
}

+ (ANAnnouncementDestination)destinationWithReplyToAnnouncementIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setType:2];
  [v4 setHomeObject:&stru_2836DAA20];
  v5 = MEMORY[0x277CBEBF8];
  [v4 setZoneObjects:MEMORY[0x277CBEBF8]];
  [v4 setRoomObjects:v5];
  [v4 setAnnouncementIdentifier:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ANAnnouncementDestination *)self type];
  v5 = [ANAnnouncementDestination stringFromAnnouncementDestinationType:[(ANAnnouncementDestination *)self type]];
  v6 = [(ANAnnouncementDestination *)self homeObject];
  v7 = [(ANAnnouncementDestination *)self zoneObjects];
  v8 = [(ANAnnouncementDestination *)self roomObjects];
  v9 = [(ANAnnouncementDestination *)self announcementIdentifier];
  v10 = [v3 stringWithFormat:@"Type = [%lu - %@], Home = %@, Zones = %@, Rooms = %@, Replying to AnnouncementID = %@, Replying to Sender = %d", v4, v5, v6, v7, v8, v9, -[ANAnnouncementDestination replyToSender](self, "replyToSender")];

  return v10;
}

+ (id)stringFromAnnouncementDestinationType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2784E22F0[a3];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[ANAnnouncementDestination type](self, "type")}];
  [v5 encodeObject:v6 forKey:@"Type"];

  v7 = [(ANAnnouncementDestination *)self homeObject];
  [v5 encodeObject:v7 forKey:@"Home"];

  v8 = [(ANAnnouncementDestination *)self zoneObjects];
  [v5 encodeObject:v8 forKey:@"Zones"];

  v9 = [(ANAnnouncementDestination *)self roomObjects];
  [v5 encodeObject:v9 forKey:@"Rooms"];

  v10 = [(ANAnnouncementDestination *)self announcementIdentifier];
  [v5 encodeObject:v10 forKey:@"AnnouncementIdentifier"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANAnnouncementDestination replyToSender](self, "replyToSender")}];
  [v5 encodeObject:v11 forKey:@"ReplyToSender"];
}

- (ANAnnouncementDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = ANAnnouncementDestination;
  v5 = [(ANAnnouncementDestination *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Type"];
    v7 = v6;
    if (v6)
    {
      v5->_type = [v6 unsignedIntValue];
    }

    v8 = [(ANAnnouncementDestination *)v5 type];
    if (v8 == 2)
    {
      homeObject = v5->_homeObject;
      v5->_homeObject = &stru_2836DAA20;

      zoneObjects = v5->_zoneObjects;
      v23 = MEMORY[0x277CBEBF8];
      v5->_zoneObjects = MEMORY[0x277CBEBF8];

      roomObjects = v5->_roomObjects;
      v5->_roomObjects = v23;
    }

    else
    {
      if (v8 > 1)
      {

        v27 = 0;
        goto LABEL_16;
      }

      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Home"];
      v10 = v5->_homeObject;
      v5->_homeObject = v9;

      v11 = MEMORY[0x277CBEB98];
      v12 = objc_opt_class();
      roomObjects = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      v14 = [v4 decodeObjectOfClasses:roomObjects forKey:@"Zones"];
      v15 = v14;
      v16 = MEMORY[0x277CBEBF8];
      if (v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = MEMORY[0x277CBEBF8];
      }

      objc_storeStrong(&v5->_zoneObjects, v17);

      v18 = [v4 decodeObjectOfClasses:roomObjects forKey:@"Rooms"];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v16;
      }

      objc_storeStrong(&v5->_roomObjects, v20);
    }

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncementIdentifier"];
    announcementIdentifier = v5->_announcementIdentifier;
    v5->_announcementIdentifier = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReplyToSender"];
    v5->_replyToSender = [v26 BOOLValue];
  }

  v27 = v5;
LABEL_16:

  return v27;
}

@end