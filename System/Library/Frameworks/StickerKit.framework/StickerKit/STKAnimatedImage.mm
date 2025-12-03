@interface STKAnimatedImage
- (STKAnimatedImage)init;
- (STKAnimatedImage)initWithData:(id)data maxCount:(int64_t)count maxDimension:(double)dimension identifier:(id)identifier;
- (STKAnimatedImage)initWithImages:(id)images durations:(id)durations identifier:(id)identifier;
- (STKAnimatedImage)initWithURL:(id)l maxCount:(int64_t)count maxDimension:(double)dimension identifier:(id)identifier;
@end

@implementation STKAnimatedImage

- (STKAnimatedImage)initWithData:(id)data maxCount:(int64_t)count maxDimension:(double)dimension identifier:(id)identifier
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  dataCopy = data;
  identifierCopy = identifier;
  v15 = sub_19A7A8E34();
  v17 = v16;

  if (identifierCopy)
  {
    sub_19A7A8F44();

    v18 = sub_19A7A8F64();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  }

  else
  {
    v19 = sub_19A7A8F64();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  }

  v20 = sub_19A625940(v15, v17, count, v12, dimension);
  sub_19A612F14(v15, v17);
  return v20;
}

- (STKAnimatedImage)initWithImages:(id)images durations:(id)durations identifier:(id)identifier
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  sub_19A5F5028(0, &unk_1EAFCC1A0);
  v9 = sub_19A7AB254();
  sub_19A5F5028(0, &qword_1ED8B1FE0);
  v10 = sub_19A7AB254();
  if (identifier)
  {
    sub_19A7A8F44();
    v11 = sub_19A7A8F64();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  }

  else
  {
    v12 = sub_19A7A8F64();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  return AnimatedImage.init(images:durations:identifier:)(v9, v10, v8);
}

- (STKAnimatedImage)initWithURL:(id)l maxCount:(int64_t)count maxDimension:(double)dimension identifier:(id)identifier
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_19A7A8DF4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A8D94();
  if (identifier)
  {
    sub_19A7A8F44();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_19A7A8F64();
  (*(*(v16 - 8) + 56))(v11, v15, 1, v16);
  return AnimatedImage.init(url:maxCount:maxDimension:identifier:)(v14, count, v11, dimension);
}

- (STKAnimatedImage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end