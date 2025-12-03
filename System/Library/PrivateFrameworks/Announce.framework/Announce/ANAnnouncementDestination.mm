@interface ANAnnouncementDestination
+ (ANAnnouncementDestination)destinationWithHomeIdentifier:(id)identifier zoneIdentifiers:(id)identifiers roomIdentifiers:(id)roomIdentifiers;
+ (ANAnnouncementDestination)destinationWithHomeName:(id)name zoneNames:(id)names roomNames:(id)roomNames;
+ (ANAnnouncementDestination)destinationWithReplyToAnnouncementIdentifier:(id)identifier;
+ (id)stringFromAnnouncementDestinationType:(unint64_t)type;
- (ANAnnouncementDestination)init;
- (ANAnnouncementDestination)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANAnnouncementDestination

- (ANAnnouncementDestination)init
{
  v3.receiver = self;
  v3.super_class = ANAnnouncementDestination;
  return [(ANAnnouncementDestination *)&v3 init];
}

+ (ANAnnouncementDestination)destinationWithHomeName:(id)name zoneNames:(id)names roomNames:(id)roomNames
{
  roomNamesCopy = roomNames;
  namesCopy = names;
  nameCopy = name;
  v10 = objc_opt_new();
  [v10 setType:0];
  [v10 setHomeObject:nameCopy];

  [v10 setZoneObjects:namesCopy];
  [v10 setRoomObjects:roomNamesCopy];

  return v10;
}

+ (ANAnnouncementDestination)destinationWithHomeIdentifier:(id)identifier zoneIdentifiers:(id)identifiers roomIdentifiers:(id)roomIdentifiers
{
  roomIdentifiersCopy = roomIdentifiers;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  v10 = objc_opt_new();
  [v10 setType:1];
  [v10 setHomeObject:identifierCopy];

  [v10 setZoneObjects:identifiersCopy];
  [v10 setRoomObjects:roomIdentifiersCopy];

  return v10;
}

+ (ANAnnouncementDestination)destinationWithReplyToAnnouncementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setType:2];
  [v4 setHomeObject:&stru_2836DAA20];
  v5 = MEMORY[0x277CBEBF8];
  [v4 setZoneObjects:MEMORY[0x277CBEBF8]];
  [v4 setRoomObjects:v5];
  [v4 setAnnouncementIdentifier:identifierCopy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  type = [(ANAnnouncementDestination *)self type];
  v5 = [ANAnnouncementDestination stringFromAnnouncementDestinationType:[(ANAnnouncementDestination *)self type]];
  homeObject = [(ANAnnouncementDestination *)self homeObject];
  zoneObjects = [(ANAnnouncementDestination *)self zoneObjects];
  roomObjects = [(ANAnnouncementDestination *)self roomObjects];
  announcementIdentifier = [(ANAnnouncementDestination *)self announcementIdentifier];
  v10 = [v3 stringWithFormat:@"Type = [%lu - %@], Home = %@, Zones = %@, Rooms = %@, Replying to AnnouncementID = %@, Replying to Sender = %d", type, v5, homeObject, zoneObjects, roomObjects, announcementIdentifier, -[ANAnnouncementDestination replyToSender](self, "replyToSender")];

  return v10;
}

+ (id)stringFromAnnouncementDestinationType:(unint64_t)type
{
  if (type > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2784E22F0[type];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[ANAnnouncementDestination type](self, "type")}];
  [coderCopy encodeObject:v6 forKey:@"Type"];

  homeObject = [(ANAnnouncementDestination *)self homeObject];
  [coderCopy encodeObject:homeObject forKey:@"Home"];

  zoneObjects = [(ANAnnouncementDestination *)self zoneObjects];
  [coderCopy encodeObject:zoneObjects forKey:@"Zones"];

  roomObjects = [(ANAnnouncementDestination *)self roomObjects];
  [coderCopy encodeObject:roomObjects forKey:@"Rooms"];

  announcementIdentifier = [(ANAnnouncementDestination *)self announcementIdentifier];
  [coderCopy encodeObject:announcementIdentifier forKey:@"AnnouncementIdentifier"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANAnnouncementDestination replyToSender](self, "replyToSender")}];
  [coderCopy encodeObject:v11 forKey:@"ReplyToSender"];
}

- (ANAnnouncementDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = ANAnnouncementDestination;
  v5 = [(ANAnnouncementDestination *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Type"];
    v7 = v6;
    if (v6)
    {
      v5->_type = [v6 unsignedIntValue];
    }

    type = [(ANAnnouncementDestination *)v5 type];
    if (type == 2)
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
      if (type > 1)
      {

        v27 = 0;
        goto LABEL_16;
      }

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Home"];
      v10 = v5->_homeObject;
      v5->_homeObject = v9;

      v11 = MEMORY[0x277CBEB98];
      v12 = objc_opt_class();
      roomObjects = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      v14 = [coderCopy decodeObjectOfClasses:roomObjects forKey:@"Zones"];
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

      v18 = [coderCopy decodeObjectOfClasses:roomObjects forKey:@"Rooms"];
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

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncementIdentifier"];
    announcementIdentifier = v5->_announcementIdentifier;
    v5->_announcementIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReplyToSender"];
    v5->_replyToSender = [v26 BOOLValue];
  }

  v27 = v5;
LABEL_16:

  return v27;
}

@end