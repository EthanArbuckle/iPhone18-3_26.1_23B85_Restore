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

  outlined destroy of TaskPriority?(v8, &_sypSgMd_3);
  return v6 & 1;
}

@end