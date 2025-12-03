@interface NCWaypointGlyphs
+ (id)convertedSymbolFrom:(id)from;
- (_TtC24NanoCompassComplications16NCWaypointGlyphs)init;
@end

@implementation NCWaypointGlyphs

+ (id)convertedSymbolFrom:(id)from
{
  v3 = sub_23BD67CE4();
  v5 = v4;
  if (qword_27E1C4A38 != -1)
  {
    swift_once();
  }

  if (*(qword_27E1C5438 + 16))
  {
    sub_23BD63770(v3, v5);
  }

  v6 = sub_23BD67CD4();

  return v6;
}

- (_TtC24NanoCompassComplications16NCWaypointGlyphs)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NCWaypointGlyphs();
  return [(NCWaypointGlyphs *)&v3 init];
}

@end