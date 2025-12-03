@interface PKMathResultAttribution
- (void)setDarkModeImage:(uint64_t)image;
- (void)setDate:(uint64_t)date;
- (void)setImage:(uint64_t)image;
- (void)setString:(uint64_t)string;
@end

@implementation PKMathResultAttribution

- (void)setImage:(uint64_t)image
{
  if (image)
  {
    objc_storeStrong((image + 8), a2);
  }
}

- (void)setDarkModeImage:(uint64_t)image
{
  if (image)
  {
    objc_storeStrong((image + 16), a2);
  }
}

- (void)setString:(uint64_t)string
{
  if (string)
  {
    objc_storeStrong((string + 24), a2);
  }
}

- (void)setDate:(uint64_t)date
{
  if (date)
  {
    objc_storeStrong((date + 32), a2);
  }
}

@end