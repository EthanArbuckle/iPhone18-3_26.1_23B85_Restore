@interface ANAnnouncementResult
+ (id)resultWithAnnouncementID:(id)a3 destination:(id)a4;
- (ANAnnouncementResult)initWithAnnouncementID:(id)a3 destination:(id)a4;
- (ANAnnouncementResult)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANAnnouncementResult

- (ANAnnouncementResult)initWithAnnouncementID:(id)a3 destination:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ANAnnouncementResult;
  v9 = [(ANAnnouncementResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deliveredAnnouncementID, a3);
    objc_storeStrong(&v10->_destination, a4);
  }

  return v10;
}

+ (id)resultWithAnnouncementID:(id)a3 destination:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ANAnnouncementResult alloc] initWithAnnouncementID:v6 destination:v5];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ANAnnouncementResult *)self deliveredAnnouncementID];
  v5 = [(ANAnnouncementResult *)self destination];
  v6 = [v3 stringWithFormat:@"Delivered Announcement ID = %@, Destination = %@", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementResult *)self deliveredAnnouncementID];
  [v4 encodeObject:v5 forKey:@"AnnouncmentID"];

  v6 = [(ANAnnouncementResult *)self destination];
  [v4 encodeObject:v6 forKey:@"Destination"];
}

- (ANAnnouncementResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ANAnnouncementResult;
  v5 = [(ANAnnouncementResult *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncmentID"];
    deliveredAnnouncementID = v5->_deliveredAnnouncementID;
    v5->_deliveredAnnouncementID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Destination"];
    destination = v5->_destination;
    v5->_destination = v8;
  }

  return v5;
}

@end