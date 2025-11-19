@interface NSObject(ClockKitAdditions)
+ (id)_clockKitProvider_StyleWithFont:()ClockKitAdditions smallFont:uppercase:luminanceReduced:;
@end

@implementation NSObject(ClockKitAdditions)

+ (id)_clockKitProvider_StyleWithFont:()ClockKitAdditions smallFont:uppercase:luminanceReduced:
{
  v10 = MEMORY[0x1E695B510];
  v11 = CTFontCopyFontDescriptor(font);
  v12 = [v10 fontWithDescriptor:v11 size:CTFontGetSize(font)];

  v13 = MEMORY[0x1E695B510];
  v14 = CTFontCopyFontDescriptor(a4);
  v15 = [v13 fontWithDescriptor:v14 size:CTFontGetSize(a4)];

  v16 = [MEMORY[0x1E695B560] styleWithFont:v12 smallCapsBaseFont:v15 uppercase:a5 otherAttributes:MEMORY[0x1E695E0F8]];
  [v16 setShouldStyleForTritium:a6];

  return v16;
}

@end