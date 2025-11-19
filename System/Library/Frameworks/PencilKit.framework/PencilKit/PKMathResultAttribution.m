@interface PKMathResultAttribution
- (void)setDarkModeImage:(uint64_t)a1;
- (void)setDate:(uint64_t)a1;
- (void)setImage:(uint64_t)a1;
- (void)setString:(uint64_t)a1;
@end

@implementation PKMathResultAttribution

- (void)setImage:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (void)setDarkModeImage:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

- (void)setString:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (void)setDate:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

@end