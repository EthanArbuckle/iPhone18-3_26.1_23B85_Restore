@interface MSTrackListCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation MSTrackListCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [-[MSTrackListCellConfigurationAccessibility safeValueForKey:](self safeValueForKey:{@"_accessibilityStringsArrayPointer", "bytes"}];
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = [(MSTrackListCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityVideoIconString"];
  string = [MEMORY[0x29EDBA050] string];
  if ([v5 length])
  {
    [string appendFormat:accessibilityLocalizedString(@"track.index"), v5];
  }

  if ([v4 length])
  {
    [string appendFormat:@"%@, ", v4];
  }

  if ([v8 length])
  {
    [string appendFormat:@"%@, ", v8];
  }

  if ([v7 length])
  {
    v11 = [v7 mutableCopyWithZone:0];
    objc_msgSend(v11, "replaceOccurrencesOfString:withString:options:range:", @"("), &stru_2A222EDD8, 0, 0, objc_msgSend(v11, "length");
    [v11 replaceOccurrencesOfString:@"" withString:? options:? range:?], &stru_2A222EDD8, 0, 0, objc_msgSend(v11, "length"));
    v12 = [string length];
    [string appendFormat:@" %@ ", v11];
    v13 = [string length] - v12;
  }

  else
  {
    v13 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([v6 length])
  {
    [string appendFormat:@"%@, ", v6];
  }

  if ([v9 length])
  {
    [string appendFormat:@"%@, ", v9];
  }

  v14 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:string];
  v15 = v14;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v14 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD8C0] withRange:{v12, v13}];
  }

  return v15;
}

@end