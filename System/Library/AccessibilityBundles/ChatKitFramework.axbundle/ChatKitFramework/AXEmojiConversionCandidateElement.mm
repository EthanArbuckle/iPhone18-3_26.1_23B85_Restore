@interface AXEmojiConversionCandidateElement
- (BOOL)accessibilityActivate;
- (BOOL)selectEmoji:(id)emoji;
- (_NSRange)candidateRange;
- (id)accessibilityHint;
- (id)candidateEmojiArray;
- (id)currentEmoji;
@end

@implementation AXEmojiConversionCandidateElement

- (id)candidateEmojiArray
{
  candidateEmojiList = [(AXEmojiConversionCandidateElement *)self candidateEmojiList];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"emojiTokenArray"];

  return v4;
}

- (id)accessibilityHint
{
  candidateEmojiArray = [(AXEmojiConversionCandidateElement *)self candidateEmojiArray];
  v4 = [candidateEmojiArray count];

  if (v4 == 1)
  {
    candidateEmojiArray2 = [(AXEmojiConversionCandidateElement *)self candidateEmojiArray];
    firstObject = [candidateEmojiArray2 firstObject];
    v7 = [firstObject safeValueForKey:@"string"];

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
  candidateEmojiArray = [(AXEmojiConversionCandidateElement *)self candidateEmojiArray];
  v4 = [candidateEmojiArray count];

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
  candidateEmojiArray = [(AXEmojiConversionCandidateElement *)self candidateEmojiArray];
  v5 = [candidateEmojiArray count];

  if (currentIndex >= v5)
  {
    v7 = 0;
  }

  else
  {
    candidateEmojiArray2 = [(AXEmojiConversionCandidateElement *)self candidateEmojiArray];
    v7 = [candidateEmojiArray2 objectAtIndexedSubscript:self->_currentIndex];
  }

  return v7;
}

- (BOOL)selectEmoji:(id)emoji
{
  emojiCopy = emoji;
  candidateEmojiArray = [(AXEmojiConversionCandidateElement *)self candidateEmojiArray];
  v6 = [candidateEmojiArray indexOfObject:emojiCopy];

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