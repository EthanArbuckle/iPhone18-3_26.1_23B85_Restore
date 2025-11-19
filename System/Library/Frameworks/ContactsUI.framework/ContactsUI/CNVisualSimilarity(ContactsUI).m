@interface CNVisualSimilarity(ContactsUI)
+ (id)fingerprintForUIImage:()ContactsUI;
@end

@implementation CNVisualSimilarity(ContactsUI)

+ (id)fingerprintForUIImage:()ContactsUI
{
  v4 = MEMORY[0x1E69845B8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 CGImage];

  v8 = [v6 initWithCGImage:v7 options:MEMORY[0x1E695E0F8]];
  v9 = [a1 fingerprintForImageRequestHandler:v8];

  return v9;
}

@end