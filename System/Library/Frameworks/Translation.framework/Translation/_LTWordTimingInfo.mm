@interface _LTWordTimingInfo
- (NSString)unredactedDescription;
- (_LTWordTimingInfo)initWithCoder:(id)coder;
- (_NSRange)textRange;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTWordTimingInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_word forKey:@"word"];
  sampleIndex = self->_sampleIndex;
  if ((sampleIndex & 0x80000000) != 0)
  {
    v6 = _LTOSLogXPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(_LTWordTimingInfo *)v6 encodeWithCoder:v7, v8, v9, v10, v11, v12, v13];
    }

    sampleIndex = self->_sampleIndex;
  }

  [coderCopy encodeInt32:sampleIndex forKey:@"sampleIndex"];
  offset = self->_offset;
  if ((offset & 0x80000000) != 0)
  {
    v15 = _LTOSLogXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(_LTWordTimingInfo *)v15 encodeWithCoder:v16, v17, v18, v19, v20, v21, v22];
    }

    offset = self->_offset;
  }

  [coderCopy encodeInt32:offset forKey:@"offset"];
  length = self->_length;
  if ((length & 0x80000000) != 0)
  {
    v24 = _LTOSLogXPC();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      [(_LTWordTimingInfo *)v24 encodeWithCoder:v25, v26, v27, v28, v29, v30, v31];
    }

    length = self->_length;
  }

  [coderCopy encodeInt32:length forKey:@"length"];
  [coderCopy encodeDouble:@"startTime" forKey:self->_startTime];
  v32 = [MEMORY[0x277CCAE60] valueWithRange:{self->_textRange.location, self->_textRange.length}];
  [coderCopy encodeObject:v32 forKey:@"textRange"];
}

- (_LTWordTimingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _LTWordTimingInfo;
  v5 = [(_LTWordTimingInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"word"];
    word = v5->_word;
    v5->_word = v6;

    v5->_sampleIndex = [coderCopy decodeInt32ForKey:@"sampleIndex"];
    v5->_offset = [coderCopy decodeInt32ForKey:@"offset"];
    v5->_length = [coderCopy decodeInt32ForKey:@"length"];
    [coderCopy decodeDoubleForKey:@"startTime"];
    v5->_startTime = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textRange"];
    v5->_textRange.location = [v9 rangeValue];
    v5->_textRange.length = v10;

    v11 = v5;
  }

  return v5;
}

- (NSString)unredactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  word = self->_word;
  sampleIndex = self->_sampleIndex;
  v8 = NSStringFromRange(self->_textRange);
  v9 = [v3 stringWithFormat:@"<%@: %p _sampleIndex: [%u]; _word: %@; _textRange: %@; _length: %u; _offset %u; _startTime %f>", v5, self, sampleIndex, word, v8, self->_length, self->_offset, *&self->_startTime];;

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sampleIndex = self->_sampleIndex;
  v7 = [(NSString *)self->_word length];
  v8 = NSStringFromRange(self->_textRange);
  v9 = [v3 stringWithFormat:@"<%@: %p _sampleIndex: [%u]; _word length: %zu; _textRange: %@; _length: %u; _offset %u; _startTime %f>", v5, self, sampleIndex, v7, v8, self->_length, self->_offset, *&self->_startTime];;

  return v9;
}

- (_NSRange)textRange
{
  length = self->_textRange.length;
  location = self->_textRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end