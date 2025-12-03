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
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = MSVLyricsAgent.isEqual(_:)(v8);

  sub_1000095E8(v8, &qword_1011BD990);
  return v6 & 1;
}

@end