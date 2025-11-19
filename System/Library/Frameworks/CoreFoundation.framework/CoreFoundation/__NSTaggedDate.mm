@interface __NSTaggedDate
- (__NSTaggedDate)initWithTimeIntervalSinceReferenceDate:(double)a3;
- (double)timeIntervalSinceReferenceDate;
- (void)dealloc;
@end

@implementation __NSTaggedDate

- (double)timeIntervalSinceReferenceDate
{
  if ((self & 0x8000000000000000) != 0)
  {
    v3 = 0;
    v5 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v5 = 0;
    }

    v2 = v5 ^ self;
    v4 = v2 & 7;
    do
    {
      if (v4 == *(MEMORY[0x1E69E5900] + v3))
      {
        goto LABEL_8;
      }

      ++v3;
    }

    while (v3 != 7);
  }

  do
  {
    __break(1u);
LABEL_8:
    ;
  }

  while (v3 != 6);
  v6 = 0xFFFFFFFFFFFFFFFLL;
  if (v4 == 7)
  {
    v6 = 0xFFFFFFFFFFFFFLL;
  }

  return decodeTaggedTimeInterval(v6 & (v2 >> 3));
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = __NSTaggedDate;
  [(__NSTaggedDate *)&v3 dealloc];
  v2 = *MEMORY[0x1E69E9840];
}

- (__NSTaggedDate)initWithTimeIntervalSinceReferenceDate:(double)a3
{
  v4 = [NSDate alloc];

  return [(NSDate *)v4 initWithTimeIntervalSinceReferenceDate:a3];
}

@end