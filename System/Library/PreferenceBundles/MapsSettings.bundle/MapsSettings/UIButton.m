@interface UIButton
- (BOOL)isTextTruncated;
- (BOOL)isTextTruncatedIgnoringLeading:(BOOL)a3;
@end

@implementation UIButton

- (BOOL)isTextTruncated
{
  v2 = [(UIButton *)self titleLabel];
  v3 = [v2 isTextTruncated];

  return v3;
}

- (BOOL)isTextTruncatedIgnoringLeading:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIButton *)self titleLabel];
  LOBYTE(v3) = [v4 isTextTruncatedIgnoringLeading:v3];

  return v3;
}

@end