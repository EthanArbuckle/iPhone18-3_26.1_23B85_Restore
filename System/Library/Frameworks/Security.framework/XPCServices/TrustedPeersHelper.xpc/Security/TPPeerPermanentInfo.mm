@interface TPPeerPermanentInfo
- (BOOL)matchesPeer:(id)a3;
@end

@implementation TPPeerPermanentInfo

- (BOOL)matchesPeer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = [(TPPeerPermanentInfo *)v5 peerID];
  v7 = sub_100216974();
  v9 = v8;

  v10 = [a3 peerID];
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