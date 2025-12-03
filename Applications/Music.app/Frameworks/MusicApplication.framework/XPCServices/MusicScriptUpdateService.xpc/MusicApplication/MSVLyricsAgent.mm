@interface MSVLyricsAgent
- (BOOL)isEqual:(id)equal;
@end

@implementation MSVLyricsAgent

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = MSVLyricsAgent.isEqual(_:)(v8);

  sub_100007214(v8, &qword_100616F80);
  return v6 & 1;
}

@end