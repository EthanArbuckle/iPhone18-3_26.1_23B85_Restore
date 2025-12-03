@interface CNVisualSimilarity(ContactsUI)
+ (id)fingerprintForUIImage:()ContactsUI;
@end

@implementation CNVisualSimilarity(ContactsUI)

+ (id)fingerprintForUIImage:()ContactsUI
{
  v4 = MEMORY[0x1E69845B8];
  v5 = a3;
  v6 = [v4 alloc];
  cGImage = [v5 CGImage];

  v8 = [v6 initWithCGImage:cGImage options:MEMORY[0x1E695E0F8]];
  v9 = [self fingerprintForImageRequestHandler:v8];

  return v9;
}

@end