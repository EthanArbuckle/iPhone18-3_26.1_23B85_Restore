@interface AAUISpyglassSpecifierRowModel
- (id)initForSpecifierType:(int64_t)type;
@end

@implementation AAUISpyglassSpecifierRowModel

- (id)initForSpecifierType:(int64_t)type
{
  v13.receiver = self;
  v13.super_class = AAUISpyglassSpecifierRowModel;
  v4 = [(AAUISpyglassSpecifierRowModel *)&v13 init];
  if (v4)
  {
    v5 = type - 1;
    if ((type - 1) <= 3)
    {
      v6 = off_1E820C790[v5];
      v7 = off_1E820C7B0[v5];
      v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:v6 value:&stru_1F447F790 table:@"Localizable"];
      title = v4->_title;
      v4->_title = v9;

      iconName = v4->_iconName;
      v4->_iconName = &v7->isa;
    }
  }

  return v4;
}

@end