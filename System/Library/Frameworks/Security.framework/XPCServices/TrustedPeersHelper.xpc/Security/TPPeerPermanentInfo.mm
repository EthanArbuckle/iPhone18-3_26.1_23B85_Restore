@interface TPPeerPermanentInfo
- (BOOL)matchesPeer:(id)peer;
@end

@implementation TPPeerPermanentInfo

- (BOOL)matchesPeer:(id)peer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  peerID = [(TPPeerPermanentInfo *)selfCopy peerID];
  v7 = sub_100216974();
  v9 = v8;

  peerID2 = [peer peerID];
  v11 = sub_100216974();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1002171A4();
  }

  swift_unknownObjectRelease();

  return v15 & 1;
}

@end