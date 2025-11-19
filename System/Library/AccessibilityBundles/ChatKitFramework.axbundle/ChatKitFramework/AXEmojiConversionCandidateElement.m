@interface AXEmojiConversionCandidateElement
- (BOOL)accessibilityActivate;
- (BOOL)selectEmoji:(id)a3;
- (_NSRange)candidateRange;
- (id)accessibilityHint;
- (id)candidateEmojiArray;
- (id)currentEmoji;
@end

@implementation AXEmojiConversionCandidateElement

- (id)candidateEmojiArray
{
  v2 = [(AXEmojiConversionCandidateElement *)self candidateEmojiList];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"emojiTokenArray"];

  return v4;
}

- (id)accessibilityHint
{
  v3 = [(AXEmojiConversionCandidateElement *)self candidateEmojiArray];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(AXEmojiConversionCandidateElement *)self candidateEmojiArray];
    v6 = [v5 firstObject];
    v7 = [v6 safeValueForKey:@"string"];

    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"emoji.replace.with.single");
    v10 = [v8 localizedStringWithFormat:v9, v7];
  }

  else
  {
    v10 = accessibilityLocalizedString(@"emoji.replace.with.multiple");
  }

  return v10;
}

- (BOOL)accessibilityActivate
{
  v3 = [(AXEmojiConversionCandidateElement *)self candidateEmojiArray];
  v4 = [v3 count];

  textView = self->_textView;
  if (v4 == 1)
  {
    [(CKMessageEntryTextViewAccessibility *)textView _axReplaceEmojiWithElement:self];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self->_textView);
  }

  else
  {
    [(CKMessageEntryTextViewAccessibility *)textView _axShowOverlayWithEmojiElement:self];
  }

  return 1;
}

- (id)currentEmoji
{
  currentIndex = self->_currentIndex;
  v4 = [(AXEmojiConversionCandidateElement *)self candidateEmojiArray];
  v5 = [v4 count];

  if (currentIndex >= v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(AXEmojiConversionCandidateElement *)self candidateEmojiArray];
    v7 = [v6 objectAtIndexedSubscript:self->_currentIndex];
  }

  return v7;
}

- (BOOL)selectEmoji:(id)a3
{
  v4 = a3;
  v5 = [(AXEmojiConversionCandidateElement *)self candidateEmojiArray];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_currentIndex = v6;
  }

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (_NSRange)candidateRange
{
  p_candidateRange = &self->_candidateRange;
  location = self->_candidateRange.location;
  length = p_candidateRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end