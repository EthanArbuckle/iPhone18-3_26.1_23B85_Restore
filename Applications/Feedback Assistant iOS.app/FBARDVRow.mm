@interface FBARDVRow
- (FBARDVRow)initWithTitle:(id)title subtitle:(id)subtitle object:(id)object;
@end

@implementation FBARDVRow

- (FBARDVRow)initWithTitle:(id)title subtitle:(id)subtitle object:(id)object
{
  titleCopy = title;
  subtitleCopy = subtitle;
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = FBARDVRow;
  v12 = [(FBARDVRow *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_subtitle, subtitle);
    objc_storeStrong(&v13->_object, object);
  }

  return v13;
}

@end