@interface IUIRangeTransform
+ (_NSRange)rangeInDocumentState:(id)state fromTextRange:(id)range inUITextInput:(id)input;
+ (id)textRangeInUITextInput:(id)input fromRange:(_NSRange)range inDocumentState:(id)state;
@end

@implementation IUIRangeTransform

+ (_NSRange)rangeInDocumentState:(id)state fromTextRange:(id)range inUITextInput:(id)input
{
  stateCopy = state;
  inputCopy = input;
  rangeCopy = range;
  selectedTextRange = [inputCopy selectedTextRange];
  v11 = [selectedTextRange end];

  start = [rangeCopy start];
  v36 = [inputCopy offsetFromPosition:start toPosition:v11];

  v13 = [rangeCopy end];

  v35 = [inputCopy offsetFromPosition:v13 toPosition:v11];
  contextBeforeInput = [stateCopy contextBeforeInput];
  v34 = [contextBeforeInput length];
  markedText = [stateCopy markedText];
  if (markedText)
  {
    selectedRangeInMarkedText = [stateCopy selectedRangeInMarkedText];
    v18 = &selectedRangeInMarkedText[v17];
  }

  else
  {
    selectedText = [stateCopy selectedText];
    v18 = [selectedText length];
  }

  contextBeforeInput2 = [stateCopy contextBeforeInput];
  v21 = [contextBeforeInput2 length];
  markedText2 = [stateCopy markedText];
  if (markedText2)
  {
    [stateCopy markedText];
  }

  else
  {
    [stateCopy selectedText];
  }
  v23 = ;
  v24 = [v23 length];
  contextAfterInput = [stateCopy contextAfterInput];
  v26 = [contextAfterInput length];

  v29 = &v34[v18] - v36 < 0 || (v21 + v24 + v26) < &v34[v18] - v35 || v36 < v35;
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v36 - v35;
  }

  if (v29)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v31 = &v34[v18] - v36;
  }

  v32 = v31;
  v33 = v30;
  result.length = v33;
  result.location = v32;
  return result;
}

+ (id)textRangeInUITextInput:(id)input fromRange:(_NSRange)range inDocumentState:(id)state
{
  length = range.length;
  location = range.location;
  inputCopy = input;
  stateCopy = state;
  v10 = stateCopy;
  if (location == 0x7FFFFFFFFFFFFFFFLL || (v11 = location + length, (location + length) < 0))
  {
    v18 = 0;
  }

  else
  {
    contextBeforeInput = [stateCopy contextBeforeInput];
    v13 = [contextBeforeInput length];
    markedText = [v10 markedText];
    if (markedText)
    {
      selectedRangeInMarkedText = [v10 selectedRangeInMarkedText];
      v17 = &selectedRangeInMarkedText[v16];
    }

    else
    {
      selectedText = [v10 selectedText];
      v17 = [selectedText length];
    }

    v20 = &v13[v17];

    v21 = location - v20;
    v22 = v11 - v20;
    selectedTextRange = [inputCopy selectedTextRange];
    v24 = [selectedTextRange end];

    v25 = [inputCopy positionFromPosition:v24 offset:v21];
    v26 = [inputCopy positionFromPosition:v24 offset:v22];
    v27 = v26;
    v18 = 0;
    if (v25 && v26)
    {
      v18 = [inputCopy textRangeFromPosition:v25 toPosition:v26];
    }
  }

  return v18;
}

@end