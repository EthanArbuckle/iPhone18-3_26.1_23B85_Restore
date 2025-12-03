@interface NSMutableSet
- (void)addMessageEntry:(id)entry;
@end

@implementation NSMutableSet

- (void)addMessageEntry:(id)entry
{
  v5 = [(NSMutableSet *)self member:?];
  if (v5)
  {

    [v5 mergeEntries:entry];
  }

  else
  {
    [(NSMutableSet *)self addObject:entry];
    v6 = [(NSMutableSet *)self count];

    [entry setTimeStamp:v6];
  }
}

@end