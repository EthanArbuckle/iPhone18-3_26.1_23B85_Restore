@interface GPExportablePhotoAsset
- (GPExportablePhotoAsset)init;
- (GPExportablePhotoAsset)initWithCoder:(id)coder;
- (GPExportablePhotoAsset)initWithIdentifier:(id)identifier imageURLWrapper:(id)wrapper previewImage:(id)image pixelWidth:(id)width pixelHeight:(id)height creationDate:(id)date recipeData:(id)data;
- (GPGenerationRecipeData)recipeData;
- (NSDate)creationDate;
- (NSString)identifier;
- (id)_recipeData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GPExportablePhotoAsset

- (GPExportablePhotoAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURLWrapper"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previewImage"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pixelWidth"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pixelHeight"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipeData"];

  v12 = [(GPExportablePhotoAsset *)self initWithIdentifier:v5 imageURLWrapper:v6 previewImage:v7 pixelWidth:v8 pixelHeight:v9 creationDate:v10 recipeData:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(GPExportablePhotoAsset *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  imageURLWrapper = [(GPExportablePhotoAsset *)self imageURLWrapper];
  [coderCopy encodeObject:imageURLWrapper forKey:@"imageURLWrapper"];

  previewImage = [(GPExportablePhotoAsset *)self previewImage];
  [coderCopy encodeObject:previewImage forKey:@"previewImage"];

  pixelWidth = [(GPExportablePhotoAsset *)self pixelWidth];
  [coderCopy encodeObject:pixelWidth forKey:@"pixelWidth"];

  pixelHeight = [(GPExportablePhotoAsset *)self pixelHeight];
  [coderCopy encodeObject:pixelHeight forKey:@"pixelHeight"];

  creationDate = [(GPExportablePhotoAsset *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  recipeData = [(GPExportablePhotoAsset *)self recipeData];
  [coderCopy encodeObject:recipeData forKey:@"recipeData"];
}

- (NSString)identifier
{
  selfCopy = self;
  _identifier = [(GPExportablePhotoAsset *)selfCopy _identifier];
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
  selfCopy = self;
  _creationDate = [(GPExportablePhotoAsset *)selfCopy _creationDate];
  sub_1D2AC6FF4();
  swift_unknownObjectRelease();

  swift_dynamicCast();
  v10 = sub_1D2AC5F34();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (GPGenerationRecipeData)recipeData
{
  selfCopy = self;
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

- (GPExportablePhotoAsset)initWithIdentifier:(id)identifier imageURLWrapper:(id)wrapper previewImage:(id)image pixelWidth:(id)width pixelHeight:(id)height creationDate:(id)date recipeData:(id)data
{
  v13 = sub_1D2AC5F54();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D2AC6C24();
  v19 = v18;
  sub_1D2AC5F44();
  wrapperCopy = wrapper;
  imageCopy = image;
  widthCopy = width;
  heightCopy = height;
  dataCopy = data;
  return GPExportablePhotoAsset.init(identifier:imageURLWrapper:previewImage:pixelWidth:pixelHeight:creationDate:recipeData:)(v17, v19, wrapperCopy, imageCopy, widthCopy, heightCopy, v16, data);
}

- (GPExportablePhotoAsset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end