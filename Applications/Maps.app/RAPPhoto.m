@interface RAPPhoto
- (RAPPhoto)initWithPhoto:(id)a3 date:(id)a4 location:(id)a5;
@end

@implementation RAPPhoto

- (RAPPhoto)initWithPhoto:(id)a3 date:(id)a4 location:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = RAPPhoto;
  v12 = [(RAPPhoto *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photo, a3);
    v14 = [v11 copy];
    location = v13->_location;
    v13->_location = v14;

    v16 = [v10 copy];
    date = v13->_date;
    v13->_date = v16;

    v18 = +[NSUUID UUID];
    v19 = [v18 UUIDString];
    identifier = v13->_identifier;
    v13->_identifier = v19;
  }

  return v13;
}

@end