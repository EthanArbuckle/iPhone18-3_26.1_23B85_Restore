@interface MPMediaQueryMutableSectionInfo
- (void)addSectionWithHeaderTitle:(id)title sectionIndexTitleIndex:(unint64_t)index count:(unint64_t)count;
@end

@implementation MPMediaQueryMutableSectionInfo

- (void)addSectionWithHeaderTitle:(id)title sectionIndexTitleIndex:(unint64_t)index count:(unint64_t)count
{
  titleCopy = title;
  _init = [[MPMediaQuerySection alloc] _init];
  [_init setTitle:titleCopy];

  [_init setSectionIndexTitleIndex:index];
  [_init setRange:{-[MPMediaQuerySectionInfo count](self, "count"), count}];
  sections = self->super._sections;
  if (!sections)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32];
    v11 = self->super._sections;
    self->super._sections = v10;

    sections = self->super._sections;
  }

  [(NSArray *)sections addObject:_init];
}

@end