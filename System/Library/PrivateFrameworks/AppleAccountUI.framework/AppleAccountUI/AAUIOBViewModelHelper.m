@interface AAUIOBViewModelHelper
+ (id)labelWithAttributedString:(id)a3;
@end

@implementation AAUIOBViewModelHelper

+ (id)labelWithAttributedString:(id)a3
{
  v3 = MEMORY[0x1E69DCC10];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v6 setNumberOfLines:0];
  [v6 setTextAlignment:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAttributedText:v4];

  return v6;
}

@end