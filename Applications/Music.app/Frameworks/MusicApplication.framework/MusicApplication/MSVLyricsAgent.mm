@interface MSVLyricsAgent
- (BOOL)isEqual:(id)a3;
@end

@implementation MSVLyricsAgent

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = MSVLyricsAgent.isEqual(_:)(v8);

  sub_12E1C(v8, &qword_E23DD0);
  return v6 & 1;
}

@end