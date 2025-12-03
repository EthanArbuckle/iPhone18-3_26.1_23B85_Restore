@interface CAAUSettingsView
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
@end

@implementation CAAUSettingsView

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_23719641C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371963BC();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_2371807B8(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_23719641C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371963BC();
  viewCopy = view;
  selfCopy = self;
  sub_2371808D4();

  (*(v7 + 8))(v10, v6);
}

@end