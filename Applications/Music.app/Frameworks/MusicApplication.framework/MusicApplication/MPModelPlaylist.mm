@interface MPModelPlaylist
- (NSString)ownerName;
- (NSString)sortStorageKeyDomain;
- (id)pickableObjectFor:(uint64_t)for;
@end

@implementation MPModelPlaylist

- (id)pickableObjectFor:(uint64_t)for
{
  if ((for - 2) > 2)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (NSString)ownerName
{
  selfCopy = self;
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
  selfCopy = self;
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