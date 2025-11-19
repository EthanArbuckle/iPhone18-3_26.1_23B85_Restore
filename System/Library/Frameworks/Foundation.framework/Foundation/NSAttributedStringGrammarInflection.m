@interface NSAttributedStringGrammarInflection
@end

@implementation NSAttributedStringGrammarInflection

uint64_t __78___NSAttributedStringGrammarInflection_NSInflectionPresets__presetInflections__block_invoke()
{
  v1[3] = *MEMORY[0x1E69E9840];
  v1[0] = [[_NSAttributedStringGrammarInflection alloc] _initWithGender:2];
  v1[1] = [[_NSAttributedStringGrammarInflection alloc] _initWithGender:1, v1[0]];
  v1[2] = [[_NSAttributedStringGrammarInflection alloc] _initWithGender:3];
  result = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:{3), "copy"}];
  qword_1ED43FE10 = result;
  return result;
}

@end