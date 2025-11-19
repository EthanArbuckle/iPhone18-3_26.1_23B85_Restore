@interface VOTElementSnapshot
- (CGRect)frame;
- (NSString)description;
- (VOTElementSnapshot)initWithLabel:(id)a3 value:(id)a4 traits:(unint64_t)a5 rowRange:(_NSRange)a6 frame:(CGRect)a7 language:(id)a8 roleDescription:(id)a9;
- (_NSRange)rowRange;
@end

@implementation VOTElementSnapshot

- (VOTElementSnapshot)initWithLabel:(id)a3 value:(id)a4 traits:(unint64_t)a5 rowRange:(_NSRange)a6 frame:(CGRect)a7 language:(id)a8 roleDescription:(id)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  length = a6.length;
  location = a6.location;
  v19 = a3;
  v20 = a4;
  v21 = a8;
  v22 = a9;
  v29.receiver = self;
  v29.super_class = VOTElementSnapshot;
  v23 = [(VOTElementSnapshot *)&v29 init];
  if (v23)
  {
    v24 = [v19 copy];
    label = v23->_label;
    v23->_label = v24;

    v26 = [v20 copy];
    value = v23->_value;
    v23->_value = v26;

    v23->_traits = a5;
    v23->_rowRange.location = location;
    v23->_rowRange.length = length;
    v23->_frame.origin.x = x;
    v23->_frame.origin.y = y;
    v23->_frame.size.width = width;
    v23->_frame.size.height = height;
    objc_storeStrong(&v23->_language, a8);
    objc_storeStrong(&v23->_roleDescription, a9);
  }

  return v23;
}

- (NSString)description
{
  v3 = [(VOTElementSnapshot *)self label];
  v4 = [(VOTElementSnapshot *)self value];
  v5 = [NSNumber numberWithUnsignedLongLong:[(VOTElementSnapshot *)self traits]];
  [(VOTElementSnapshot *)self frame];
  v6 = NSStringFromCGRect(v10);
  v7 = [NSString stringWithFormat:@"VOTElementSnapshot<%p>. Label:%@ Value:%@ traits:%@ frame:%@", self, v3, v4, v5, v6];

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