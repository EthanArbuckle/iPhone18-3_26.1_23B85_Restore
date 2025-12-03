@interface ANAnnouncementResult
+ (id)resultWithAnnouncementID:(id)d destination:(id)destination;
- (ANAnnouncementResult)initWithAnnouncementID:(id)d destination:(id)destination;
- (ANAnnouncementResult)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANAnnouncementResult

- (ANAnnouncementResult)initWithAnnouncementID:(id)d destination:(id)destination
{
  dCopy = d;
  destinationCopy = destination;
  v12.receiver = self;
  v12.super_class = ANAnnouncementResult;
  v9 = [(ANAnnouncementResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deliveredAnnouncementID, d);
    objc_storeStrong(&v10->_destination, destination);
  }

  return v10;
}

+ (id)resultWithAnnouncementID:(id)d destination:(id)destination
{
  destinationCopy = destination;
  dCopy = d;
  v7 = [[ANAnnouncementResult alloc] initWithAnnouncementID:dCopy destination:destinationCopy];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  deliveredAnnouncementID = [(ANAnnouncementResult *)self deliveredAnnouncementID];
  destination = [(ANAnnouncementResult *)self destination];
  v6 = [v3 stringWithFormat:@"Delivered Announcement ID = %@, Destination = %@", deliveredAnnouncementID, destination];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deliveredAnnouncementID = [(ANAnnouncementResult *)self deliveredAnnouncementID];
  [coderCopy encodeObject:deliveredAnnouncementID forKey:@"AnnouncmentID"];

  destination = [(ANAnnouncementResult *)self destination];
  [coderCopy encodeObject:destination forKey:@"Destination"];
}

- (ANAnnouncementResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ANAnnouncementResult;
  v5 = [(ANAnnouncementResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncmentID"];
    deliveredAnnouncementID = v5->_deliveredAnnouncementID;
    v5->_deliveredAnnouncementID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Destination"];
    destination = v5->_destination;
    v5->_destination = v8;
  }

  return v5;
}

@end