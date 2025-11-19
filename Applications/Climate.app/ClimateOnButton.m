@interface ClimateOnButton
- (_TtC7Climate15ClimateOnButton)init;
@end

@implementation ClimateOnButton

- (_TtC7Climate15ClimateOnButton)init
{
  v3 = &self->_TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor];
  if (qword_100113ED0 != -1)
  {
    swift_once();
  }

  v4 = qword_10011B088;
  v5 = qword_10011B090;
  v6 = qword_10011B098;
  *v3 = qword_10011B088;
  *(v3 + 1) = v5;
  *(v3 + 2) = v6;
  v7 = OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  v8 = qword_100113EC8;
  v9 = v4;
  v10 = v5;

  if (v8 != -1)
  {
    swift_once();
  }

  v11 = &self->_TtC7Climate13ClimateButton_opaque[v7];
  v12 = qword_10011B070;
  v13 = *algn_10011B078;
  v14 = qword_10011B080;
  *v11 = qword_10011B070;
  *(v11 + 1) = v13;
  *(v11 + 2) = v14;
  v18.receiver = self;
  v18.super_class = type metadata accessor for ClimateOnButton();
  v15 = v12;
  v16 = v13;

  return [(ClimateButton *)&v18 init];
}

@end