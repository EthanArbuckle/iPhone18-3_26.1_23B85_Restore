@interface UIButton
- (BOOL)isTextTruncated;
- (BOOL)isTextTruncatedIgnoringLeading:(BOOL)leading;
@end

@implementation UIButton

- (BOOL)isTextTruncated
{
  titleLabel = [(UIButton *)self titleLabel];
  isTextTruncated = [titleLabel isTextTruncated];

  return isTextTruncated;
}

- (BOOL)isTextTruncatedIgnoringLeading:(BOOL)leading
{
  leadingCopy = leading;
  titleLabel = [(UIButton *)self titleLabel];
  LOBYTE(leadingCopy) = [titleLabel isTextTruncatedIgnoringLeading:leadingCopy];

  return leadingCopy;
}

@end