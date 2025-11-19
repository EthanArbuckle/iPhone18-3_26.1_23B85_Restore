@interface MPModelPlaylist
- (NSString)ownerName;
- (NSString)sortStorageKeyDomain;
- (id)pickableObjectFor:(uint64_t)a3;
@end

@implementation MPModelPlaylist

- (id)pickableObjectFor:(uint64_t)a3
{
  if ((a3 - 2) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

- (NSString)ownerName
{
  v2 = self;
  sub_C3030();
  v4 = v3;

  if (v4)
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)sortStorageKeyDomain
{
  v2 = self;
  MPModelPlaylist.sortStorageKeyDomain.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end