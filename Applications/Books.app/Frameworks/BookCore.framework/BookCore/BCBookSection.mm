@interface BCBookSection
+ (BCBookSection)bookSectionWithStartPosition:(id)a3 endPosition:(id)a4;
- (BOOL)intersects:(id)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (int64_t)compareWithSection:(id)a3;
@end

@implementation BCBookSection

+ (BCBookSection)bookSectionWithStartPosition:(id)a3 endPosition:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(BCBookSection);
  [(BCBookSection *)v7 setStartPosition:v6];

  [(BCBookSection *)v7 setEndPosition:v5];

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(BCBookSection *)self startPosition];
  v6 = [v5 compare:v4];

  v7 = [(BCBookSection *)self endPosition];
  v8 = [v7 compare:v4];

  if (v8 == -1)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  if (v6 == &dword_0 + 1)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (int64_t)compareWithSection:(id)a3
{
  v4 = a3;
  v5 = [(BCBookSection *)self startPosition];
  v6 = [v4 startPosition];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)intersects:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(BCBookSection *)self startPosition];
  v6 = [v4 endPosition];
  v7 = [v5 compare:v6];

  v8 = [(BCBookSection *)self endPosition];
  v9 = [v4 startPosition];

  v10 = [v8 compare:v9];
  return v7 != &dword_0 + 1 && v10 + 1 != 0;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"BCBookSection\n"];
  v4 = [(BCBookSection *)self startPosition];
  [v3 appendFormat:@"        startPosition . . . . : %@\n", v4];

  v5 = [(BCBookSection *)self endPosition];
  [v3 appendFormat:@"        endPosition . . . . . : %@", v5];

  return v3;
}

@end