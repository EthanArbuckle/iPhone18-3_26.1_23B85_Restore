@interface CAAUSettingsView
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
@end

@implementation CAAUSettingsView

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_23719641C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371963BC();
  v11 = a3;
  v12 = self;
  v13 = sub_2371807B8(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_23719641C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371963BC();
  v11 = a3;
  v12 = self;
  sub_2371808D4();

  (*(v7 + 8))(v10, v6);
}

@end