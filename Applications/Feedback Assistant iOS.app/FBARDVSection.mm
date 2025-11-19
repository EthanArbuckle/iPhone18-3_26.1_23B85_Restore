@interface FBARDVSection
- (FBARDVSection)initWithTitle:(id)a3 type:(unint64_t)a4;
@end

@implementation FBARDVSection

- (FBARDVSection)initWithTitle:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = FBARDVSection;
  v8 = [(FBARDVSection *)&v12 init];
  if (v8)
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:3];
    rows = v8->_rows;
    v8->_rows = v9;

    objc_storeStrong(&v8->_sectionTitle, a3);
    v8->_sectionType = a4;
  }

  return v8;
}

@end