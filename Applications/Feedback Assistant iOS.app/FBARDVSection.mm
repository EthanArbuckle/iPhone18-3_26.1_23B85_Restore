@interface FBARDVSection
- (FBARDVSection)initWithTitle:(id)title type:(unint64_t)type;
@end

@implementation FBARDVSection

- (FBARDVSection)initWithTitle:(id)title type:(unint64_t)type
{
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = FBARDVSection;
  v8 = [(FBARDVSection *)&v12 init];
  if (v8)
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:3];
    rows = v8->_rows;
    v8->_rows = v9;

    objc_storeStrong(&v8->_sectionTitle, title);
    v8->_sectionType = type;
  }

  return v8;
}

@end