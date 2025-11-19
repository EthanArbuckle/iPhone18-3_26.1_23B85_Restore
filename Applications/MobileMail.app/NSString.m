@interface NSString
- (BOOL)mf_isScrollConversationViewTest;
- (BOOL)mf_isScrollMessageListTest;
- (BOOL)mf_isSelectConversationTest;
- (id)mf_fancyRedactedString;
@end

@implementation NSString

- (BOOL)mf_isScrollMessageListTest
{
  if (([(NSString *)self mf_containsSubstring:@"ScrollMessageList"]& 1) != 0)
  {
    return 1;
  }

  return [(NSString *)self mf_containsSubstring:@"ScrollSenderListNatural"];
}

- (BOOL)mf_isScrollConversationViewTest
{
  if (([(NSString *)self mf_containsSubstring:@"ScrollConversationView"]& 1) != 0)
  {
    return 1;
  }

  return [(NSString *)self mf_containsSubstring:@"ScrollDigestViewNatural"];
}

- (BOOL)mf_isSelectConversationTest
{
  if (([(NSString *)self mf_containsSubstring:@"SelectConversation"]& 1) != 0)
  {
    return 1;
  }

  return [(NSString *)self mf_containsSubstring:@"SelectDigestView"];
}

- (id)mf_fancyRedactedString
{
  v2 = [(NSString *)self length];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"[%@ length = %lu]", @"<REDACTED>", v2];;
  }

  else
  {
    v3 = @"[Empty String]";
  }

  return v3;
}

@end