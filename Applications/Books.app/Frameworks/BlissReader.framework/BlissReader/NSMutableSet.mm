@interface NSMutableSet
- (void)addMessageEntry:(id)a3;
@end

@implementation NSMutableSet

- (void)addMessageEntry:(id)a3
{
  v5 = [(NSMutableSet *)self member:?];
  if (v5)
  {

    [v5 mergeEntries:a3];
  }

  else
  {
    [(NSMutableSet *)self addObject:a3];
    v6 = [(NSMutableSet *)self count];

    [a3 setTimeStamp:v6];
  }
}

@end