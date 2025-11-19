@interface ASDPostBulletinRequestOptions
- (ASDPostBulletinRequestOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDPostBulletinRequestOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDPostBulletinRequestOptions allocWithZone:](ASDPostBulletinRequestOptions init];
  v6 = [(NSString *)self->_actionButtonTitle copyWithZone:a3];
  actionButtonTitle = v5->_actionButtonTitle;
  v5->_actionButtonTitle = v6;

  v8 = [(NSURL *)self->_actionButtonURL copyWithZone:a3];
  actionButtonURL = v5->_actionButtonURL;
  v5->_actionButtonURL = v8;

  v10 = [(NSDate *)self->_creationDate copyWithZone:a3];
  creationDate = v5->_creationDate;
  v5->_creationDate = v10;

  v5->_destinations = self->_destinations;
  v12 = [(NSURL *)self->_launchURL copyWithZone:a3];
  launchURL = v5->_launchURL;
  v5->_launchURL = v12;

  v14 = [(NSString *)self->_message copyWithZone:a3];
  message = v5->_message;
  v5->_message = v14;

  v16 = [(NSString *)self->_recordID copyWithZone:a3];
  recordID = v5->_recordID;
  v5->_recordID = v16;

  v18 = [(NSString *)self->_title copyWithZone:a3];
  title = v5->_title;
  v5->_title = v18;

  return v5;
}

- (ASDPostBulletinRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ASDPostBulletinRequestOptions;
  v5 = [(ASDRequestOptions *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionButtonTitle"];
    actionButtonTitle = v5->_actionButtonTitle;
    v5->_actionButtonTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionButtonURL"];
    actionButtonURL = v5->_actionButtonURL;
    v5->_actionButtonURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;

    v5->_destinations = [v4 decodeIntegerForKey:@"destinations"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launchURL"];
    launchURL = v5->_launchURL;
    v5->_launchURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
    recordID = v5->_recordID;
    v5->_recordID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDPostBulletinRequestOptions *)self actionButtonTitle];
  [v4 encodeObject:v5 forKey:@"actionButtonTitle"];

  v6 = [(ASDPostBulletinRequestOptions *)self actionButtonURL];
  [v4 encodeObject:v6 forKey:@"actionButtonURL"];

  v7 = [(ASDPostBulletinRequestOptions *)self creationDate];
  [v4 encodeObject:v7 forKey:@"creationDate"];

  [v4 encodeInteger:-[ASDPostBulletinRequestOptions destinations](self forKey:{"destinations"), @"destinations"}];
  v8 = [(ASDPostBulletinRequestOptions *)self launchURL];
  [v4 encodeObject:v8 forKey:@"launchURL"];

  v9 = [(ASDPostBulletinRequestOptions *)self message];
  [v4 encodeObject:v9 forKey:@"message"];

  v10 = [(ASDPostBulletinRequestOptions *)self recordID];
  [v4 encodeObject:v10 forKey:@"recordID"];

  v11 = [(ASDPostBulletinRequestOptions *)self title];
  [v4 encodeObject:v11 forKey:@"title"];
}

@end