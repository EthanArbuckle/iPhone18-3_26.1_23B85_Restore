@interface BCConstants
+ (id)allowedAppleURNs;
@end

@implementation BCConstants

+ (id)allowedAppleURNs
{
  if (qword_27DE8BA98 != -1)
  {
    dispatch_once(&qword_27DE8BA98, &__block_literal_global_5);
  }

  v3 = qword_27DE8BA90;

  return v3;
}

void __31__BCConstants_allowedAppleURNs__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{@"urn:biz:b15ed773-9eed-11e7-baa2-7b88b04daa8e", 0}];
  v1 = qword_27DE8BA90;
  qword_27DE8BA90 = v0;

  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([v2 BOOLForKey:@"AllowsInternalTestURIs"])
  {
    v3 = CFPreferencesAppValueIsForced(@"AllowsInternalTestURIs", *MEMORY[0x277CBF028]) != 0;
  }

  else
  {
    v3 = 0;
  }

  if ((MEMORY[0x2383C14B0]("+[BCConstants allowedAppleURNs]_block_invoke") & 1) != 0 || v3)
  {
    v6 = [qword_27DE8BA90 setByAddingObjectsFromArray:&unk_2849E21A8];
    v4 = [v6 copy];
    v5 = qword_27DE8BA90;
    qword_27DE8BA90 = v4;
  }
}

@end