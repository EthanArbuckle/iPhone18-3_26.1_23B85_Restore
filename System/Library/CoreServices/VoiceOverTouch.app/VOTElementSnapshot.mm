@interface VOTElementSnapshot
- (CGRect)frame;
- (NSString)description;
- (VOTElementSnapshot)initWithLabel:(id)label value:(id)value traits:(unint64_t)traits rowRange:(_NSRange)range frame:(CGRect)frame language:(id)language roleDescription:(id)description;
- (_NSRange)rowRange;
@end

@implementation VOTElementSnapshot

- (VOTElementSnapshot)initWithLabel:(id)label value:(id)value traits:(unint64_t)traits rowRange:(_NSRange)range frame:(CGRect)frame language:(id)language roleDescription:(id)description
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  length = range.length;
  location = range.location;
  labelCopy = label;
  valueCopy = value;
  languageCopy = language;
  descriptionCopy = description;
  v29.receiver = self;
  v29.super_class = VOTElementSnapshot;
  v23 = [(VOTElementSnapshot *)&v29 init];
  if (v23)
  {
    v24 = [labelCopy copy];
    label = v23->_label;
    v23->_label = v24;

    v26 = [valueCopy copy];
    value = v23->_value;
    v23->_value = v26;

    v23->_traits = traits;
    v23->_rowRange.location = location;
    v23->_rowRange.length = length;
    v23->_frame.origin.x = x;
    v23->_frame.origin.y = y;
    v23->_frame.size.width = width;
    v23->_frame.size.height = height;
    objc_storeStrong(&v23->_language, language);
    objc_storeStrong(&v23->_roleDescription, description);
  }

  return v23;
}

- (NSString)description
{
  label = [(VOTElementSnapshot *)self label];
  value = [(VOTElementSnapshot *)self value];
  v5 = [NSNumber numberWithUnsignedLongLong:[(VOTElementSnapshot *)self traits]];
  [(VOTElementSnapshot *)self frame];
  v6 = NSStringFromCGRect(v10);
  v7 = [NSString stringWithFormat:@"VOTElementSnapshot<%p>. Label:%@ Value:%@ traits:%@ frame:%@", self, label, value, v5, v6];

  return v7;
}

- (_NSRange)rowRange
{
  length = self->_rowRange.length;
  location = self->_rowRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end