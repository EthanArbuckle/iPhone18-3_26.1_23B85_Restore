@interface NTKParmesanShuffleSelection
+ (id)initDaily;
+ (id)peopleDetailTitleFor:(id)a3;
- (NSString)collectionIdentifier;
- (NTKParmesanShuffleSelection)init;
- (NTKParmesanShuffleSelection)initWithCollection:(id)a3;
- (NTKParmesanShuffleSelection)initWithDaily;
- (NTKParmesanShuffleSelection)initWithManualSelection:(id)a3;
- (NTKParmesanShuffleSelection)initWithShuffleTypesAsNSNumbers:(id)a3 personIdentifiers:(id)a4;
- (id)shuffleTypesAsNSNumbers;
@end

@implementation NTKParmesanShuffleSelection

- (NSString)collectionIdentifier
{
  if (*(self + OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier + 8))
  {

    v2 = sub_23BFFA2C0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NTKParmesanShuffleSelection)initWithCollection:(id)a3
{
  v4 = sub_23BFFA300();
  *(self + OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes) = 0;
  *(self + OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers) = 0;
  v5 = (self + OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier);
  *v5 = v4;
  v5[1] = v6;
  *(self + OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection) = 0;
  *(self + OBJC_IVAR___NTKParmesanShuffleSelection_isDaily) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ParmesanShuffleSelection();
  return [(NTKParmesanShuffleSelection *)&v8 init];
}

- (NTKParmesanShuffleSelection)initWithManualSelection:(id)a3
{
  v4 = sub_23BFFA460();
  *(self + OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes) = 0;
  *(self + OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers) = 0;
  v5 = (self + OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier);
  *v5 = 0;
  v5[1] = 0;
  *(self + OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection) = v4;
  *(self + OBJC_IVAR___NTKParmesanShuffleSelection_isDaily) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ParmesanShuffleSelection();
  return [(NTKParmesanShuffleSelection *)&v7 init];
}

- (NTKParmesanShuffleSelection)initWithDaily
{
  *(self + OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes) = 0;
  *(self + OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers) = 0;
  v2 = (self + OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(self + OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection) = 0;
  *(self + OBJC_IVAR___NTKParmesanShuffleSelection_isDaily) = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ParmesanShuffleSelection();
  return [(NTKParmesanShuffleSelection *)&v4 init];
}

+ (id)initDaily
{
  v2 = type metadata accessor for ParmesanShuffleSelection();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers] = 0;
  v4 = &v3[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
  *v4 = 0;
  v4[1] = 0;
  *&v3[OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection] = 0;
  v3[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily] = 1;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

- (NTKParmesanShuffleSelection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NTKParmesanShuffleSelection)initWithShuffleTypesAsNSNumbers:(id)a3 personIdentifiers:(id)a4
{
  sub_23BF4BDF0(0, &qword_27E1E0C68);
  v5 = sub_23BFFA460();
  if (a4)
  {
    v6 = v5;
    v7 = sub_23BFFA460();
    v5 = v6;
  }

  else
  {
    v7 = 0;
  }

  return sub_23BFB8C70(v5, v7);
}

- (id)shuffleTypesAsNSNumbers
{
  v2 = self;
  sub_23BFB8EF0();

  sub_23BF4BDF0(0, &qword_27E1E0C68);
  v3 = sub_23BFFA450();

  return v3;
}

+ (id)peopleDetailTitleFor:(id)a3
{
  if (a3)
  {
    v3 = sub_23BFFA460();
  }

  else
  {
    v3 = 0;
  }

  sub_23BFBAED0(v3);

  v4 = sub_23BFFA2C0();

  return v4;
}

@end