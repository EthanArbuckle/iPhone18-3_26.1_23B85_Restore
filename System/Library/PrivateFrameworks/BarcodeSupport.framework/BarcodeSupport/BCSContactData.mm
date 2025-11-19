@interface BCSContactData
- (BCSContactData)initWithCoder:(id)a3;
- (BCSContactData)initWithContact:(id)a3;
@end

@implementation BCSContactData

- (BCSContactData)initWithContact:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BCSContactData;
  v5 = [(BCSContactData *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    contact = v5->_contact;
    v5->_contact = v6;

    v8 = v5;
  }

  return v5;
}

- (BCSContactData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 _bcs_strictlyDecodeObjectOfClass:getCNContactClass() forKey:@"contact"];

  v6 = [(BCSContactData *)self initWithContact:v5];
  return v6;
}

@end