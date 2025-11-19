@interface STKAnimatedImage
- (STKAnimatedImage)init;
- (STKAnimatedImage)initWithData:(id)a3 maxCount:(int64_t)a4 maxDimension:(double)a5 identifier:(id)a6;
- (STKAnimatedImage)initWithImages:(id)a3 durations:(id)a4 identifier:(id)a5;
- (STKAnimatedImage)initWithURL:(id)a3 maxCount:(int64_t)a4 maxDimension:(double)a5 identifier:(id)a6;
@end

@implementation STKAnimatedImage

- (STKAnimatedImage)initWithData:(id)a3 maxCount:(int64_t)a4 maxDimension:(double)a5 identifier:(id)a6
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = a3;
  v14 = a6;
  v15 = sub_19A7A8E34();
  v17 = v16;

  if (v14)
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

  v20 = sub_19A625940(v15, v17, a4, v12, a5);
  sub_19A612F14(v15, v17);
  return v20;
}

- (STKAnimatedImage)initWithImages:(id)a3 durations:(id)a4 identifier:(id)a5
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  sub_19A5F5028(0, &unk_1EAFCC1A0);
  v9 = sub_19A7AB254();
  sub_19A5F5028(0, &qword_1ED8B1FE0);
  v10 = sub_19A7AB254();
  if (a5)
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

- (STKAnimatedImage)initWithURL:(id)a3 maxCount:(int64_t)a4 maxDimension:(double)a5 identifier:(id)a6
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_19A7A8DF4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A8D94();
  if (a6)
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
  return AnimatedImage.init(url:maxCount:maxDimension:identifier:)(v14, a4, v11, a5);
}

- (STKAnimatedImage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end