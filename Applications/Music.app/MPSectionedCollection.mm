@interface MPSectionedCollection
- (id)filteredWithSections:(id)sections;
@end

@implementation MPSectionedCollection

- (id)filteredWithSections:(id)sections
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000FA3E8;
  v8[3] = &unk_101098500;
  sectionsCopy = sections;
  v10 = objc_opt_new();
  selfCopy = self;
  v4 = v10;
  v5 = sectionsCopy;
  [(MPSectionedCollection *)self enumerateSectionsUsingBlock:v8];
  v6 = [v4 copy];

  return v6;
}

@end