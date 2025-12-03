@interface RemoteUIController
- (void)registerPartsInfoViewWithComponentsMap:(id)map;
@end

@implementation RemoteUIController

- (void)registerPartsInfoViewWithComponentsMap:(id)map
{
  v4 = sub_10000DBAC();
  v5 = qword_10001DEB0;
  selfCopy = self;
  if (v5 != -1)
  {
    swift_once();
  }

  (*(*qword_10001E3D8 + 96))(v4);
  sub_10000C0F4();
  sub_10000DBDC();
}

@end