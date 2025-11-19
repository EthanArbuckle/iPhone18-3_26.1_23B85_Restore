@interface AMLFeaturesDonation
- (AMLFeaturesConfiguration)featuresConfiguration;
- (id)donateFeature:(id)a3 metadata:(id)a4 completionBlock:(id)a5;
- (id)donateFeatureDictionaries:(id)a3 metadata:(id)a4 completionBlock:(id)a5;
- (id)donateFeaturesBatch:(id)a3 metadata:(id)a4 completionBlock:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setFeaturesConfiguration:(id)a3;
@end

@implementation AMLFeaturesDonation

- (AMLFeaturesConfiguration)featuresConfiguration
{
  v2 = sub_21AEB0300();

  return v2;
}

- (void)setFeaturesConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21AEB0368(v4);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AMLFeaturesDonation.encode(with:)(v4);
}

- (id)donateFeature:(id)a3 metadata:(id)a4 completionBlock:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_21AEB390C;
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRetain();
  v10 = a4;
  v11 = self;
  v12 = sub_21AEB2E88(a3, v10, v8, v9, "Encountered error from bundle: %s while archiving feature donation: %@");
  sub_21AE9678C(v8);
  swift_unknownObjectRelease();

  return v12;
}

- (id)donateFeatureDictionaries:(id)a3 metadata:(id)a4 completionBlock:(id)a5
{
  v7 = _Block_copy(a5);
  sub_21AEA7574(&qword_27CD3D830, &qword_21AF0C488);
  v8 = sub_21AF0988C();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_21AEB390C;
  }

  else
  {
    v9 = 0;
  }

  v10 = a4;
  v11 = self;
  v12 = sub_21AEB20B8(v8, v10, v7, v9);
  sub_21AE9678C(v7);

  return v12;
}

- (id)donateFeaturesBatch:(id)a3 metadata:(id)a4 completionBlock:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_21AEB37CC;
  }

  v9 = a3;
  v10 = a4;
  v11 = self;
  v14 = sub_21AEB2E88(v9, v10, v12, v13, "Encountered error from bundle: %s while archiving batch features donation: %@");
  sub_21AE9678C(v8);

  return v14;
}

@end