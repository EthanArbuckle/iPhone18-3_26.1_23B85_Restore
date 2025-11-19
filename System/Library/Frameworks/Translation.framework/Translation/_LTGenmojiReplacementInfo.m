@interface _LTGenmojiReplacementInfo
- (_LTGenmojiReplacementInfo)initWithOriginalRange:(_NSRange)a3 replacementRange:(_NSRange)a4 requestID:(id)a5 originalSubstring:(id)a6 placeholderString:(id)a7;
- (_NSRange)originalRange;
- (_NSRange)replacementRange;
@end

@implementation _LTGenmojiReplacementInfo

- (_LTGenmojiReplacementInfo)initWithOriginalRange:(_NSRange)a3 replacementRange:(_NSRange)a4 requestID:(id)a5 originalSubstring:(id)a6 placeholderString:(id)a7
{
  length = a4.length;
  location = a4.location;
  v10 = a3.length;
  v11 = a3.location;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = _LTGenmojiReplacementInfo;
  v16 = [(_LTGenmojiReplacementInfo *)&v26 init];
  v17 = v16;
  if (v16)
  {
    v16->_originalRange.location = v11;
    v16->_originalRange.length = v10;
    v16->_replacementRange.location = location;
    v16->_replacementRange.length = length;
    v18 = [v13 copy];
    requestUniqueID = v17->_requestUniqueID;
    v17->_requestUniqueID = v18;

    v20 = [v14 copy];
    originalSubstring = v17->_originalSubstring;
    v17->_originalSubstring = v20;

    v22 = [v15 copy];
    placeholderString = v17->_placeholderString;
    v17->_placeholderString = v22;

    v24 = v17;
  }

  return v17;
}

- (_NSRange)originalRange
{
  length = self->_originalRange.length;
  location = self->_originalRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)replacementRange
{
  length = self->_replacementRange.length;
  location = self->_replacementRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end