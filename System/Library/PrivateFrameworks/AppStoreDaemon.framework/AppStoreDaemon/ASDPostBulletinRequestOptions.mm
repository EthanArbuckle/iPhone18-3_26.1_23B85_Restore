@interface ASDPostBulletinRequestOptions
- (ASDPostBulletinRequestOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPostBulletinRequestOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDPostBulletinRequestOptions allocWithZone:](ASDPostBulletinRequestOptions init];
  v6 = [(NSString *)self->_actionButtonTitle copyWithZone:zone];
  actionButtonTitle = v5->_actionButtonTitle;
  v5->_actionButtonTitle = v6;

  v8 = [(NSURL *)self->_actionButtonURL copyWithZone:zone];
  actionButtonURL = v5->_actionButtonURL;
  v5->_actionButtonURL = v8;

  v10 = [(NSDate *)self->_creationDate copyWithZone:zone];
  creationDate = v5->_creationDate;
  v5->_creationDate = v10;

  v5->_destinations = self->_destinations;
  v12 = [(NSURL *)self->_launchURL copyWithZone:zone];
  launchURL = v5->_launchURL;
  v5->_launchURL = v12;

  v14 = [(NSString *)self->_message copyWithZone:zone];
  message = v5->_message;
  v5->_message = v14;

  v16 = [(NSString *)self->_recordID copyWithZone:zone];
  recordID = v5->_recordID;
  v5->_recordID = v16;

  v18 = [(NSString *)self->_title copyWithZone:zone];
  title = v5->_title;
  v5->_title = v18;

  return v5;
}

- (ASDPostBulletinRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = ASDPostBulletinRequestOptions;
  v5 = [(ASDRequestOptions *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionButtonTitle"];
    actionButtonTitle = v5->_actionButtonTitle;
    v5->_actionButtonTitle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionButtonURL"];
    actionButtonURL = v5->_actionButtonURL;
    v5->_actionButtonURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;

    v5->_destinations = [coderCopy decodeIntegerForKey:@"destinations"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchURL"];
    launchURL = v5->_launchURL;
    v5->_launchURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
    recordID = v5->_recordID;
    v5->_recordID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionButtonTitle = [(ASDPostBulletinRequestOptions *)self actionButtonTitle];
  [coderCopy encodeObject:actionButtonTitle forKey:@"actionButtonTitle"];

  actionButtonURL = [(ASDPostBulletinRequestOptions *)self actionButtonURL];
  [coderCopy encodeObject:actionButtonURL forKey:@"actionButtonURL"];

  creationDate = [(ASDPostBulletinRequestOptions *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  [coderCopy encodeInteger:-[ASDPostBulletinRequestOptions destinations](self forKey:{"destinations"), @"destinations"}];
  launchURL = [(ASDPostBulletinRequestOptions *)self launchURL];
  [coderCopy encodeObject:launchURL forKey:@"launchURL"];

  message = [(ASDPostBulletinRequestOptions *)self message];
  [coderCopy encodeObject:message forKey:@"message"];

  recordID = [(ASDPostBulletinRequestOptions *)self recordID];
  [coderCopy encodeObject:recordID forKey:@"recordID"];

  title = [(ASDPostBulletinRequestOptions *)self title];
  [coderCopy encodeObject:title forKey:@"title"];
}

@end