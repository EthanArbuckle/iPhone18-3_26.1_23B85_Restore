@interface UInt32:
- (void)ScrollViewCommitInfo;
@end

@implementation UInt32:

- (void)ScrollViewCommitInfo
{
  if (!lazy cache variable for type metadata for [UInt32 : ScrollViewCommitInfo])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UInt32 : ScrollViewCommitInfo]);
    }
  }
}

@end