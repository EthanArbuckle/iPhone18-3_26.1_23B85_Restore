@interface CNUILikenessRenderingScope(CNAvatarImageRenderingScope)
- (uint64_t)avatarViewBackgroundStyle;
@end

@implementation CNUILikenessRenderingScope(CNAvatarImageRenderingScope)

- (uint64_t)avatarViewBackgroundStyle
{
  result = [a1 backgroundStyle];
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

@end