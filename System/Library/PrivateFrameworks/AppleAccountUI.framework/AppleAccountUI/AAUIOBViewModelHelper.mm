@interface AAUIOBViewModelHelper
+ (id)labelWithAttributedString:(id)string;
@end

@implementation AAUIOBViewModelHelper

+ (id)labelWithAttributedString:(id)string
{
  v3 = MEMORY[0x1E69DCC10];
  stringCopy = string;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v6 setNumberOfLines:0];
  [v6 setTextAlignment:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAttributedText:stringCopy];

  return v6;
}

@end