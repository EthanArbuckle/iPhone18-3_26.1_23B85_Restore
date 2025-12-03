@interface ANAnnouncementRequest
+ (id)requestWithContent:(id)content destination:(id)destination;
- (ANAnnouncementRequest)initWithCoder:(id)coder;
- (ANAnnouncementRequest)initWithContent:(id)content destination:(id)destination;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANAnnouncementRequest

- (ANAnnouncementRequest)initWithContent:(id)content destination:(id)destination
{
  contentCopy = content;
  destinationCopy = destination;
  v12.receiver = self;
  v12.super_class = ANAnnouncementRequest;
  v9 = [(ANAnnouncementRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_content, content);
    objc_storeStrong(&v10->_destination, destination);
  }

  return v10;
}

+ (id)requestWithContent:(id)content destination:(id)destination
{
  destinationCopy = destination;
  contentCopy = content;
  v7 = [[ANAnnouncementRequest alloc] initWithContent:contentCopy destination:destinationCopy];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  content = [(ANAnnouncementRequest *)self content];
  destination = [(ANAnnouncementRequest *)self destination];
  v6 = [v3 stringWithFormat:@"Content = %@, Destination = %@", content, destination];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  content = self->_content;
  coderCopy = coder;
  [coderCopy encodeObject:content forKey:@"Content"];
  [coderCopy encodeObject:self->_destination forKey:@"Destination"];
}

- (ANAnnouncementRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ANAnnouncementRequest;
  v5 = [(ANAnnouncementRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Content"];
    content = v5->_content;
    v5->_content = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Destination"];
    destination = v5->_destination;
    v5->_destination = v8;
  }

  return v5;
}

@end