@interface RAPPhoto
- (RAPPhoto)initWithPhoto:(id)photo date:(id)date location:(id)location;
@end

@implementation RAPPhoto

- (RAPPhoto)initWithPhoto:(id)photo date:(id)date location:(id)location
{
  photoCopy = photo;
  dateCopy = date;
  locationCopy = location;
  v22.receiver = self;
  v22.super_class = RAPPhoto;
  v12 = [(RAPPhoto *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photo, photo);
    v14 = [locationCopy copy];
    location = v13->_location;
    v13->_location = v14;

    v16 = [dateCopy copy];
    date = v13->_date;
    v13->_date = v16;

    v18 = +[NSUUID UUID];
    uUIDString = [v18 UUIDString];
    identifier = v13->_identifier;
    v13->_identifier = uUIDString;
  }

  return v13;
}

@end