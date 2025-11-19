@interface GPExportablePhotoAsset
- (GPExportablePhotoAsset)init;
- (GPExportablePhotoAsset)initWithCoder:(id)a3;
- (GPExportablePhotoAsset)initWithIdentifier:(id)a3 imageURLWrapper:(id)a4 previewImage:(id)a5 pixelWidth:(id)a6 pixelHeight:(id)a7 creationDate:(id)a8 recipeData:(id)a9;
- (GPGenerationRecipeData)recipeData;
- (NSDate)creationDate;
- (NSString)identifier;
- (id)_recipeData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GPExportablePhotoAsset

- (GPExportablePhotoAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURLWrapper"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previewImage"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pixelWidth"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pixelHeight"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipeData"];

  v12 = [(GPExportablePhotoAsset *)self initWithIdentifier:v5 imageURLWrapper:v6 previewImage:v7 pixelWidth:v8 pixelHeight:v9 creationDate:v10 recipeData:v11];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GPExportablePhotoAsset *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(GPExportablePhotoAsset *)self imageURLWrapper];
  [v4 encodeObject:v6 forKey:@"imageURLWrapper"];

  v7 = [(GPExportablePhotoAsset *)self previewImage];
  [v4 encodeObject:v7 forKey:@"previewImage"];

  v8 = [(GPExportablePhotoAsset *)self pixelWidth];
  [v4 encodeObject:v8 forKey:@"pixelWidth"];

  v9 = [(GPExportablePhotoAsset *)self pixelHeight];
  [v4 encodeObject:v9 forKey:@"pixelHeight"];

  v10 = [(GPExportablePhotoAsset *)self creationDate];
  [v4 encodeObject:v10 forKey:@"creationDate"];

  v11 = [(GPExportablePhotoAsset *)self recipeData];
  [v4 encodeObject:v11 forKey:@"recipeData"];
}

- (NSString)identifier
{
  v2 = self;
  v3 = [(GPExportablePhotoAsset *)v2 _identifier];
  sub_1D2AC6FF4();
  swift_unknownObjectRelease();

  swift_dynamicCast();
  v4 = sub_1D2AC6BF4();

  return v4;
}

- (NSDate)creationDate
{
  v3 = sub_1D2AC5F54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = self;
  v9 = [(GPExportablePhotoAsset *)v8 _creationDate];
  sub_1D2AC6FF4();
  swift_unknownObjectRelease();

  swift_dynamicCast();
  v10 = sub_1D2AC5F34();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (GPGenerationRecipeData)recipeData
{
  v2 = self;
  v3 = GPExportablePhotoAsset.recipeData.getter();

  return v3;
}

- (id)_recipeData
{
  sub_1D2A613A0(self + OBJC_IVAR___GPExportablePhotoAsset__recipeData, v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x1EEE9AC00](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_1D2AC7344();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (GPExportablePhotoAsset)initWithIdentifier:(id)a3 imageURLWrapper:(id)a4 previewImage:(id)a5 pixelWidth:(id)a6 pixelHeight:(id)a7 creationDate:(id)a8 recipeData:(id)a9
{
  v13 = sub_1D2AC5F54();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D2AC6C24();
  v19 = v18;
  sub_1D2AC5F44();
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a9;
  return GPExportablePhotoAsset.init(identifier:imageURLWrapper:previewImage:pixelWidth:pixelHeight:creationDate:recipeData:)(v17, v19, v20, v21, v22, v23, v16, a9);
}

- (GPExportablePhotoAsset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end