@interface _LTGenmojiReplacementInfo
- (_LTGenmojiReplacementInfo)initWithOriginalRange:(_NSRange)range replacementRange:(_NSRange)replacementRange requestID:(id)d originalSubstring:(id)substring placeholderString:(id)string;
- (_NSRange)originalRange;
- (_NSRange)replacementRange;
@end

@implementation _LTGenmojiReplacementInfo

- (_LTGenmojiReplacementInfo)initWithOriginalRange:(_NSRange)range replacementRange:(_NSRange)replacementRange requestID:(id)d originalSubstring:(id)substring placeholderString:(id)string
{
  length = replacementRange.length;
  location = replacementRange.location;
  v10 = range.length;
  v11 = range.location;
  dCopy = d;
  substringCopy = substring;
  stringCopy = string;
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
    v18 = [dCopy copy];
    requestUniqueID = v17->_requestUniqueID;
    v17->_requestUniqueID = v18;

    v20 = [substringCopy copy];
    originalSubstring = v17->_originalSubstring;
    v17->_originalSubstring = v20;

    v22 = [stringCopy copy];
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