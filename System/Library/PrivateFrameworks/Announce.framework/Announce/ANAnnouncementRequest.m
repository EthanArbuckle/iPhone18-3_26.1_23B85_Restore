@interface ANAnnouncementRequest
+ (id)requestWithContent:(id)a3 destination:(id)a4;
- (ANAnnouncementRequest)initWithCoder:(id)a3;
- (ANAnnouncementRequest)initWithContent:(id)a3 destination:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANAnnouncementRequest

- (ANAnnouncementRequest)initWithContent:(id)a3 destination:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ANAnnouncementRequest;
  v9 = [(ANAnnouncementRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_content, a3);
    objc_storeStrong(&v10->_destination, a4);
  }

  return v10;
}

+ (id)requestWithContent:(id)a3 destination:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ANAnnouncementRequest alloc] initWithContent:v6 destination:v5];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ANAnnouncementRequest *)self content];
  v5 = [(ANAnnouncementRequest *)self destination];
  v6 = [v3 stringWithFormat:@"Content = %@, Destination = %@", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  content = self->_content;
  v5 = a3;
  [v5 encodeObject:content forKey:@"Content"];
  [v5 encodeObject:self->_destination forKey:@"Destination"];
}

- (ANAnnouncementRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ANAnnouncementRequest;
  v5 = [(ANAnnouncementRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Content"];
    content = v5->_content;
    v5->_content = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Destination"];
    destination = v5->_destination;
    v5->_destination = v8;
  }

  return v5;
}

@end