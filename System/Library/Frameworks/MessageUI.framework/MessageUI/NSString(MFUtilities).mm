@interface NSString(MFUtilities)
- (id)mf_substringTruncatedInRange:()MFUtilities;
- (id)mf_substringTruncatedToIndex:()MFUtilities;
@end

@implementation NSString(MFUtilities)

- (id)mf_substringTruncatedToIndex:()MFUtilities
{
  v4 = a1;
  if ([v4 length] > a3)
  {
    v5 = [v4 substringToIndex:a3];
    v6 = [v5 stringByAppendingString:@"…"];

    v4 = v6;
  }

  return v4;
}

- (id)mf_substringTruncatedInRange:()MFUtilities
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = v6;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && a4)
  {
    v8 = [v6 substringToIndex:a3];
    v9 = [v7 substringFromIndex:a3 + a4];
    v13[0] = v8;
    v13[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v11 = [v10 componentsJoinedByString:@"…"];

    v7 = v11;
  }

  return v7;
}

@end