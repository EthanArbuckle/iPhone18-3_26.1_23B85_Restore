@interface FBARDVRow
- (FBARDVRow)initWithTitle:(id)a3 subtitle:(id)a4 object:(id)a5;
@end

@implementation FBARDVRow

- (FBARDVRow)initWithTitle:(id)a3 subtitle:(id)a4 object:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FBARDVRow;
  v12 = [(FBARDVRow *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_subtitle, a4);
    objc_storeStrong(&v13->_object, a5);
  }

  return v13;
}

@end