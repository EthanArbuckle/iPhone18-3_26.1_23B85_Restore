@interface TextDrawing.View
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_TtCV16MusicApplication11TextDrawing4View)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation TextDrawing.View

- (_TtCV16MusicApplication11TextDrawing4View)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled) = 0;
  v3 = (self + OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View__textDrawingContext);
  sub_11F44(v9);
  v4 = v9[5];
  v3[4] = v9[4];
  v3[5] = v4;
  v5 = v9[7];
  v3[6] = v9[6];
  v3[7] = v5;
  v6 = v9[1];
  *v3 = v9[0];
  v3[1] = v6;
  v7 = v9[3];
  v3[2] = v9[2];
  v3[3] = v7;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  _s16MusicApplication11TextDrawingV4ViewC4drawyySo6CGRectVF_0();
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v5 = sub_AB92A0();
  v7 = v6;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TextDrawing.View();
  v8 = self;
  if ([(TextDrawing.View *)&v11 _shouldAnimatePropertyWithKey:a3]|| v5 == 0x73746E65746E6F63 && v7 == 0xE800000000000000)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_ABB3C0();
  }

  return v9 & 1;
}

@end