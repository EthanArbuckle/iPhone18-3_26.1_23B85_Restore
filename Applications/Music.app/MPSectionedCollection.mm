@interface MPSectionedCollection
- (id)filteredWithSections:(id)a3;
@end

@implementation MPSectionedCollection

- (id)filteredWithSections:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000FA3E8;
  v8[3] = &unk_101098500;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = self;
  v4 = v10;
  v5 = v9;
  [(MPSectionedCollection *)self enumerateSectionsUsingBlock:v8];
  v6 = [v4 copy];

  return v6;
}

@end