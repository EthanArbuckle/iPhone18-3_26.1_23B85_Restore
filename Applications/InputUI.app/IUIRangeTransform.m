@interface IUIRangeTransform
+ (_NSRange)rangeInDocumentState:(id)a3 fromTextRange:(id)a4 inUITextInput:(id)a5;
+ (id)textRangeInUITextInput:(id)a3 fromRange:(_NSRange)a4 inDocumentState:(id)a5;
@end

@implementation IUIRangeTransform

+ (_NSRange)rangeInDocumentState:(id)a3 fromTextRange:(id)a4 inUITextInput:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v8 selectedTextRange];
  v11 = [v10 end];

  v12 = [v9 start];
  v36 = [v8 offsetFromPosition:v12 toPosition:v11];

  v13 = [v9 end];

  v35 = [v8 offsetFromPosition:v13 toPosition:v11];
  v14 = [v7 contextBeforeInput];
  v34 = [v14 length];
  v15 = [v7 markedText];
  if (v15)
  {
    v16 = [v7 selectedRangeInMarkedText];
    v18 = &v16[v17];
  }

  else
  {
    v19 = [v7 selectedText];
    v18 = [v19 length];
  }

  v20 = [v7 contextBeforeInput];
  v21 = [v20 length];
  v22 = [v7 markedText];
  if (v22)
  {
    [v7 markedText];
  }

  else
  {
    [v7 selectedText];
  }
  v23 = ;
  v24 = [v23 length];
  v25 = [v7 contextAfterInput];
  v26 = [v25 length];

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

+ (id)textRangeInUITextInput:(id)a3 fromRange:(_NSRange)a4 inDocumentState:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (location == 0x7FFFFFFFFFFFFFFFLL || (v11 = location + length, (location + length) < 0))
  {
    v18 = 0;
  }

  else
  {
    v12 = [v9 contextBeforeInput];
    v13 = [v12 length];
    v14 = [v10 markedText];
    if (v14)
    {
      v15 = [v10 selectedRangeInMarkedText];
      v17 = &v15[v16];
    }

    else
    {
      v19 = [v10 selectedText];
      v17 = [v19 length];
    }

    v20 = &v13[v17];

    v21 = location - v20;
    v22 = v11 - v20;
    v23 = [v8 selectedTextRange];
    v24 = [v23 end];

    v25 = [v8 positionFromPosition:v24 offset:v21];
    v26 = [v8 positionFromPosition:v24 offset:v22];
    v27 = v26;
    v18 = 0;
    if (v25 && v26)
    {
      v18 = [v8 textRangeFromPosition:v25 toPosition:v26];
    }
  }

  return v18;
}

@end